# Task.gd
extends HBoxContainer

signal task_completed(xp)

onready var task_name = $TaskName
onready var complete_button = $CompleteButton
onready var difficulty_dropdown = $DifficultyDropdown

var difficulty = "Easy"  # Default difficulty

func _ready():
    complete_button.connect("pressed", self, "_on_complete_button_pressed")
    difficulty_dropdown.connect("item_selected", self, "_on_difficulty_selected")

func _on_complete_button_pressed():
    var xp_reward = get_xp_reward()
    emit_signal("task_completed", xp_reward)
    queue_free()

func _on_difficulty_selected(index):
    difficulty = difficulty_dropdown.get_item_text(index)

func get_xp_reward():
    match difficulty:
        "Easy":
            return 10
        "Medium":
            return 20
        "Hard":
            return 30
        _:
            return 10
