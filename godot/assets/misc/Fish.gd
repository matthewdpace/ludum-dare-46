extends Spatial


var hunger = 2
var biomass
var daysAlive = 0 # 668 martian sols in a martian year
var maturity = 2
var retirement = 5



func _ready():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	
	self.biomass = 20.0 + rng.randf_range(-4,4)
	
	#self.translation = Vector3(rng.randf_range(-8,8),
	#						rng.randf_range(2,12),
	#						rng.randf_range(-8,8))
	
func growthRate() -> float :
	var x = daysAlive/ maturity * 668
	return sin(x) * hunger



func day(tank):
	
	daysAlive += 1
	
