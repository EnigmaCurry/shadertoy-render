/*
@lsdlive
CC-BY-NC-SA
https://www.shadertoy.com/view/wt3SRl

Motion Loop #002

Checkout the ISF port: https://github.com/theotime/isf_shaders/blob/master/shaders/motiongraphics_002.fs

With the help of https://thebookofshaders.com/examples/?chapter=motionToolKit
Inspired by: https://thebookofshaders.com/edit.php?log=160909064609

*/

#define bpm 480.
#define speed 0.5
#define blink_factor (0.*.125)

#define AA 3.

#define pi 3.141592
#define time (speed*(bpm/60.)*iTime)

vec3 col1 = vec3(0);

mat2 r2d(float a) {
    float c = cos(a), s = sin(a);
    return mat2(c, s, -s, c);
}

float fill(float d) {
    return 1. - smoothstep(0., AA / iResolution.x, d);
}

// inspired by Pixel Spirit Deck: https://patriciogonzalezvivo.github.io/PixelSpiritDeck/
// + https://www.shadertoy.com/view/tsSXRz
float stroke(float d, float width) {
	return 1. - smoothstep(0., AA / iResolution.x, abs(d) - width * .015);
}

float circle(vec2 p, float radius) {
  return length(p) - radius;
}

float pulse(float begin, float end, float t) {
  return step(begin, t) - step(end, t);
}

float easeInOutExpo(float t) {
    if (t == 0. || t == 1.) {
        return t;
    }
    if ((t *= 2.) < 1.) {
        return .5 * exp2(10. * (t - 1.));
    } else {
        return .5 * (-exp2(-10. * (t - 1.)) + 2.);
    }
}

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    vec2 uv = (fragCoord - .5 * iResolution.xy) / iResolution.y;
    uv.x *= 5*cos(iTime/12)+(sin(tan(iTime)-12)-4)/22;
    uv.y *= sin(iTime)/2222;

    float mask;
    
    float t1 = fract(.125 + time * .25); // for blinking rings
    float t2 = easeInOutExpo(fract(time));// for easing ring

    float n = abs(mod(time-0.25,1) * 0.4);
    float q = abs(mod(sin(time), 1));

    // blinking rings
    if (uv.x < 0.) {
        if (uv.y < 0. && pulse(0., .25 - blink_factor, t1) == 1.) {
            mask = fill(circle(uv, n));
            mask += stroke(circle(uv, q), .005);
        } else if(uv.y > 0. && pulse(.25, .5 - blink_factor, t1) == 1.) {
            mask = fill(circle(uv, n));
            mask += stroke(circle(uv, q), .005);
        }
    } else {
        if (uv.y > 0. && pulse(.5, .75 - blink_factor, t1) == 1.) {
            mask = fill(circle(uv, n));
            mask += stroke(circle(uv, q), .005);
        } else if (uv.y < 0. && pulse(.75, 1. - blink_factor, t1) == 1.) {
            mask = fill(circle(uv, n));
            mask += stroke(circle(uv, q), .005);
        }
    }
    
    // opposite blinking rings
    if (uv.x < 0.) {
        if (uv.y < 0. && pulse(.5, .75 - blink_factor, t1) == 1.) {
            mask = stroke(circle(uv, .25), .05);
            mask += stroke(circle(uv, .2), .005);
        } else if(uv.y > 0. && pulse(.75, 1. - blink_factor, t1) == 1.) {
            mask = stroke(circle(uv, .25), .05);
            mask += stroke(circle(uv, .2), .005);
        }
    } else {
        if (uv.y > 0. && pulse(0., .25 - blink_factor, t1) == 1.) {
            mask = stroke(circle(uv, .25), .05);
            mask += stroke(circle(uv, .2), .005);
        } else if (uv.y < 0. && pulse(.25, .5 - blink_factor, t1) == 1.) {
            mask = stroke(circle(uv, .25), .05);
            mask += stroke(circle(uv, .2), .005);
        }
    }
    
    
    // easing ring
    vec2 uv2 = uv * r2d(-pi / 2. * (floor(time) + t2));
    if(uv2.x < 0. && uv2.y < 0.)
        mask -= 2. * stroke(circle(uv2, .15), .05);
    mask += stroke(circle(uv, .15), .05);
    
    
    // outer rings + central circle
    mask -= fill(circle(uv, .09));
    mask += stroke(circle(uv, .4), .01);
    mask += stroke(circle(uv, .43), .01);
    
    mask = clamp(mask, 0., 1.);
    vec3 col = mix(col1, 0.15 + 0.15 * cos(iTime + uv.xyx + vec3(0,2,4)), mask);
    
    fragColor = vec4(col, 1.);
}
