extends Node3D

# @export_subgroup("Properties")
@export var level := "res://scenes/Level3.tscn"
# const Player:= preload("player.gd")

# Called when the node enters the scene tree for the first time.
func _ready():
	# prints("Flag created")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_flag_entered(body):
	if body is Player:
		prints("Flag touched")
		Audio.play("res://sounds/coin.ogg") # Play sound
		get_tree().change_scene_to_file.bind(level).call_deferred()
