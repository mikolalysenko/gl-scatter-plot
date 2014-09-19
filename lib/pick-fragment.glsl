precision mediump float;

uniform vec3 fragClipBounds[2];

varying vec4 pickId;
varying vec3 dataCoordinate;

void main() {
  if(any(lessThan(dataCoordinate, fragClipBounds[0]))   || 
     any(greaterThan(dataCoordinate, fragClipBounds[1])) ) {
    discard;
  } else {
    gl_FragColor = pickId.abgr;
  }
}