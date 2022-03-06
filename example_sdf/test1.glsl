vec2 rotate(vec2 uv, float angle) {
  return mat2(cos(angle), sin(angle), -sin(angle), cos(angle)) * uv;
}

vec3 sdfCircle(vec2 uv, float r, vec2 offset) {
  float t = iTime;
  float x = uv.x - offset.x;
  float y = uv.y - offset.y;
  float d = length(vec2(x,y)) - r;

  vec3 a = 0.5 + 0.5 * cos(iTime + uv.xyx + vec3(0,2,4));

  return d > 0. ? vec3(0.) :  a;
}

vec3 sdfSquare(vec2 uv, float size, vec2 offset) {
  float x = uv.x - offset.x;
  float y = uv.y - offset.y;
  vec2 rotated = rotate(vec2(x,y), iTime);
  float d = max(abs(rotated.x), abs(rotated.y)) - size;

  vec3 a = 0.5 + 0.5 * sin(iTime + uv.xyx + vec3(0,2,4));
  return d > 0. ? vec3(0.) : a;
}

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
  vec2 uv = fragCoord/iResolution.xy;
  uv -= 0.5;
  uv.x *= iResolution.x/iResolution.y;

  float zoom = 10;
  zoom /= 100;
  vec3 col = vec3(0);

  vec2 offset = vec2(sin(iTime/2)/22 * 2.1, tan(iTime)/cos(iTime/3)/123 * 2.1);

  if (uv.x > tan(iTime)/12) {
    col = sdfCircle(uv, zoom, offset);
  } else {
    col = sdfSquare(uv, zoom, offset);
  }

  fragColor = vec4(col,1.0);
}
