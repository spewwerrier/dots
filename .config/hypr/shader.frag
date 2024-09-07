precision mediump float;
varying vec2 v_texcoord;
uniform sampler2D tex;

void main() {
    vec4 pixColor = texture2D(tex, v_texcoord);

    float grayscale = 0.299 * pixColor.r + 0.587 * pixColor.g + 0.114 * pixColor.b;
    pixColor.rgb = vec3(grayscale);
    
    gl_FragColor = pixColor;

}
