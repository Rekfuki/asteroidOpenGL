//! #version 430
layout (location = 0) in vec3 pos;

out vec3 tex_coords;

uniform mat4 projection;
uniform mat4 view;
uniform mat4 model;

void main() {
    tex_coords = pos;
    gl_Position = (projection * view  * vec4(pos, 1.0)).xyww;
}