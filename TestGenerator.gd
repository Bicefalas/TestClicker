class_name TestGenerator
extends Control
## Test generator recluting shinobis every seconds.


## Reference to the label displaying the current amount of shinobis recluted.
@export var label: Label

## Reference to the button starting the generation.
@export var button: Button

## Reference to the timer.
@export var timer: Timer

## Current amount of shinobis recluted.
var shinobis: int  = 0



## Initialize the label at launch.
func _ready():
	update_label_text()

## Reclute 1 shinobi.
func reclute_shinobis():
	shinobis += 1
	update_label_text()

## Start the timer and disable the button.
func begin_recluting_shinobis():
	timer.start()
	button.disabled = true
	update_label_text()

## Update the label displaying the amount of shinobis recluted.
func update_label_text():
	label.text = 'Shinobis: %s' %shinobis

## Triggered when the  begin recluting shinobis button is pressed.
func _on_button_pressed():
	begin_recluting_shinobis()

## Triggered when the timer timeouts.
func _on_timer_timeout():
	reclute_shinobis()
