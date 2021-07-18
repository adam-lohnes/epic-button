extends Panel

var score = 0
var clickValue = 1
var upgradeCost = 5

onready var mainBtn = get_node("Main Button")
onready var upgradeBtn = get_node("Upgrade Button")
onready var scoreBox = get_node("Score")

func _process(delta):
	if score >= upgradeCost:
		upgradeBtn.disabled = false;
	else:
		upgradeBtn.disabled = true;

func _on_Button_pressed():
	score += clickValue
	update_Panel()

func _on_Upgrade_Button_pressed():
	if score >= upgradeCost:
		score -= upgradeCost
		clickValue *= 2
		upgradeCost *= 3
		update_Panel()

func update_Panel():
	scoreBox.text = score as String
	upgradeBtn.text = 'upgrade - ' + upgradeCost as String
	mainBtn.text = 'click - ' + clickValue as String
