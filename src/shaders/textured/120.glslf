#version 120
uniform sampler2D s_texture;
uniform vec4 color;
uniform float depth;

varying vec2 v_UV;

void main()
{
    gl_FragColor = texture2D(s_texture, v_UV) * color;
    if (gl_FragColor.a > 0) gl_FragDepth = depth;
    else discard;
}
