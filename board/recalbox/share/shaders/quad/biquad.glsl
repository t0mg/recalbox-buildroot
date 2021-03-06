// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying 
#define COMPAT_ATTRIBUTE attribute 
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord;
};
out_vertex _ret_0;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _ret_0._position1 = _r0008;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord = TexCoord.xy;
    gl_Position = _r0008;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _color1;
    vec2 _texCoord;
};
vec4 _ret_0;
float _TMP22;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
float _TMP23;
float _TMP24;
vec2 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
float _TMP34;
vec2 _v0035;
vec2 _pt20035;
float _TMP42;
vec2 _v0043;
vec2 _pt20043;
float _TMP50;
vec2 _v0051;
vec2 _pt20051;
vec3 _res0059;
vec3 _x0059;
float _TMP60;
vec2 _v0061;
vec2 _pt20061;
float _TMP68;
vec2 _v0069;
float _TMP76;
vec2 _v0077;
vec2 _pt20077;
vec3 _res0085;
vec3 _x0085;
float _TMP86;
vec2 _v0087;
vec2 _pt20087;
float _TMP94;
vec2 _v0095;
vec2 _pt20095;
float _TMP102;
vec2 _v0103;
vec2 _pt20103;
vec3 _res0111;
vec3 _x0111;
vec2 _c0113;
vec2 _c0115;
vec2 _c0117;
vec2 _c0119;
vec2 _c0123;
vec2 _c0125;
vec2 _c0127;
vec2 _c0129;
vec3 _r0131;
vec3 _r0133;
vec3 _r0135;
vec3 _r0137;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec3 _color;
    vec2 _dx;
    vec2 _dy;
    vec2 _pc;
    vec2 _tc;
    _pc = TEX0.xy*TextureSize;
    _TMP0 = floor(_pc);
    _tc = _TMP0 + vec2( 5.00000000E-01, 5.00000000E-01);
    _pt20035 = (_tc - vec2( 1.00000000E+00, 0.00000000E+00)) - vec2( 0.00000000E+00, 1.00000000E+00);
    _v0035 = _pt20035 - _pc;
    _TMP23 = dot(_v0035, _v0035);
    _TMP24 = inversesqrt(_TMP23);
    _TMP34 = 1.00000000E+00/_TMP24;
    _pt20043 = _tc - vec2( 0.00000000E+00, 1.00000000E+00);
    _v0043 = _pt20043 - _pc;
    _TMP23 = dot(_v0043, _v0043);
    _TMP24 = inversesqrt(_TMP23);
    _TMP42 = 1.00000000E+00/_TMP24;
    _pt20051 = (_tc + vec2( 1.00000000E+00, 0.00000000E+00)) - vec2( 0.00000000E+00, 1.00000000E+00);
    _v0051 = _pt20051 - _pc;
    _TMP23 = dot(_v0051, _v0051);
    _TMP24 = inversesqrt(_TMP23);
    _TMP50 = 1.00000000E+00/_TMP24;
    _x0059 = vec3(_TMP34, _TMP42, _TMP50);
    _res0059 = vec3(_x0059.x <= 5.00000000E-01 ? ((-1.60000002E+00*_x0059)*_x0059 + 8.99999976E-01).x : _x0059.x <= 1.50000000E+00 ? (((8.00000012E-01*_x0059)*_x0059 + -2.09999990E+00*_x0059) + 1.34999990E+00).x : 0.00000000E+00, _x0059.y <= 5.00000000E-01 ? ((-1.60000002E+00*_x0059)*_x0059 + 8.99999976E-01).y : _x0059.y <= 1.50000000E+00 ? (((8.00000012E-01*_x0059)*_x0059 + -2.09999990E+00*_x0059) + 1.34999990E+00).y : 0.00000000E+00, _x0059.z <= 5.00000000E-01 ? ((-1.60000002E+00*_x0059)*_x0059 + 8.99999976E-01).z : _x0059.z <= 1.50000000E+00 ? (((8.00000012E-01*_x0059)*_x0059 + -2.09999990E+00*_x0059) + 1.34999990E+00).z : 0.00000000E+00);
    _pt20061 = _tc - vec2( 1.00000000E+00, 0.00000000E+00);
    _v0061 = _pt20061 - _pc;
    _TMP23 = dot(_v0061, _v0061);
    _TMP24 = inversesqrt(_TMP23);
    _TMP60 = 1.00000000E+00/_TMP24;
    _v0069 = _tc - _pc;
    _TMP23 = dot(_v0069, _v0069);
    _TMP24 = inversesqrt(_TMP23);
    _TMP68 = 1.00000000E+00/_TMP24;
    _pt20077 = _tc + vec2( 1.00000000E+00, 0.00000000E+00);
    _v0077 = _pt20077 - _pc;
    _TMP23 = dot(_v0077, _v0077);
    _TMP24 = inversesqrt(_TMP23);
    _TMP76 = 1.00000000E+00/_TMP24;
    _x0085 = vec3(_TMP60, _TMP68, _TMP76);
    _res0085 = vec3(_x0085.x <= 5.00000000E-01 ? ((-1.60000002E+00*_x0085)*_x0085 + 8.99999976E-01).x : _x0085.x <= 1.50000000E+00 ? (((8.00000012E-01*_x0085)*_x0085 + -2.09999990E+00*_x0085) + 1.34999990E+00).x : 0.00000000E+00, _x0085.y <= 5.00000000E-01 ? ((-1.60000002E+00*_x0085)*_x0085 + 8.99999976E-01).y : _x0085.y <= 1.50000000E+00 ? (((8.00000012E-01*_x0085)*_x0085 + -2.09999990E+00*_x0085) + 1.34999990E+00).y : 0.00000000E+00, _x0085.z <= 5.00000000E-01 ? ((-1.60000002E+00*_x0085)*_x0085 + 8.99999976E-01).z : _x0085.z <= 1.50000000E+00 ? (((8.00000012E-01*_x0085)*_x0085 + -2.09999990E+00*_x0085) + 1.34999990E+00).z : 0.00000000E+00);
    _pt20087 = (_tc - vec2( 1.00000000E+00, 0.00000000E+00)) + vec2( 0.00000000E+00, 1.00000000E+00);
    _v0087 = _pt20087 - _pc;
    _TMP23 = dot(_v0087, _v0087);
    _TMP24 = inversesqrt(_TMP23);
    _TMP86 = 1.00000000E+00/_TMP24;
    _pt20095 = _tc + vec2( 0.00000000E+00, 1.00000000E+00);
    _v0095 = _pt20095 - _pc;
    _TMP23 = dot(_v0095, _v0095);
    _TMP24 = inversesqrt(_TMP23);
    _TMP94 = 1.00000000E+00/_TMP24;
    _pt20103 = _tc + vec2( 1.00000000E+00, 0.00000000E+00) + vec2( 0.00000000E+00, 1.00000000E+00);
    _v0103 = _pt20103 - _pc;
    _TMP23 = dot(_v0103, _v0103);
    _TMP24 = inversesqrt(_TMP23);
    _TMP102 = 1.00000000E+00/_TMP24;
    _x0111 = vec3(_TMP86, _TMP94, _TMP102);
    _res0111 = vec3(_x0111.x <= 5.00000000E-01 ? ((-1.60000002E+00*_x0111)*_x0111 + 8.99999976E-01).x : _x0111.x <= 1.50000000E+00 ? (((8.00000012E-01*_x0111)*_x0111 + -2.09999990E+00*_x0111) + 1.34999990E+00).x : 0.00000000E+00, _x0111.y <= 5.00000000E-01 ? ((-1.60000002E+00*_x0111)*_x0111 + 8.99999976E-01).y : _x0111.y <= 1.50000000E+00 ? (((8.00000012E-01*_x0111)*_x0111 + -2.09999990E+00*_x0111) + 1.34999990E+00).y : 0.00000000E+00, _x0111.z <= 5.00000000E-01 ? ((-1.60000002E+00*_x0111)*_x0111 + 8.99999976E-01).z : _x0111.z <= 1.50000000E+00 ? (((8.00000012E-01*_x0111)*_x0111 + -2.09999990E+00*_x0111) + 1.34999990E+00).z : 0.00000000E+00);
    _dx = vec2( 1.00000000E+00, 0.00000000E+00)/TextureSize;
    _dy = vec2( 0.00000000E+00, 1.00000000E+00)/TextureSize;
    _tc = _tc/TextureSize;
    _c0113 = (_tc - _dx) - _dy;
    _TMP10 = COMPAT_TEXTURE(Texture, _c0113);
    _c0115 = _tc - _dy;
    _TMP11 = COMPAT_TEXTURE(Texture, _c0115);
    _c0117 = (_tc + _dx) - _dy;
    _TMP12 = COMPAT_TEXTURE(Texture, _c0117);
    _c0119 = _tc - _dx;
    _TMP13 = COMPAT_TEXTURE(Texture, _c0119);
    _TMP14 = COMPAT_TEXTURE(Texture, _tc);
    _c0123 = _tc + _dx;
    _TMP15 = COMPAT_TEXTURE(Texture, _c0123);
    _c0125 = (_tc - _dx) + _dy;
    _TMP16 = COMPAT_TEXTURE(Texture, _c0125);
    _c0127 = _tc + _dy;
    _TMP17 = COMPAT_TEXTURE(Texture, _c0127);
    _c0129 = _tc + _dx + _dy;
    _TMP18 = COMPAT_TEXTURE(Texture, _c0129);
    _r0131 = _res0059.x*_TMP10.xyz;
    _r0131 = _r0131 + _res0059.y*_TMP11.xyz;
    _r0131 = _r0131 + _res0059.z*_TMP12.xyz;
    _r0133 = _res0085.x*_TMP13.xyz;
    _r0133 = _r0133 + _res0085.y*_TMP14.xyz;
    _r0133 = _r0133 + _res0085.z*_TMP15.xyz;
    _color = _r0131 + _r0133;
    _r0135 = _res0111.x*_TMP16.xyz;
    _r0135 = _r0135 + _res0111.y*_TMP17.xyz;
    _r0135 = _r0135 + _res0111.z*_TMP18.xyz;
    _color = _color + _r0135;
    _r0137.x = dot(_res0059, vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _r0137.y = dot(_res0085, vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _r0137.z = dot(_res0111, vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _TMP22 = dot(_r0137, vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _color = _color/_TMP22;
    _ret_0 = vec4(_color.x, _color.y, _color.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
