/*************************************************************
CG: Shaded Scene

Camera: Free flying  
	Pilot's interface pitch/roll/yaw, slide forward/backward and strafe left/right

Objects: torus
	Surface of revolution obtained by rotating the circle (x-1)^2 + (z-0)^2 = 0.121, y=0 around the z-axis
	i.e the crossection profile is circle of radios 0.1
	The paraemtric representation of this torus is
			x = (1+0.1*cos(theta))*cos(phi)
			y = (1+0.1*cos(theta))*sin(phi)
			z=  0.1*sin(theta)
	where theta and phi belong to [0, 2Pi].
	
	The formulae in the instructor's nodes say that the normal at a vertex with coordinates
			x = (1+0.1*cos(theta))*cos(phi)
			y = (1+0.1*cos(theta))*sin(phi)
			z=  0.1*sin(theta)
	is the vector N = vec3{cos(theta)*cos(phi), os(theta)*sin(phi), sin(theta)}

Material: "Silver" 
	This is really just high intensity specular gray. Traditional choice
	RGB_Spec = [0.8, 0.8, 0.8]. To get true "shiny metal" effects one needs to model 
	reflections of the scene on the object. We will discuss how to do this when we
	discuss environment and bump mapping.

Light: Single distant light.

 
****************************************************************/

#include "Angel.h"

///////CONSTANT/////////////////////
#ifndef PI
#define PI 3.14159265358979323846
#endif

typedef vec4 point4;
typedef vec4 color4;

void m_glewInitAndVersion(void);

void specKey(int key, int x, int y);
void animate(int);
void display(void);
void init(void);
void keyboard(unsigned char, int, int);
void reshape(int width, int height);

int currentHeight = 800, currentWidth = 800;

///////////////MATRIX STACK////////////

class stackClass {
public:
	static const int CAPACITY = 100;
	stackClass();
	~stackClass();
	mat4 pop();
	void push(const mat4&);
private:
	int index;
	mat4 matrix[CAPACITY];
} stack, normalStack;

stackClass::stackClass() {
	index = 0;
}
stackClass::~stackClass() {
	//delete[] matrix;
}
void stackClass::push(const mat4& s) {
	matrix[index] = s;
	index++;
}

mat4 stackClass::pop() {
	index--;
	return matrix[index];
}

/////ATTRIBUTES, BUFFERS, ARRAYS///////////////////
GLuint vPosition, vNormal, program, vao, buffer;

// Model-view and projection matrices uniform location
GLuint  ModelView, NormalView, Projection, camera_loc;

mat4 projection = mat4(1.0);
mat4 model_view = mat4(1.0);
mat4 normal_view = mat4(1.0);

int pitchUp = 0;
float roll = 0, yaw = 0, pitch = 0;
float spin2 = 0.0, spin_step2 = 0.1;
float scaleX = 0, scaleY = 1, scaleZ = 0;
GLfloat s = 0.5; //strafe step
float angle = 0.01f;
float cosine = cos(angle);
float sine = sin(angle);
int speedForward = 0;
int speedRight = 0;

GLfloat d = 0.5;

/////Camera unv basis///////
vec4 n = normalize(vec4(0.0, 0.0, 1.0, 0.0));
vec4 v = vec4(0.0, 1.0, 0.0, 0.0);
vec4 u = vec4(1.0, 0.0, 0.0, 0.0);
vec4 eye = vec4(0.0, 0.0, 2.0, 1.0);
vec4 nref = n, vref = v, uref = u;

///////LIGHTING and SHADING////////////////////////

//fixed distant light
vec4 light_position2;
vec4 light_ambient2;
vec4 light_diffuse2;
vec4 light_specular2;


//materials

vec4 material_ambient;
vec4 material_diffuse;
vec4 material_specular;

vec4 ambient_product2; 
vec4 diffuse_product2;
vec4 specular_product2;

GLfloat material_shininess;

void computeLightProduct() {

	ambient_product2 = light_ambient2 * material_ambient;
	diffuse_product2 = light_diffuse2 * material_diffuse;
	specular_product2 = light_specular2 * material_specular;
	


	glUniform4fv(glGetUniformLocation(program, "AmbientProduct2"), 1, ambient_product2);
	glUniform4fv(glGetUniformLocation(program, "DiffuseProduct2"), 1, diffuse_product2);
	glUniform4fv(glGetUniformLocation(program, "SpecularProduct2"), 1, specular_product2);
	

}
void lightDistant() {

	//distant light
	light_position2 = vec4(0.0, 0.0, -1.0, 0.0);
	light_ambient2 = vec4(0.8, 0.8, 0.8, 1.0);
	light_diffuse2 = vec4(1.0, 1.0, 1.0, 1.0);
	light_specular2 = vec4(1.0, 1.0, 1.0, 1.0);
	GLuint light_pos_loc = glGetUniformLocation(program, "LightPosition");
	glUniform4fv(light_pos_loc, 1, light_position2);


}



////////TORUS/////////////////////////
const int numTorus = 2400;
const int baseTorus = 2400;

vec4 torusData[numTorus];
vec3 torusNormal[numTorus];
const int sizeTorus = sizeof(torusData);
const int sizeTorusNormal = sizeof(torusNormal);

void buildTorus() {
	int numc, numt, i, j, k;
	double s, t, x, y, z, xn, yn, zn;
	numc = 30; numt = 39;
	int vertexCounter = 0;
	for (i = 0; i < numc; i++) {
		for (j = 0; j <= numt; j++) {
			for (k = 1; k >= 0; k--) {
				s = (i + k) % numc + 0.5;
				t = j % numt;
				x = (1 + .1*cos(s * 2 * PI / numc))*cos(t * 2 * PI / numt);
				y = (1 + .1*cos(s * 2 * PI / numc))*sin(t * 2 * PI / numt);
				z = .1 * sin(s * 2 * PI / numc);
				xn = cos(s * 2 * PI / numc)*cos(t * 2 * PI / numt);
				yn = cos(s * 2 * PI / numc)*sin(t * 2 * PI / numt);
				zn = sin(s * 2 * PI / numc);
				torusData[vertexCounter] = vec4(x, y, z, 1.0);
				torusNormal[vertexCounter] = vec3(xn, yn, zn);
				vertexCounter++;
			}
		}
	}
	
}

void drawTorus()
	{
		stack.push(model_view);
		normalStack.push(normal_view);

		material_ambient = vec4(0.6, 0.6, 0.6, 1.0);
		material_diffuse = vec4(0.8, 0.8, 0.8, 1.0);
		material_specular = vec4(0.8, 0.8, 0.8, 1.0);

		material_shininess = 60.0;
		computeLightProduct();
		glUseProgram(program);
		glBindVertexArray(vao);
		// Retrieve transformation uniform variable locations
		ModelView = glGetUniformLocation(program, "ModelView");
		NormalView = glGetUniformLocation(program, "NormalView");
		Projection = glGetUniformLocation(program, "Projection");
		camera_loc = glGetUniformLocation(program, "Camera");
		glUniformMatrix4fv(ModelView, 1, GL_TRUE, model_view);
		glUniformMatrix4fv(NormalView, 1, GL_TRUE, normal_view);
		glUniformMatrix4fv(camera_loc, 1, GL_TRUE, model_view);
		glUniform1f(glGetUniformLocation(program, "Shininess"), material_shininess);
		glDrawArrays(GL_QUAD_STRIP, 0, 2400);
		model_view = stack.pop();
		normal_view = normalStack.pop();
		
		glutPostRedisplay();
	}


//////////SCENE GRAPH////////////////


	typedef struct sceneNode {
		mat4 m, n;
		void(*f) ();
		struct sceneNode* sibling;
		struct sceneNode* child;
		struct sceneNode* parent;
	}sceneNode;

	sceneNode light, torus;

	void sceneTraverse(sceneNode* node) {
		if (node == NULL) return;
		stack.push(model_view);
		normalStack.push(normal_view);
		model_view = model_view*node->m;
		normal_view = normal_view*node->n;
		if (node->f != NULL) {
			node->f();
		}
		if (node->child != NULL)
			sceneTraverse(node->child);
		model_view = stack.pop();
		normal_view = normalStack.pop();
		if (node->sibling != NULL)
			sceneTraverse(node->sibling);
	}

	void initScene() {
		light.m = RotateY(0.0);
		light.n = RotateY(0.0);
		light.f = lightDistant;
		light.sibling = &torus;
		light.child = NULL;

		torus.f = drawTorus;
		torus.m = RotateZ(30.0f)*RotateX(40.0f);//Translate(-4.0, 0.0, 0.5)*RotateY(45.0);
		torus.n = RotateZ(30.0f)*RotateX(40.0f);//RotateY(45.0);
		torus.sibling = NULL;
		torus.child = NULL;
		
	}

	int main(int argc, char **argv) {
		glutInit(&argc, argv);
		glutInitDisplayMode(GLUT_RGBA | GLUT_DOUBLE | GLUT_DEPTH);
		glutInitWindowSize(currentWidth, currentHeight);
		glutCreateWindow("Shaded Stationary Torus, moving camera, single distant light");
		m_glewInitAndVersion();

		init();

		glutDisplayFunc(display);
		glutReshapeFunc(reshape);
		glutKeyboardFunc(keyboard);
		glutSpecialFunc(specKey);
		glutTimerFunc(20, animate, 1);

		glutMainLoop();
		return 0;
	}


void init(void){
		buildTorus();
		glGenVertexArrays(1, &vao);
		glGenBuffers(1, &buffer);
		glBindVertexArray(vao);
		glBindBuffer(GL_ARRAY_BUFFER, buffer);
		glBufferData(GL_ARRAY_BUFFER, sizeof(torusData) + sizeof(torusNormal), NULL, GL_STATIC_DRAW);
		glBufferSubData(GL_ARRAY_BUFFER, 0, sizeof(torusData), torusData);
		glBufferSubData(GL_ARRAY_BUFFER, sizeof(torusData), sizeof(torusNormal), torusNormal);
		
		program = InitShader("vLIGHTS_v120.glsl", "fLIGHTS_v120.glsl");
		glUseProgram(program);
		vPosition = glGetAttribLocation(program, "vPosition");
		glEnableVertexAttribArray(vPosition);
		glVertexAttribPointer(vPosition, 4, GL_FLOAT, GL_FALSE, 0, BUFFER_OFFSET(0));

		vNormal = glGetAttribLocation(program, "vNormal");
		glEnableVertexAttribArray(vNormal);
		glVertexAttribPointer(vNormal, 3, GL_FLOAT, GL_FALSE, 0, BUFFER_OFFSET(sizeof(torusData)));

		

		glClearColor(0.1, 0.1, 0.5, 1.0);
		glClearDepth(1.0);
		glEnable(GL_DEPTH_TEST);
		glBindVertexArray(vao);
		initScene();


	}



	void reshape(int w, int h) {
		glViewport(0, 0, (GLsizei)w, (GLsizei)h);
		currentHeight = h; currentWidth = w;
	}

	void display(void) {
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		projection = Perspective(90.0f, (float)(currentWidth) / currentHeight, 0.1f,20.0f);
		glUniformMatrix4fv(Projection, 1, GL_TRUE, projection);

		model_view = LookAt(eye, eye-n, v);
		normal_view = mat4(1.0f);

		
		glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);

		sceneTraverse(&light);


		glutSwapBuffers();
	}


	void animate(int j) {
		eye += speedForward*0.02*n;
		eye += speedRight*0.02*u;
		glutTimerFunc(20, animate, 1);
		glutPostRedisplay();
	}

	void specKey(int key, int x, int y) {
		float step = 0.1;
		switch (key) {
		case GLUT_KEY_DOWN:
			eye += step*n;
			break;
		case GLUT_KEY_UP:
			eye -= step*n;
			break;
		case GLUT_KEY_LEFT:
			eye -= step*u;
			break;
		case GLUT_KEY_RIGHT:
			eye += step*u;
			break;
		}

	}

	void keyboard(unsigned char key, int x, int y) {
		GLfloat xTemp, yTemp, zTemp;


		switch (key)
		{
		case 'z': //z key, roll CW
			uref = u; vref = v;
			u = cos(-0.01)*uref - sin(-0.01)*vref;
			v = sin(-0.01)*uref + cos(-0.01)*vref;
			break;
		case 'Z': //uppercase Z key, roll CCW
			uref = u; vref = v;
			u = cos(0.01)*uref - sin(0.01)*vref;
			v = sin(0.01)*uref + cos(0.01)*vref;

			break;
		case 'x': //x key, pitch up
			vref = v; nref = n;
			v = cos(-0.01)*vref - sin(-0.01)*nref;
			n = sin(-0.01)*vref + cos(-0.01)*nref;
			break;
		case 'X': //uppercase X key, pitch down
			vref = v; nref = n;
			v = cos(0.01)*vref - sin(0.01)*nref;
			n = sin(0.01)*vref + cos(0.01)*nref;
			break;

		case 'c': //c key, yaw CW
			uref = u; nref = n;
			u = cos(-0.01)*uref - sin(-0.01)*nref;
			n = sin(-0.01)*uref + cos(-0.01)*nref;

			break;
		case 'C': //uppercase C key, yaw CCW
			uref = u; nref = n;
			u = cos(0.01)*uref - sin(0.01)*nref;
			n = sin(0.01)*uref + cos(0.01)*nref;
			break;

		}


		glutPostRedisplay(); //redisplay with the new view
	}

	void m_glewInitAndVersion(void)
	{
		fprintf(stdout, "OpenGL Version: %s\n", glGetString(GL_VERSION));
		fprintf(stdout, "GLSL Version: %s\n", glGetString(GL_SHADING_LANGUAGE_VERSION));
		GLenum err = glewInit();
		if (GLEW_OK != err)
		{
			fprintf(stderr, "Error: %s\n", glewGetErrorString(err));
		}
		fprintf(stdout, "Status: Using GLEW %s\n", glewGetString(GLEW_VERSION));
	}



	