// Vertex Shader
precision mediump int;
precision mediump float;

uniform mat4 u_Transform;
uniform float aspect;
uniform float time;

attribute vec3 a_Vertex;
attribute vec4 a_Color;

varying vec4 v_Color;

void main() {
  // Transform the location of the vertex
  vec3 result = a_Vertex * 0.5;
  result.x *= aspect;
  result.x += sin(time) * 0.8;
  gl_Position = vec4(result, 1.0);

  // Set the color of the vertex from the attribute VOB
  v_Color = a_Color;
}