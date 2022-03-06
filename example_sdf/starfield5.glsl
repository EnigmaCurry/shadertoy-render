//https://www.shadertoy.com/view/4scXWB

float flare( vec2 U )                            // rotating hexagon
{	vec2 A = sin(vec2(0, 1.57) + sin(iTime)*U.x*31);
  U = abs( U/sin(iTime/12) * mat2(A, -A.y, A.x) ) * mat2(2,0,1,1.7); 
  return .2/max(U.x,U.y);                      // glowing-spiky approx of step(max,.2)
  //return .2*pow(max(U.x,U.y), -2.);
 
}

#define r(x)     fract(1e4*(sin((x)*21541.17)))      // rand, signed rand   in 1, 2, 3D.
#define sr2(x)   ( r(vec2(x+sin(iTime)/222222,x+cos(iTime)/222222)) *2.-1. )
#define sr3(x)   ( r(vec4(x,cos(iTime)/222+x+.1,x+.2,0)) *2.-0.5 )

void mainImage( out vec4 O, vec2 U )
{
  vec2 R = iResolution.xy;
  U =  (U+U - R) / R.y;
	O -= O+.3;
  for (float i=0.; i<99.; i++)
    O += flare (U - sr2(i)*R/R.y )           // rotating flare at random location
      * r(i/222)                          // random scale
      * (1.+sin(iTime+r(i+.93)*6.))*.1  // time pulse
      * (0.43+.2*sr3(i+.94));               // random color - uncorrelated
      //* (1.+.1*sr3(i));                  // random color - correlated
}
