extends VBoxContainer

signal boss_defeated(xp)

var health = 100
var damage_per_action = 20

func _on_action_performed():
    health -= damage_per_action
    if health <= 0:
        emit_signal("boss_defeated", 100)  # Higher XP reward
        queue_free()
