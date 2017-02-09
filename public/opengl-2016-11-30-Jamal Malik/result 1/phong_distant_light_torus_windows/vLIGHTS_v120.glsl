#version 120

in   vec4 vPosition;
in   vec3 vNormal;

uniform mat4 ModelView;
uniform mat4 NormalView;
uniform mat4 Camera;
uniform vec4 LightPosition;
uniform mat4 Projection;

// output values that will be interpretated per-fragment
varying vec3 fN; //per fragment normal in world coords
varying vec3 fE; //per fragment viewing direction in camera coords
varying vec3 fL; //per fragment light direction in world coords
varying vec3 fR; //Per fragment perfect reflector in camera coords



void main()
{
    fN = normalize((NormalView*vec4(vNormal,0.0)).xyz);
    fE = -(ModelView*vPosition).xyz;
    fL = -normalize(LightPosition.xyz); //distant light 
    fR = (Camera*vec4(reflect(fL, fN), 0.0)).xyz; 
    gl_Position = Projection*ModelView*vPosition;

}
