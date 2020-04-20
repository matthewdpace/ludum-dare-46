extends Spatial



var startFish = 30

var localCO2 = 200
var localCO2Tank = 2000

var localO2 = 400
var localO2Tank = 5000

var bio = {
	'airCapacity': 3000,
	'h20Capacity': 7000
	
}
var fish = []

func _ready():
	var Fish = load('res://assets/misc/Fish.tscn')
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	
	bio['airCO2Level'] = 300.0
	bio['waterCO2Level'] = 350.0
	bio['waterO2Level'] = 11000.0
	bio['airO2Level'] = 20000.0
	bio['edibleFood'] = 200 
	bio['algaeHealth'] = 0.5
	bio['poop'] = 20
	bio['food'] = 42
	
	var k = 0
	var f
	while k < startFish:
		f = Fish.instance()
		f.translation = Vector3(rng.randf_range(-8,8),
							rng.randf_range(2,12),
							rng.randf_range(-8,8))
		#f.set_owner(self)
		f.set_name("Fish "+ str(k))
		add_child(f)
		fish.append(f)
		k += 1
		
	
	


func day():
	var ah = bio['algaeHealth']
	var ao = bio['airO2Level']
	var ac = bio['airCO2Level']
	var wc = bio['waterCO2Level']
	var wo = bio['waterO2Level']
	var ef = bio['edibleFood']
	var poop = bio['poop']
	var food = bio['food']
	
	var airO2Sum = 0
	var airCO2Sum = 0
	var waterCO2Sum = 0
	var waterO2Sum = 0
	var poopSum = 0
	var foodSum = 0
	
	#algae photosynthesis
	waterO2Sum = ah * .01 * wc
	waterCO2Sum = - waterO2Sum
	airO2Sum = ah * .01 * ac
	airCO2Sum = - airO2Sum # these will get more complicated in a minute
		
	# some bacteria or shrimp I dunno.  they don't poop but water going to
	# trees from aquarium will include bonus nutrients
	
	poopSum -= .003 * poop
	waterO2Sum += .001 * poop
	waterCO2Sum += .002 * poop
	foodSum -= .003 * food
	waterO2Sum += .001 * food
	waterCO2Sum += .002 * food
	
	
	print (str(fish))
	
	for f in fish:
		f.day(bio)
		print(f)
	
	
	#update them all
	bio['airCO2Level'] += airCO2Sum
	bio['waterCO2Level'] += waterCO2Sum 
	bio['waterO2Level'] += waterO2Sum
	bio['airO2Level'] += airO2Sum
	bio['edibleFood'] += foodSum
	bio['poop'] += poopSum
	
