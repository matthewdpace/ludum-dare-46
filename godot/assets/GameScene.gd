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
# Called when the node enters the scene tree for the first time.
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
	ulpath = $"CameraParent/ViewportContainer/HUD1/GUI Blocks/Upper Left/_day" 
	ulpath.text = str(daysPassed)
	

func _process(delta):
	daysPassed += 105120 /300 * delta
	updateGUI()
