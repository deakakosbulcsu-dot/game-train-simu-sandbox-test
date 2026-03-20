local Train = {
	move = 0,
	speed = 0
}

function Train:_process(delta)
	self.progress_ratio = self.progress_ratio + self.move
	self.move = self.speed
	
	if Input:is_action_just_released("ui_up") then
		self.speed = self.speed + 0.01 * delta
	end
	if Input:is_action_just_released("ui_down") then
		self.speed = self.speed - 0.01 * delta
	end
	if Input:is_action_just_released("key_space") then
		self.speed = 0
		self.move = 0
	end
end

return Train
