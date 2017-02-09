
//CG
//A stub illustarting scene graph creation and a flying camera used to fly around the scene
//The cammera is controlled trhough the keyboard 
// z/Z = roll the camera -- implemented
// c/C yaw the camera  -- you must implement
// x/X pitch the camera -- you must implement
//Sliding the camera 
// up   Special Key = slide forward -- implemented
// down Special Key = slide backward -- you must implement
//SPACEBAR  return to default (initial) camera position and oreintation 
// The secene 
//Consist of two colored cylinders based on a standard cylinder
// Two different methods and shaders are used to render the cylinders. Note how I stuffed the render methods in the SG nodes. 
// Generate the attributes for a cyllinder mesh of radius 1 and heigth 1
//      Cyl = (x, y, z) s.t. x^2 + y^2 = 1, 0 =< z =< 1
// 
// Mesh descrption: 2*50 side triangulated polygons +  top and bottom polys  (each is a regular 50-gon, rpresented as a fan of 50 trianges)
// Total NumberTriangles = 2*50 + 50 + 50 = 200
// Attributes stored in VBOs
//  Vertex 3D postions: vec4 cylinderData[3*NumberTrinagles]
//  Vertex RGBA colors: vec4 cylinderColor[3*NumberTrinagles]
//
//
//G. Kamberov

#include "Angel.h"
#include <assert.h>
#include <time.h>



void m_glewInitAndVersion(void);
void reshape(int width, int height);
void specKey(int key, int x, int y);
void keyboard( unsigned char key, int x, int y );
void drawMountain(int);
void drawTreeColored(int);
void drawHouseColored(int);
void drawCylinderMonochrome(void);



//  Define PI in the case it's not defined in the math header file
#ifndef PI
#  define PI  3.14159265358979323846
#endif

typedef Angel::vec4 point4;
typedef Angel::vec4 color4;

color4 red=color4(1.0, 0.0, 0.0, 1.0);

#define X               0
#define Y               1
#define Z               2
#define SCALE_VECTOR    1.0
#define SCALE_ANGLE     1.0

/////Camera unv basis///////


Angel::vec4 v = vec4(0.0, 1.0, 0.0, 00);
Angel::vec4 u = vec4(1.0, 0.0, 0.0, 0.0);
Angel::vec4 eye = vec4(0.0, 1.5, 3.0, 1.0);
Angel::vec4 n = Angel::normalize(vec4(0.0, 1.0, 2.0, 0.0));

/////////object type : mountain, tree, house
#define objTypeCount 3
#define MountainCount 3
#define TreeCount 30
#define HouseCount 3
// Create buffer objects
GLuint buffers[2 * objTypeCount];

// Create a vertex array object
GLuint vaoHouses[20];
GLuint vaoTrees[50];
GLuint vaoMountains[10];

GLuint program[objTypeCount];

GLuint vPosition;
GLuint vColor;

//===========Rotation Related variables
int moveLight = GL_FALSE;
int moveObject = GL_FALSE;
int curx, cury;
GLfloat theta = 270;
GLfloat theta_y = 0;
GLfloat theta_z = 0;
int width = 0;
int height = 0;


//------------------------------------
//uniform variables locations

GLuint color_loc;
GLuint proj_loc;
GLuint model_view_loc;

//------------------------------------
int MountainVertices = 20;
point4 mountainData[20];
color4 mountainColor[20];
int TreeVertices = 100;
point4 treeData[100];
color4 treeColor[100];
int HouseVertices = 50;
point4 houseData[50];
color4 houseColor[50];


int CylNumVertices = 600;
point4 cylinderData[600];
color4 cylinderColor[600];


class MatrixStack {
    int    _index;
    int    _size;
    mat4*  _matrices;

   public:
    MatrixStack( int numMatrices = 32 ):_index(0), _size(numMatrices)
        { _matrices = new mat4[numMatrices]; }

    ~MatrixStack()
	{ delete[]_matrices; }

    void push( const mat4& m ) {
        assert( _index + 1 < _size );
        _matrices[_index++] = m;
    }

    mat4& pop( void ) {
        assert( _index - 1 >= 0 );
        _index--;
        return _matrices[_index];
    }
};


MatrixStack  mvstack;
mat4         model_view=mat4(1.0);
mat4         projmat=mat4(1.0);  

//--------------------------------------

enum {
	Idx_mountain = 0,
	Idx_tree = 1,
    Idx_house = 2,    
    NumNodes,
    Quit
};

//-------SG DS-------------------------------------------------------------

struct Node {
    mat4  transform;
    void  (*render)( int );
    Node* sibling;
    Node* child;
	int nIdx;
    Node() :
	render(NULL), sibling(NULL), child(NULL) {}
    
    Node( mat4& m, void (*render)( int ), Node* sibling, Node* child, int index) :
	transform(m), render(render), sibling(sibling), child(child),  nIdx(index){}
};

Node  nodes[100];


//----------------------------------------------------------------------------


//----------------------------------------------------------------------------

void traverse( Node* node )
{
    if ( node == NULL ) { return; }

    mvstack.push( model_view );

    model_view *= node->transform;
    node->render(node->nIdx);

    if ( node->child ) { traverse( node->child ); }

    model_view = mvstack.pop();

    if ( node->sibling ) { traverse( node->sibling ); }
}

//----------------------------------------------------------------------------
void buildHouse() {	
	point4 *data = houseData;
	color4 *colors = houseColor;
	int vertexCount = 0;
	data[vertexCount] = vec4(-0.25, 0.0, 1.0, 1.0); colors[vertexCount++] = vec4(1.0, 0.0, 0.0, 1.0);
	data[vertexCount] = vec4(0.25, 0.0, 1.0, 1.0); colors[vertexCount++] = vec4(1.0, 0.0, 0.0, 1.0);
	data[vertexCount] = vec4(-0.5, -0.25, 0.65, 1.0); colors[vertexCount++] = vec4(1.0, 0.0, 0.0, 1.0);
	
	data[vertexCount] = vec4(0.25, 0.0, 1.0, 1.0); colors[vertexCount++] = vec4(1.0, 0.0, 0.0, 1.0);
	data[vertexCount] = vec4(-0.5, -0.25, 0.65, 1.0); colors[vertexCount++] = vec4(1.0, 0.0, 0.0, 1.0);
	data[vertexCount] = vec4(0.5, -0.25, 0.65, 1.0); colors[vertexCount++] = vec4(1.0, 0.0, 0.0, 1.0);

	data[vertexCount] = vec4(-0.25, 0.0, 1.0, 1.0); colors[vertexCount++] = vec4(1.0, 0.0, 0.0, 1.0);
	data[vertexCount] = vec4(0.25, 0.0, 1.0, 1.0); colors[vertexCount++] = vec4(1.0, 0.0, 0.0, 1.0);
	data[vertexCount] = vec4(-0.5, 0.25, 0.65, 1.0); colors[vertexCount++] = vec4(1.0, 0.0, 0.0, 1.0);

	data[vertexCount] = vec4(0.25, 0.0, 1.0, 1.0); colors[vertexCount++] = vec4(1.0, 0.0, 0.0, 1.0);
	data[vertexCount] = vec4(-0.5, 0.25, 0.65, 1.0); colors[vertexCount++] = vec4(1.0, 0.0, 0.0, 1.0);
	data[vertexCount] = vec4(0.5, 0.25, 0.65, 1.0); colors[vertexCount++] = vec4(1.0, 0.0, 0.0, 1.0);

	data[vertexCount] = vec4(0.25, 0.0, 1.0, 1.0); colors[vertexCount++] = vec4(1.0, 0.0, 0.0, 1.0);
	data[vertexCount] = vec4(0.5, -0.25, 0.65, 1.0); colors[vertexCount++] = vec4(1.0, 0.0, 0.0, 1.0);
	data[vertexCount] = vec4(0.5, 0.25, 0.65, 1.0); colors[vertexCount++] = vec4(1.0, 0.0, 0.0, 1.0);

	data[vertexCount] = vec4(-0.25, 0.0, 1.0, 1.0); colors[vertexCount++] = vec4(1.0, 0.0, 0.0, 1.0);
	data[vertexCount] = vec4(-0.5, -0.25, 0.65, 1.0); colors[vertexCount++] = vec4(1.0, 0.0, 0.0, 1.0);
	data[vertexCount] = vec4(-0.5, 0.25, 0.65, 1.0); colors[vertexCount++] = vec4(1.0, 0.0, 0.0, 1.0);
	
	data[vertexCount] = vec4(-0.5, -0.25, 0.65, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);
	data[vertexCount] = vec4(0.5, -0.25, 0.65, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);
	data[vertexCount] = vec4(-0.5, -0.25, 0.0, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);

	data[vertexCount] = vec4(0.5, -0.25, 0.65, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);
	data[vertexCount] = vec4(-0.5, -0.25, 0.0, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);
	data[vertexCount] = vec4(0.5, -0.25, 0.0, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);

	data[vertexCount] = vec4(-0.5, -0.25, 0.65, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);
	data[vertexCount] = vec4(-0.5, 0.25, 0.65, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);
	data[vertexCount] = vec4(-0.5, 0.25, 0.0, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);

	data[vertexCount] = vec4(-0.5, -0.25, 0.65, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);
	data[vertexCount] = vec4(-0.5, -0.25, 0.0, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);
	data[vertexCount] = vec4(-0.5, 0.25, 0.0, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);

	data[vertexCount] = vec4(0.5, -0.25, 0.65, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);
	data[vertexCount] = vec4(0.5, 0.25, 0.65, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);
	data[vertexCount] = vec4(0.5, 0.25, 0.0, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);

	data[vertexCount] = vec4(0.5, -0.25, 0.65, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);
	data[vertexCount] = vec4(0.5, -0.25, 0.0, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);
	data[vertexCount] = vec4(0.5, 0.25, 0.0, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);

	data[vertexCount] = vec4(-0.5, 0.25, 0.65, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);
	data[vertexCount] = vec4(0.5, 0.25, 0.65, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);
	data[vertexCount] = vec4(-0.5, 0.25, 0.0, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);

	data[vertexCount] = vec4(0.5, 0.25, 0.65, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);
	data[vertexCount] = vec4(-0.5, 0.25, 0.0, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);
	data[vertexCount] = vec4(0.5, 0.25, 0.0, 1.0); colors[vertexCount++] = vec4(0.59, 0.59, 0.19, 1.0);
	HouseVertices = vertexCount;
}
void buildMountain()
{
	MountainVertices = 0;
	mountainData[MountainVertices] = vec4(0.0, 0.2, 0.5, 1.0); mountainColor[MountainVertices++] = vec4(1.0, 1.0, 1.0, 1.0);
	mountainData[MountainVertices] = vec4(-0.7, 0.0, 0.0, 1.0); mountainColor[MountainVertices++] = vec4(1.0, 1.0, 1.0, 1.0);
	mountainData[MountainVertices] = vec4(0.3, 0.0, 0.0, 1.0); mountainColor[MountainVertices++] = vec4(1.0, 1.0, 1.0, 1.0);

	mountainData[MountainVertices] = vec4(0.0, 0.2, 0.5, 1.0); mountainColor[MountainVertices++] = vec4(1.0, 1.0, 1.0, 1.0);
	mountainData[MountainVertices] = vec4(-0.7, 0.0, 0.0, 1.0); mountainColor[MountainVertices++] = vec4(1.0, 1.0, 1.0, 1.0);
	mountainData[MountainVertices] = vec4(0.0, 0.5, 0.0, 1.0); mountainColor[MountainVertices++] = vec4(1.0, 1.0, 1.0, 1.0);

	mountainData[MountainVertices] = vec4(0.0, 0.2, 0.5, 1.0); mountainColor[MountainVertices++] = vec4(1.0, 1.0, 1.0, 1.0);
	mountainData[MountainVertices] = vec4(0.3, 0.0, 0.0, 1.0); mountainColor[MountainVertices++] = vec4(1.0, 1.0, 1.0, 1.0);
	mountainData[MountainVertices] = vec4(0.0, 0.5, 0.0, 1.0); mountainColor[MountainVertices++] = vec4(1.0, 1.0, 1.0, 1.0);

	mountainData[MountainVertices] = vec4(-0.7, 0.0, 0.0, 1.0); mountainColor[MountainVertices++] = vec4(1.0, 1.0, 1.0, 1.0);
	mountainData[MountainVertices] = vec4(0.3, 0.0, 0.0, 1.0); mountainColor[MountainVertices++] = vec4(1.0, 1.0, 1.0, 1.0);
	mountainData[MountainVertices] = vec4(0.0, 0.5, 0.0, 1.0); mountainColor[MountainVertices++] = vec4(1.0, 1.0, 1.0, 1.0);

}
void buildTree()
{
	TreeVertices = 0;
	treeData[TreeVertices] = vec4(0.0, 0.0, 1.0, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);
	treeData[TreeVertices] = vec4(-0.15, -0.086, 0.6, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.15, -0.086, 0.6, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);

	treeData[TreeVertices] = vec4(0.0, 0.0, 1.0, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);
	treeData[TreeVertices] = vec4(-0.15, -0.086, 0.6, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.0, 0.173, 0.6, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);

	treeData[TreeVertices] = vec4(0.0, 0.0, 1.0, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.15, -0.086, 0.6, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.0, 0.173, 0.6, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);

	treeData[TreeVertices] = vec4(-0.15, -0.086, 0.6, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.15, -0.086, 0.6, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.0, 0.173, 0.6, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);

	treeData[TreeVertices] = vec4(0.0, 0.0, 0.7, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);
	treeData[TreeVertices] = vec4(-0.15, -0.086, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.15, -0.086, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);

	treeData[TreeVertices] = vec4(0.0, 0.0, 0.7, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);
	treeData[TreeVertices] = vec4(-0.15, -0.086, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.0, 0.173, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);

	treeData[TreeVertices] = vec4(0.0, 0.0, 0.7, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.15, -0.086, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.0, 0.173, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);

	treeData[TreeVertices] = vec4(-0.15, -0.086, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.15, -0.086, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.0, 0.173, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.0, 1.0, 0.0, 1.0);

	treeData[TreeVertices] = vec4(-0.035, -0.035, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);
	treeData[TreeVertices] = vec4(-0.035, -0.035, 0.0, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.035, -0.035, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);

	treeData[TreeVertices] = vec4(-0.035, -0.035, 0.0, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.035, -0.035, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);
	treeData[TreeVertices] = vec4(-0.035, -0.035, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);

	treeData[TreeVertices] = vec4(-0.035, -0.035, 0.0, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);
	treeData[TreeVertices] = vec4(-0.035, -0.035, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);
	treeData[TreeVertices] = vec4(-0.035, 0.035, 0.0, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);

	treeData[TreeVertices] = vec4(-0.035, 0.035, 0.0, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);
	treeData[TreeVertices] = vec4(-0.035, 0.035, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);
	treeData[TreeVertices] = vec4(-0.035, -0.035, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);

	treeData[TreeVertices] = vec4(-0.035, 0.035, 0.0, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);
	treeData[TreeVertices] = vec4(-0.035, 0.035, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.035, 0.035, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);

	treeData[TreeVertices] = vec4(-0.035, 0.035, 0.0, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.035, 0.035, 0.0, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.035, 0.035, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);

	treeData[TreeVertices] = vec4(0.035, -0.035, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.035, 0.035, 0.0, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.035, 0.035, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);

	treeData[TreeVertices] = vec4(0.035, -0.035, 0.0, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.035, 0.035, 0.0, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);
	treeData[TreeVertices] = vec4(0.035, -0.035, 0.3, 1.0); treeColor[TreeVertices++] = vec4(0.7, 0.35, 0.0, 1.0);
}
void initNodes( void )
{
    mat4  m;    
	m = Translate(-1.0, 0.0, 0.0);
	int nodecnt = 0;
	srand((unsigned int)time(NULL));
 //   nodes[Idx_house] = Node( m, drawHouseColored, NULL, &nodes[TranslrotRyStretcedCyll], 0 );
	for (int i = 0; i < MountainCount; i++)
	{
		float fRatio = 1.0;		
		float fTransX, fTransY;
		fTransX = (float)rand() / RAND_MAX * 0.4 + 1.6;
		fTransY = (float)rand() / RAND_MAX * 0.4 + 1.6;
		m = Translate(fTransX, fTransY, 0.0) * Scale(fRatio, fRatio, fRatio) * RotateX(270);
		nodes[nodecnt] = Node(m, drawMountain, &nodes[nodecnt + 1], NULL, i); 
		nodecnt++;		
	}
	for (int i = 0; i < TreeCount; i++)
	{
		float fRatio = 0.2 + (float)rand() / RAND_MAX / 5;
		float fTransX, fTransY;
		fTransX = (float)rand() / RAND_MAX;
		fTransY = (float)rand() / RAND_MAX * 0.4 + 1.6;
		int nRotateZ = (int)((float)rand() / RAND_MAX * 360);
		m = Translate(fTransX, fTransY, 0.0) * Scale(fRatio, fRatio, fRatio) * RotateX(270) * RotateZ(nRotateZ);
		nodes[nodecnt] = Node(m, drawTreeColored, &nodes[nodecnt + 1], NULL, i);
		nodecnt++;		
	}
	for (int i = 0; i < HouseCount; i++)
	{
		float fRatio = 0.3 + (float)rand() / RAND_MAX * 0.7;
		float fTransX, fTransY;
		fTransX = -2 + (rand() % 8) * 0.4;
		fTransY = -2 + (rand() % 8) * 0.4;
		int nRotateZ = (int)((float)rand() / RAND_MAX * 360);
		m = Translate(fTransX, fTransY, 0.0) * Scale(fRatio, fRatio, fRatio) * RotateX(270) * RotateZ(nRotateZ);
		if (i + 1 < HouseCount)
		{
			nodes[nodecnt] = Node(m, drawHouseColored, &nodes[nodecnt + 1], NULL, i);
			nodecnt++;
		}
		else
		{
			nodes[nodecnt] = Node(m, drawHouseColored, NULL, NULL, i);
			nodecnt++;
		}
	}
	


}

void initBuffer(int nObjType, point4 *data, int datasize, color4 *colors, int colorscnt)
{
	glBindBuffer(GL_ARRAY_BUFFER, buffers[2 * nObjType]);
	glBufferData(GL_ARRAY_BUFFER, datasize, data, GL_STATIC_DRAW);
	glBindBuffer(GL_ARRAY_BUFFER, buffers[2 * nObjType + 1]);
	glBufferData(GL_ARRAY_BUFFER, colorscnt, colors, GL_STATIC_DRAW);
	
}
void initVertexArray(int nObjType, GLuint vao)
{
	glBindVertexArray(vao);
	glBindBuffer(GL_ARRAY_BUFFER, buffers[2 * nObjType]);
	vPosition = glGetAttribLocation(program[nObjType], "vPosition");
	glEnableVertexAttribArray(vPosition);
	glVertexAttribPointer(vPosition, 4, GL_FLOAT, GL_FALSE, 0, BUFFER_OFFSET(0));
	glBindBuffer(GL_ARRAY_BUFFER, buffers[2 * nObjType + 1]);
	vColor = glGetAttribLocation(program[nObjType], "vColor");
	glEnableVertexAttribArray(vColor);
	glVertexAttribPointer(vColor, 4, GL_FLOAT, GL_FALSE, 0, BUFFER_OFFSET(0));
}
void init(){

	// Load shaders and use the resulting shader programs
	program[Idx_mountain] = InitShader( "vshaderPerVertColor.glsl", "fshaderStock.glsl" );
	program[Idx_tree] = InitShader("vshaderPerVertColor.glsl", "fshaderStock.glsl");
	program[Idx_house] = InitShader( "vshaderPerVertColor.glsl", "fshaderStock.glsl" );
    
	buildMountain();
	buildTree();
	buildHouse();

	glGenBuffers(2 * objTypeCount, buffers);
	glGenVertexArrays(MountainCount, vaoMountains);
	glGenVertexArrays(TreeCount, vaoTrees);
	glGenVertexArrays( HouseCount, vaoHouses );

	initBuffer(Idx_mountain, mountainData, sizeof(mountainData), mountainColor, sizeof(mountainColor));
	for (int i = 0; i < MountainCount; i++)
		initVertexArray(Idx_mountain, vaoMountains[i]);

	initBuffer(Idx_tree, treeData, sizeof(treeData), treeColor, sizeof(treeColor));
	for (int i = 0; i < TreeCount; i++)
		initVertexArray(Idx_tree, vaoTrees[i]);

	initBuffer(Idx_house, houseData, sizeof(houseData), houseColor, sizeof(houseColor));
	for (int i = 0; i < HouseCount; i++)
		initVertexArray(Idx_house, vaoHouses[i]);

	glBindVertexArray(0);

	// Initialize tree
	initNodes();

	glClearColor( 1.0, 1.0, 1.0, 0.0 ); 
	glClearDepth( 1.0 ); 
	glEnable( GL_DEPTH_TEST );
	glDepthFunc(GL_LEQUAL);
	glPolygonMode(GL_FRONT, GL_FILL);

}

void display( void )
{
	 glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
	 
	 glClearColor(0.1, 0.2, 0.0, 1.0);
	 
	 projmat = Perspective(90,1.0,0.1, 5.0); 	
	 	
	 model_view = LookAt(eye, eye-n, v); 
	 
	 traverse( &nodes[0]);
   
     glutSwapBuffers();
}


void idle(void)
{
	glutPostRedisplay();
}
void
motion(int x, int y)
{
	if (moveLight || moveObject) {
		GLfloat dx = (y - cury) * 360.0 / height;
		GLfloat dy = (x - curx) * 360.0 / width;
		if (moveLight) {
			theta += dx;
			if (theta > 360)
				theta -= 360;
			if (theta < 0)
				theta += 360;
			theta_y += dy;
			if (theta_y > 360)
				theta_y -= 360;
			if (theta_y < 0)
				theta_y += 360;
		}
		else if (moveObject) {
			theta += dx;
			if (theta > 360)
				theta -= 360;
			if (theta < 0)
				theta += 360;
			theta_y += dy;
			if (theta_y > 360)
				theta_y -= 360;
			if (theta_y < 0)
				theta_y += 360;
		}
		curx = x;
		cury = y;
	}
	glutPostRedisplay();
}

void
mouse(int button, int state, int x, int y)
{
	if (state == GLUT_DOWN) {
		switch (button) {
		case GLUT_LEFT_BUTTON:
			moveObject = GL_TRUE;
			motion(curx = x, cury = y);
			break;
		case GLUT_MIDDLE_BUTTON:
			moveLight = GL_TRUE;
			motion(curx = x, cury = y);
			break;
		}
	}
	else if (state == GLUT_UP) {
		switch (button) {
		case GLUT_LEFT_BUTTON:
			moveObject = GL_FALSE;
			break;
		case GLUT_MIDDLE_BUTTON:
			moveLight = GL_FALSE;
			break;
		}
	}
}
//----------------------------------------------------------------------------

int
main( int argc, char **argv )
{
    glutInit( &argc, argv );
    glutInitDisplayMode( GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH );
    glutInitWindowSize( 512, 512 );
    glutCreateWindow( "Scene Graph and a Flying Camera Stub" );
	width = 512;
	height = 512;
	glutDisplayFunc(display); 
	glutReshapeFunc(reshape);
	glutKeyboardFunc( keyboard );
	glutSpecialFunc( specKey );
	glutIdleFunc(idle);
	glutMouseFunc(mouse);
	glutMotionFunc(motion);

    glewInit();

	init();

    glutMainLoop();
    return 0;
}

void keyboard( unsigned char key, int x, int y )
{
 

  GLfloat xt, yt, zt;
  GLfloat cosine, sine;

  //prees  spacebar to  return to default (initial) camera position and oreintation 
  if (key == 32)
  {
	  v = vec4(0.0, 1.0, 0.0, 00);
	  u = vec4(1.0, 0.0, 0.0, 0.0);
	  eye = vec4(0.0, 1.5, 3.0, 1.0);
	  n = Angel::normalize(vec4(0.0, 1.0, 2.0, 0.0));
  }

  // positive or negative rotation depending on upper or lower case letter
  if(key > 96)  
  {
    cosine = cos(SCALE_ANGLE * PI/-180.0);
    sine = sin(SCALE_ANGLE * PI/-180.0);
  }
  else
  {
    cosine = cos(SCALE_ANGLE * PI/180.0);
    sine = sin(SCALE_ANGLE * PI/180.0);
  }

  switch(key)
  {
	 
  case 'Z': // roll counterclockwise in the xy plane
  case 'z': // roll clockwise in the xy plane
    xt = u[X];
    yt = u[Y];
    zt = u[Z];
    u[X] = xt*cosine - v[X]*sine;
    u[Y] = yt*cosine - v[Y]*sine;
    u[Z] = zt*cosine - v[Z]*sine;
    v[X] = xt*sine + v[X]*cosine;
    v[Y] = yt*sine + v[Y]*cosine;
    v[Z] = zt*sine + v[Z]*cosine;
    break;
 
  case 'X': // left
  case 'x': // right
	  xt = u[X];
	  yt = u[Y];
	  zt = u[Z];

	  u[X] = cosine*xt - sine*n[X];
	  u[Y] = cosine*yt - sine*n[Y];
	  u[Z] = cosine*zt - sine*n[Z];
	  n[X] = sine*xt + cosine*n[X];
	  n[Y] = sine*yt + cosine*n[Y];
	  n[Z] = sine*zt + cosine*n[Z];
	  break;
   
  case 'c': // pitch up
  case 'C': // pitch down
	  xt = v[X];
	  yt = v[Y];
	  zt = v[Z];
	  v[X] = cosine*xt - sine*n[X];
	  v[Y] = cosine*yt - sine*n[Y];
	  v[Z] = cosine*zt - sine*n[Z];
	  n[X] = sine*xt + cosine*n[X];
	  n[Y] = sine*yt + cosine*n[Y];
	  n[Z] = sine*zt + cosine*n[Z];
	  break;

  {
	  xt = u[X];
	  yt = u[Y];
	  zt = u[Z];
	  u[X] = xt*cosine - v[X] * sine;
	  u[Y] = yt*cosine - v[Y] * sine;
	  u[Z] = zt*cosine - v[Z] * sine;
	  v[X] = xt*sine + v[X] * cosine;
	  v[Y] = yt*sine + v[Y] * cosine;
	  v[Z] = zt*sine + v[Z] * cosine;
  }
  break;
	case 033:  // Escape key
	case 'q': case 'Q':
	    exit( EXIT_SUCCESS );
    }

  glutPostRedisplay();
}

void specKey(int key, int x, int y)
{ 
switch( key ) {
case GLUT_KEY_UP: // MOVE FORWARD
    eye[0] -= SCALE_VECTOR * n[0];
    eye[1] -= SCALE_VECTOR * n[1];
    eye[2] -= SCALE_VECTOR * n[2];
    break;

case GLUT_KEY_DOWN: // MOVE BACKWARD
	eye[0] += SCALE_VECTOR * n[0];
	eye[1] += SCALE_VECTOR * n[1];
	eye[2] += SCALE_VECTOR * n[2];
	break;
  default:
    break;
  }
  glutPostRedisplay();
}


void reshape( int w, int h )
//the same objects are shown (possibly scaled) w/o shape distortion 
//original viewport is a square
{
	width = w;
	height = h;
	glViewport( 0, 0, (GLsizei) width, (GLsizei) height );

}
void drawObjectColored(int nType, GLuint vao, int nVertices) {
	glUseProgram(program[nType]);
	proj_loc = glGetUniformLocation(program[nType], "Projection");
	model_view_loc = glGetUniformLocation(program[nType], "ModelView");
	glUniformMatrix4fv(proj_loc, 1, GL_TRUE, projmat);
	mat4 model_view_temp = model_view;
	glUniformMatrix4fv(model_view_loc, 1, GL_TRUE, model_view_temp);

	glBindVertexArray(vao);
	glDrawArrays(GL_TRIANGLES, 0, nVertices);

	glUseProgram(0);
	glBindVertexArray(0);
}
void drawMountain(int nIdx) {
	drawObjectColored(Idx_mountain, vaoMountains[nIdx], MountainVertices);
}
void drawHouseColored(int nIdx){
	drawObjectColored(Idx_house, vaoHouses[nIdx], HouseVertices);
}
void drawTreeColored(int nIdx) {
	drawObjectColored(Idx_tree, vaoTrees[nIdx], TreeVertices);
}
