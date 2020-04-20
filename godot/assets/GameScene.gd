extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var totalO2_kg = 1
var totalCO2_kg = 1

var mealsFed
var preparedVeggie
var preparedMeat
var preparedFish
var daysPassed
var day = 0
var year = 0
# Called when the node enters the scene tree for the first time.
var biome = {
	
}


func _ready():
	mealsFed = 0
	preparedFish = 0
	preparedMeat = 0
	preparedVeggie = 0
	totalO2_kg = 10000.0
	totalCO2_kg = 2000.0
	daysPassed = 0
	
	

func updateGUI():
	
	var ulpath = $"CameraParent/ViewportContainer/HUD1/GUI Blocks/Upper Left/_total_O2" 
	ulpath.text = str(self.totalO2_kg)
	ulpath = $"CameraParent/ViewportContainer/HUD1/GUI Blocks/Upper Left/_total_CO2" 
	ulpath.text = str(self.totalCO2_kg)
	
	
	
	ulpath = $"CameraParent/ViewportContainer/HUD1/GUI Blocks/Upper Left/_meals"
	ulpath.text = str(mealsFed)
	ulpath = $"CameraParent/ViewportContainer/HUD1/GUI Blocks/Upper Left/_year"
	ulpath.text = str(year)
	ulpath = $"CameraParent/ViewportContainer/HUD1/GUI Blocks/Upper Left/_day" 
	ulpath.text = str(int(day))
	
	

func _process(delta):
	var dp = .5 * delta
	if int(daysPassed) > int(daysPassed + dp):
		#$Base/Aquarium.day()
		#$Base/Vegetable.day()
		#$Base/Animal.day()
		pass
	daysPassed +=dp
	updateGUI()
	day = daysPassed
	if day > 668:
		day -=668
		year += 1
