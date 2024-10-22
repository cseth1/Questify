extends HBoxContainer

signal task_completed(xp)

onready var task_name = $TaskName
onready var complete_button = $CompleteButton

func _ready():
    complete_button.connect("pressed", self, "_on_complete_button_pressed")

func _on_complete_button_pressed():
    emit_signal("task_completed", 10)  # 10 XP for completing a task
    queue_free()
