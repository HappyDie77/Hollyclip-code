extends Node  

var money: int = 0
var inventory: Array = []  # Empty inventory (no cards at start)

func update_ui():
	print("Money:", money)  # Print current money
	print("Inventory:", inventory)  # Print current inventory
