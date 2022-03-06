#include sdf_2d.glsl

vec3 circle(vec2 uv, float r, vec2 offset, vec3 bgcolor) {
  float t = iTime;
  float x = uv.x - offset.x;
  float y = uv.y - offset.y;
  vec2 p = rotate(vec2(x,y), -1*iTime);
  float d = sdCircle(p, r);

  //vec3 a = 0.5 + 0.5 * cos(iTime + uv.xyx + vec3(0,2,4));

  return d > 0. ? bgcolor :  vec3(1);
}

vec3 triangle(vec2 uv, float r, vec2 offset, vec3 bgcolor) {
  float t = iTime;
  float x = uv.x - offset.x;
  float y = uv.y - offset.y;
  vec2 p = rotate(vec2(x,y), -1*iTime);
  float d = sdEquilateralTriangle(p, r);

  return d > 0. ? bgcolor :  vec3(1);
}

vec3 square(vec2 uv, float size, vec2 offset, vec3 bgcolor) {
  float x = uv.x - offset.x;
  float y = uv.y - offset.y;
  vec2 p = rotate(vec2(x,y), iTime);
  float d = sdRhombus(p, vec2(3,sin(iTime)+2) * size);

  return d > 0. ? bgcolor : vec3(1);
}

vec3 color1(vec2 uv, vec3 existing_color, vec2 offset, vec3 bgcolor) {
  uv.x -= offset.x;
  uv.y -= offset.y;
  if (existing_color == vec3(1)) {
    return 0.5 + 0.5 * cos(iTime + uv.xyx + vec3(0,2,4));
  } else {
    return bgcolor;
  }
}

vec3 color2(vec2 uv, vec3 existing_color, vec2 offset, vec3 bgcolor) {
  uv.x -= offset.x;
  uv.y -= offset.y;
  if (existing_color == vec3(1)) {
    return 0.5 + 0.5 * sin(iTime/2 + uv.xyx + vec3(10,2,8));
  } else {
    return bgcolor;
  }
}

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
  vec2 uv = fragCoord/iResolution.xy;
  uv -= 0.5;
  uv.x *= iResolution.x/iResolution.y;
  uv = rotate(uv, 90);

  float zoom = 10 + abs(sin(iTime/2)*22);
  zoom /= 100;
  vec3 bgcolor = vec3(0.2);
  vec3 col = bgcolor;

  vec2 offset = vec2(sin(iTime/2)/22 * 2.1, 12*(sin(iTime))/cos(iTime/3)/123 * 2.1);

  if (uv.x > tan(iTime)/12) {
    vec3 c = circle(uv, zoom, offset, col);
    c = color1(uv, c, offset, col);
    vec3 s = square(uv, zoom/3, offset, bgcolor);
    col = color2(uv, s, offset, c);
  } else {
    vec3 c = circle(uv, zoom, offset, col);
    c = color2(uv, c, offset, col);
    vec3 s = square(uv, zoom/3, offset, bgcolor);
    col = color1(uv, s, offset, c);
  }

  fragColor = vec4(col,1.0);
}
