extends Control

@onready var credits = preload("res://scene/credits/Credits.tscn")
@onready var audio := $AudioStreamPlayer

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	audio.volume_db = linear_to_db(LevelManager.volume_multiplier)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("Back"):
		get_tree().quit()

func _on_play_pressed():
	get_tree().change_scene_to_packed(LevelManager.get_current_level())
	
func _on_credits_pressed():
	get_tree().change_scene_to_packed(credits)

func _on_quit_pressed():
	get_tree().quit()
