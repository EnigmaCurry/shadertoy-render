#include sdf_2d.glsl
#buffer test2.glsl
#buffer starfield5.glsl
#buffer motion_loop_002.glsl

vec4 merge(vec4 color1, vec4 color2, vec3 bgcolor) {
  return color2 == vec4(bgcolor, 1) ? color1 : color2;
}

void mainImage( out vec4 col, vec2 u ) {
  vec2 uv = u/iResolution.xy;
  col = merge(col, vec4(texture(iChannel1,uv).rgb, 1),  vec3(0));
  col = merge(col, vec4(texture(iChannel2,uv).rgb, 1),  vec3(0));
  col = merge(col, vec4(texture(iChannel0,uv).rgb, 1),  vec3(0.2));
}
