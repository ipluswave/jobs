#version 120


// per-fragment interpolated values from the vertex shader
varying vec3 fN;  //object normals
varying vec3 fL;   //light 1,2,3 etc...
varying vec3 fE;  //object xyz
varying vec3 fR;



uniform vec4 AmbientProduct2, DiffuseProduct2, SpecularProduct2;



uniform float Shininess;

void main() 
{ 
    // Normalize the input lighting vectors
    vec3 nfN = normalize(fN);
    vec3 nfE = normalize(fE);
    vec3 nfL = normalize(fL);
    vec3 nfR = normalize(fR);

    //dissregard lights behind the surface
    float Kd = max(dot(nfL, nfN), 0.0);
    vec4 diffuse = Kd*DiffuseProduct2;


	// reflection vectors  for implementing the full Phong Shader
	//vec3 r=(2*dot(N,L)*N)-L;
	//vec3 r2=(2*dot(N,L2)*N)-L2;
	//vec3 r3=(2*dot(N,L3)*N)-L3;
	
	//attenuation factor for implementing the spotlight
	//float att;


      

	float Ks = pow(max(dot(nfR, nfE), 0.0), Shininess);
        vec4 specular = Ks*SpecularProduct2;
        
        gl_FragColor = diffuse + specular + AmbientProduct2; 
        gl_FragColor.w = 1.0;
	

	
} 

