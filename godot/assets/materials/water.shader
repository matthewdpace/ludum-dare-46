shader_type spatial;

uniform vec3 baseColor;
uniform float alpha: hint_range(0,1);

void fragment() {
	ALBEDO = baseColor;
	ALPHA = alpha;
	
}

void vertex() {
	
}

