# PlayerProfile.gd
extends Node

var level = 1
var xp = 0
var total_xp = 0
var tasks_completed = 0
var xp_to_next_level = 100

func add_xp(amount):
    xp += amount
    total_xp += amount
    AchievementManager.check_achievements()
    if xp >= xp_to_next_level:
        level_up()

func level_up():
    level += 1
    xp -= xp_to_next_level
    xp_to_next_level = int(xp_to_next_level * 1.5)
    AchievementManager.check_achievements()
