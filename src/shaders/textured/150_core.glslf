#version 150 core
uniform sampler2D s_texture;
uniform vec4 color;
uniform float depth;

in vec2 v_UV;

out vec4 o_Color;

void main()
{
    o_Color = texture(s_texture, v_UV) * color;
    if (o_Color.a > 0.45) gl_FragDepth = depth;
    else discard;

}
