/// @description 
switched = false;
currentRoom = rTitle;

#macro GRID_W 8
#macro GRID_H 8

checkRoom = function()
{
	if (currentRoom != room) {
		currentRoom = room;
		return true;
	}
	return false;
};

grid = [
	[ [] ],
	[ [] ]
];


createGrid = function()
{
	var i = 0; repeat(room_width div 32)
	{
		array_push(grid[0], i);
		i++
	}

	var i = 0; repeat(room_height div 32)
	{
		array_push(grid[1], i);
		i++
	}
}

state = new SnowState(room_get_name(rTitle));
state
	.history_enable()
	.set_history_max_size(15)
	
	.add(room_get_name(rTitle), {	// ----------TITLE
	enter: function() 
	{
	},
	step: function()
	{
	},
	leave: function() 
	{
	}
})
	
	.add(room_get_name(rWorld), {	// ----------WORLD
	enter: function() 
	{
		//randomize();
		//while (!place_meeting(x, y, objBlock) && !place_meeting(x, y, objPlayer) && instance_number(objBlock) < 50 ) 
		//{
		//	var bl = instance_create_layer(irandom(room_width div 32) * 32, 
		//									irandom(room_height div 32) * 32, "Collisions", objBlock);
	
		//	bl.image_xscale = irandom_range(1, 4);
		//	bl.image_yscale = irandom_range(1, 4);
		//
		audio_play_sound(aRain, 1, true);
	},
	step: function()
	{
	

	},
	leave: function() 
	{
	}
})













