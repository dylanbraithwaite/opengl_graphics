precision mediump float;
uniform sampler2D s_texture;
uniform vec4 color;
uniform float depth;

in vec2 pos;
in vec2 uv;

out vec2 v_UV;

void main() {
    v_UV = uv;
    gl_Position = vec4(pos, 0.0, 1.0);
}
