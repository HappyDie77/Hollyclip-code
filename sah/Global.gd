extends Node

var pauasos = false

var play_cards: Array = []
var play_money: int = 0

func add_card(card_name):
	play_cards.append(card_name)
	print("Added", card_name, "to inventory:", play_cards)
