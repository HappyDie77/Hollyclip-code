extends CanvasLayer

@onready var money = $"Background/Player money/money"

const CARD_ACTION_1 = preload("res://Lucas/Scenes/Cards interactive/Action/Card Action 1.tscn")
const CARD_ACTION_2 = preload("res://Lucas/Scenes/Cards interactive/Action/Card Action 2.tscn")
const CARD_ACTION_3 = preload("res://Lucas/Scenes/Cards interactive/Action/Card Action 3.tscn")
const CARD_ACTION_5 = preload("res://Lucas/Scenes/Cards interactive/Action/Card Action 5.tscn")
const CARD_ADVERTISMENT_1 = preload("res://Lucas/Scenes/Cards interactive/Advertisment/Card Advertisment 1.tscn")
const CARD_ROMANCE_1 = preload("res://Lucas/Scenes/Cards interactive/Romance/Card Romance 1.tscn")
const CARD_ROMANCE_2 = preload("res://Lucas/Scenes/Cards interactive/Romance/Card Romance 2.tscn")
const CARD_ROMANCE_3 = preload("res://Lucas/Scenes/Cards interactive/Romance/Card Romance 3.tscn")
const CARD_ROMANCE_5 = preload("res://Lucas/Scenes/Cards interactive/Romance/Card Romance 5.tscn")
const CARD_SCI_FI_1 = preload("res://Lucas/Scenes/Cards interactive/Sci-Fi/Card Sci-Fi 1.tscn")
const CARD_SCI_FI_2 = preload("res://Lucas/Scenes/Cards interactive/Sci-Fi/Card Sci-Fi 2.tscn")
const CARD_SCI_FI_3 = preload("res://Lucas/Scenes/Cards interactive/Sci-Fi/Card Sci-Fi 3.tscn")
const CARD_SCI_FI_5 = preload("res://Lucas/Scenes/Cards interactive/Sci-Fi/Card Sci-Fi 5.tscn")

var cardsA = {  
	
}
var shop_cards = {
	
}

func _ready():
	update_money_display()

func update_money_display():
	money.text = "$" + str(Global.play_money)
