// https://www.iquilezles.org/www/articles/distfunctions2d/distfunctions2d.htm

float sdCircle( in vec2 p, in float r ) {
  return length(p)-r;
}

float ndot(vec2 a, vec2 b ) { return a.x*b.x - a.y*b.y; }
float sdRhombus( in vec2 p, in vec2 b )
{
  p = abs(p);
  float h = clamp( ndot(b-2.0*p,b)/dot(b,b), -1.0, 1.0 );
  float d = length( p-0.5*b*vec2(1.0-h,1.0+h) );
  return d * sign( p.x*b.y + p.y*b.x - b.x*b.y );
}

float sdEquilateralTriangle(  in vec2 p, in float r )
{
  const float k = sqrt(3.0);
  p.x = abs(p.x) - r;
  p.y = p.y + r/k;
  if( p.x+k*p.y>0.0 ) p=vec2(p.x-k*p.y,-k*p.x-p.y)/2.0;
  p.x -= clamp( p.x, -2.0*r, 0.0 );
  return -length(p)*sign(p.y);
}

vec2 rotate(vec2 uv, float angle) {
  return mat2(cos(angle), sin(angle), -sin(angle), cos(angle)) * uv;
}
