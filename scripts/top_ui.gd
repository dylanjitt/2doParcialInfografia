extends TextureRect

@onready var score_label = $MarginContainer/HBoxContainer/score_label
@onready var counter_label = $MarginContainer/HBoxContainer/counter_label
@onready var goal_label = $MarginContainer/HBoxContainer/HBoxContainer/goal_label

var current_score = 0
var current_count = 0

func _on_grid_score_updated(new_score):
	print("ui: ", new_score)
	current_score=new_score
	score_label.text=str(current_score)


func _on_grid_moves_left(moves):
	print("Moves Left: ",str(moves)) # Replace with function body.
	current_count=moves
	counter_label.text=str(current_count)


func _on_grid__goal(goal):
	goal_label.text=str(goal)


func _on_game_time_left(time):
	print("UI time Left: ",str(time))
	counter_label.text=str(time)
