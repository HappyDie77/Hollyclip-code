extends CanvasLayer

@onready var money: Label = $"Background/Panel cards3/Money"
@onready var card_slot_1_on: Panel = $"Background/Main shop/Card Slot 1 On"
@onready var card_slot_2_on: Panel = $"Background/Main shop/Card Slot 2 On"
@onready var card_slot_3_on: Panel = $"Background/Main shop/Card Slot 3 On"


var cardsA = {  
	"Fireball": 20
}
var shop_cards = {}

func _ready():
	generate_shop()
	update_money_display()

func generate_shop():
	shop_cards.clear()
	var card_keys = cardsA.keys()
	card_keys.shuffle()  # Randomize the order

	for i in range(3):  # Display 3 random cards per shop refresh
		var card_name = card_keys[i]
		var cost = cardsA[card_name]
		shop_cards[card_name] = cost

func buy_card(card_name):
	if card_name in shop_cards:
		var cost = shop_cards[card_name]
		if Global.play_money >= cost:
			Global.play_money -= cost
			update_money_display()
			Global.play_cards.append(card_name)  # Update inventory
		else:
			print("Not enough money!")

func update_money_display():
	money.text = "Money: $" + str(Global.play_money)

func _on_card_buy_1_pressed():
	pass # Replace with function body.


func _on_card_buy_2_pressed():
	pass # Replace with function body.


func _on_card_buy_3_pressed():
	pass # Replace with function body.
