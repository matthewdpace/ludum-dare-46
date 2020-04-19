extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var totalO2_kg 
var totalCO2_kg

var mealsFed
var preparedVeggie
var preparedMeat
var preparedFish

# Called when the node enters the scene tree for the first time.
func _ready():
	mealsFed = 0
	preparedFish = 0
	preparedMeat = 0
	preparedVeggie = 0
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
