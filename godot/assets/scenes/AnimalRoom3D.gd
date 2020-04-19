extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var localH2O
var localCO2 
var localO2
var localWaste
var grassHealth
var veggieStock 
# Called when the node enters the scene tree for the first time.
func _ready():
	
	veggieStock = 500
	localH2O = 5000
	localCO2 = 500.0
	localO2 = 20000.0
	localWaste = 0
	grassHealth = 110.0
	


func _process(delta):
	#thhe cows will handle themselves, but proccess environmental  here
	
	#time factor 5min = 1 yr
	var days = 105120 * delta
	var CO2delta = 0.0
	var O2delta = 0.0
	var H2Odelta = 0.0
	
	# grass
	O2delta = grassHealth * 3 * days
	
