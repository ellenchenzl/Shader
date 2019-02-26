#version 330 compatibility

out vec3  vMCposition;
out vec3 vECposition;
out vec2  vST; 
out float vLightIntensity;
out float Z;
out float vX, vY;

vec3 LIGHTPOS   = vec3( -2., 0., 10. );

void main( )

{
 vST = gl_MultiTexCoord0.st;
 
vec3 tnorm      = normalize( gl_NormalMatrix * gl_Normal );	// transformed normal
vec3 ECposition = ( gl_ModelViewMatrix * gl_Vertex ).xyz;
vLightIntensity  = abs(  dot( normalize(LIGHTPOS - ECposition), tnorm )  );
 
 vMCposition  = gl_Vertex.xyz;
 vX = vMCposition.x;
 vY = vMCposition.y;
 gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
}
           
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   