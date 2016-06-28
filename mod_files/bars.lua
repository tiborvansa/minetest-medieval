
-- plaster blocks --

minetest.register_node("medieval:plaster_bar", {
	description = "Plaster Bar ",
	tiles = {"medieval_plaster.png^medieval_bars.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("medieval:plaster_bar_arrow", {
	description = "Plaster Arrow",
	tiles = {"medieval_plaster.png^medieval_arrow_left.png" , "medieval_plaster.png^medieval_arrow_right.png" , 
		"medieval_plaster.png^medieval_arrow_right.png" , "medieval_plaster.png^medieval_arrow_left.png" , 
		"medieval_plaster.png^medieval_arrow_up.png" , "medieval_plaster.png^medieval_arrow_down.png"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("medieval:plaster_slope_bar", {
	description = "Plaster Slope Bar",
	tiles = {"medieval_plaster.png^medieval_bar_left.png" , "medieval_plaster.png^medieval_bar_right.png" , 
		"medieval_plaster.png^medieval_bar_left.png" , "medieval_plaster.png^medieval_bar_right.png" , 
		"medieval_plaster.png^medieval_bar_left.png" , "medieval_plaster.png^medieval_bar_right.png"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("medieval:plaster_rose_bar", {
	description = "Plaster Rose Bar ",
	tiles = {"medieval_plaster.png^medieval_rose_bar.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

-- wood blocks

minetest.register_node("medieval:wood_arrow_bar", {
	description = "Wooden Arrow",
	tiles = {"default_wood.png^medieval_arrow_left.png" , "default_wood.png^medieval_arrow_right.png" ,
		"default_wood.png^medieval_arrow_right.png" , "default_wood.png^medieval_arrow_left.png" ,
		"default_wood.png^medieval_arrow_up.png" , "default_wood.png^medieval_arrow_down.png"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {cracky=3, wood=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("medieval:wood_slope_bar", {
	description = "Wooden Slope Bar",
	tiles = {"default_wood.png^medieval_bar_left.png" , "default_wood.png^medieval_bar_right.png" , "default_wood.png^medieval_bar_left.png" ,
		"default_wood.png^medieval_bar_right.png" , "default_wood.png^medieval_bar_left.png" , "default_wood.png^medieval_bar_right.png"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {cracky=3, wood=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("medieval:wood_bars", {
	description = "Wooden Bars",
	tiles = {"default_wood.png^medieval_bars.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

-- brick --

minetest.register_node("medieval:brick_arrow_bar", {
	description = "Wooden Arrow",
	tiles = {"default_brick.png^medieval_arrow_left.png" , "default_brick.png^medieval_arrow_right.png" ,
		"default_brick.png^medieval_arrow_right.png" , "default_brick.png^medieval_arrow_left.png" ,
		"default_brick.png^medieval_arrow_up.png" , "default_brick.png^medieval_arrow_down.png"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {cracky=3, wood=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("medieval:brick_slope_bar", {
	description = "Brick Slope Bar",
	tiles = {"default_brick.png^medieval_bar_left.png" , "default_brick.png^medieval_bar_right.png" , "default_brick.png^medieval_bar_left.png" ,
		"default_brick.png^medieval_bar_right.png" , "default_brick.png^medieval_bar_left.png" , "default_brick.png^medieval_bar_right.png"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {cracky=3, wood=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("medieval:brick_x_bar", {
	description = "Brick X Bar",
	tiles = {"default_brick.png^medieval_bar_left.png^medieval_bar_right.png"},
	is_ground_content = true,
	paramtype2 = "facedir",
	groups = {cracky=3, wood=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("medieval:brick_bars", {
	description = "Brick Bars",
	tiles = {"default_brick.png^medieval_bars.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})
-- crafts --

minetest.register_craft({
	output = 'medieval:plaster_arrow 4',
	recipe = {
		{'darkage:chalk_powder', 'default:stick', 'darkage:chalk_powder'},
		{'default:stick', 'darkage:chalk_powder', 'default:stick'},
		{'default:stick', 'darkage:chalk_powder', 'default:stick'},
	}
})

minetest.register_craft({
	output = 'medieval:plaster_bar 4',
	recipe = {
		{'darkage:chalk_powder', 'darkage:chalk_powder', 'default:stick'},
		{'darkage:chalk_powder', 'default:stick', 'darkage:chalk_powder'},
		{'default:stick', 'darkage:chalk_powder', 'darkage:chalk_powder'},
	}
})

minetest.register_craft({
	output = 'medieval:plaster_bars 4',
	recipe = {
		{'default:stick', 'darkage:chalk_powder', 'default:stick'},
		{'default:stick', 'darkage:chalk_powder', 'default:stick'},
		{'default:stick', 'darkage:chalk_powder', 'default:stick'},
	}
})

minetest.register_craft({
	output = 'medieval:wood_bars 4',
	recipe = {
		{'default:stick', 'default:wood', 'default:stick'},
		{'default:stick', 'default:wood', 'default:stick'},
		{'default:stick', 'default:wood', 'default:stick'},
	}
})

minetest.register_craft({
	output = 'medieval:wood_bar 6',
	recipe = {
		{'default:wood', 'default:wood', 'default:stick'},
		{'default:wood', 'default:stick', 'default:wood'},
		{'default:stick', 'default:wood', 'default:wood'},
	}
})

minetest.register_craft({
	output = 'medieval:wood_arrow 4',
	recipe = {
		{'default:wood', 'default:stick', 'default:wood'},
		{'default:stick', 'default:wood', 'default:stick'},
		{'default:stick', 'default:wood', 'default:stick'},
	}
})



