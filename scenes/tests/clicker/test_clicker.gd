class_name TestClicker
extends Control
## A clicker test for recclute shinobis.

## Reference to the label displaying the current amount of shinobis recluted.
@export var label: Label

## Current amount of shinobis recluted.
var shinobis: int = 0

## Initialize the label at launch.
func _ready():
	update_label_text()

## Reclute 1 shinobi.
func reclute_shinobis():
	shinobis += 1
	update_label_text()

## Update the label displaying the amount of shinobis recluted.
func update_label_text():
	label.text = 'Shinobis: %s' %shinobis

## Triggered when the reclute shinobis button is pressed.
func _on_button_pressed():
	reclute_shinobis()
