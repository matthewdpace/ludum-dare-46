extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var spatC = 60
var spatF = 6

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
	if Input.is_action_pressed("ui_left") and not Input.is_action_pressed("ui_right"):
		self.rotate_y(-.03)
	if Input.is_action_pressed("ui_right") and not Input.is_action_pressed("ui_left"):
		self.rotate_y(.03)
	if Input.is_action_pressed("ui_up") and not Input.is_action_pressed("ui_down"):
		self.translate(Vector3(0,.3,0))
	if Input.is_action_pressed("ui_down") and not Input.is_action_pressed("ui_up"):
		self.translate(Vector3(0,-.3,0))

func processAnalog(sender,forces):
	
	var p = self.get_position_in_parent()
	var y = p.y
	if sender == "virtual":
		if forces.x != 0:
			self.rotate_y(forces.x * .035)
		if forces.y > 0.01:
			if y < spatC:
				self.translate(Vector3(0.0, .3 * forces.y, 0.0))
		if forces.y < -0.01:
			if y > spatF:
				self.translate(Vector3(0.0, .3 * forces.y, 0.0))
				
			
