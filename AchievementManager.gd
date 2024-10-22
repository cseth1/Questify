extends Node

var achievements = {
    "First Task": false,
    "Level 5": false,
    "100 XP": false
}

func check_achievements():
    if not achievements["First Task"] and PlayerProfile.tasks_completed >= 1:
        achievements["First Task"] = true
        unlock_achievement("First Task")

    if not achievements["Level 5"] and PlayerProfile.level >= 5:
        achievements["Level 5"] = true
        unlock_achievement("Level 5")

    if not achievements["100 XP"] and PlayerProfile.total_xp >= 100:
        achievements["100 XP"] = true
        unlock_achievement("100 XP")

func unlock_achievement(name):
    # Show achievement popup
    var popup = preload("res://AchievementPopup.tscn").instance()
    popup.set_achievement(name)
    get_tree().get_root().add_child(popup)
