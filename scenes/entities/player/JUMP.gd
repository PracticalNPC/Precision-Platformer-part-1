extends "state.gd"

func update(delta):
	Player.gravity(delta)
	player_movement()
	if Player.velocity.y >0:
		return STATES.FALL
	if Player.dash_input and Player.can_dash:
		return STATES.DASH
	return null
func enter_state():
	Player.velocity.y = Player.JUMP_VELOCITY
