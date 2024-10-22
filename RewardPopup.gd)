extends PopupPanel

onready var reward_text = $VBoxContainer/RewardText
onready var reward_icon = $VBoxContainer/RewardIcon
onready var close_button = $VBoxContainer/CloseButton

func _ready():
    close_button.connect("pressed", self, "queue_free")

func show_reward(xp):
    reward_text.text = "Congratulations!\nYou earned %d XP!" % xp
    popup_centered()
