minetest.register_node("medieval:glass_square", {
		description = "Square Glass",
		drawtype = "glasslike",
		tiles = { "medieval_square_glass.png" },
		paramtype = "light",
		use_texture_alpha = true,
		sunlight_propagates = true,
		sounds = default.node_sound_glass_defaults(),
		groups = {cracky=3,oddly_breakable_by_hand=3},
	}) 

minetest.register_node("medieval:glass_round", {
		description = "Round Glass",
		drawtype = "glasslike",
		tiles = { "medieval_round_glass.png" },
		paramtype = "light",
		use_texture_alpha = true,
		sunlight_propagates = true,
		sounds = default.node_sound_glass_defaults(),
		groups = {cracky=3,oddly_breakable_by_hand=3},
	}) 



local function register_square(name, description, colorCode, dye)
	
	minetest.register_node("medieval:glass_square_"..name, {
		description = "Square ".. description .." Glass",
		drawtype = "glasslike",
		tiles = { "medieval_square_glass_colour.png^[colorize:#" ..colorCode.. "^medieval_square_glass.png" },
		paramtype = "light",
		use_texture_alpha = true,
		sunlight_propagates = true,
		sounds = default.node_sound_glass_defaults(),
		groups = {cracky=3,oddly_breakable_by_hand=3},
	}) 
	-- todo register craft reziep for round <name> glass here
	
	minetest.register_craft({
		type = "shapeless",
		output = "medieval:glass_square_"..name ,
		recipe =  {"medieval:glass_square","dye:"..dye,},
	})
	
	minetest.register_craft({
		type = "cooking",
		output = "medieval:glass_square",
		recipe = "medieval:glass_square_"..name,
		cooktime = 10,
	})
	

end

local function register_round(name, description, colorCode, dye)
	
	minetest.register_node("medieval:glass_round_"..name, {
		description = "Round ".. description .." Glass",
		drawtype = "glasslike",
		tiles = { "medieval_round_glass_colour.png^[colorize:#" ..colorCode.. "^medieval_round_glass.png" },
		paramtype = "light",
		use_texture_alpha = true,
		sunlight_propagates = true,
		sounds = default.node_sound_glass_defaults(),
		groups = {cracky=3,oddly_breakable_by_hand=3},
	}) 
	-- todo register craft reziep for round <name> glass here
	
	minetest.register_craft({
		type = "shapeless",
		output = "medieval:glass_round_"..name ,
		recipe = {"medieval:glass_round","dye:"..dye,},
	})
	
		
	minetest.register_craft({
		type = "cooking",
		output = "medieval:glass_round",
		recipe = "medieval:glass_round_"..name,
		cooktime = 10,
	})
	
	
end

local function register_dimond(name, description, colorCode, dye)
	
	minetest.register_node("medieval:glass_dimond_"..name, {
		description = "Dimond "..description.." Glass",
		drawtype = "glasslike",
		tiles = { "medieval_dimond_glass_colour.png^[colorize:#" ..colorCode.. "^medieval_dimond_glass.png" },
		paramtype = "light",
		use_texture_alpha = true,
		sunlight_propagates = true,
		sounds = default.node_sound_glass_defaults(),
		groups = {cracky=3,oddly_breakable_by_hand=3},
	}) 
	-- todo register craft reziep for dimond <name> glass here 
	
	minetest.register_craft({
		type = "shapeless",	
		output = "medieval:glass_dimond_"..name ,
		recipe = {"darkage:glass","dye:"..dye,},
		
	})
	
		minetest.register_craft({
		type = "cooking",
		output = "darkage:glass",
		recipe = "medieval:glass_dimond_"..name,
		cooktime = 10,
	})
	
	minetest.register_alias("medieval_craft:medieval_glass_"..name , "medieval:glass_dimond_"..name)
	
end

colours = {
	-- RGB Prime Colours -- 
	{name="red", code="FF000099", description="Red", dye="red"}, 
	{name="green", code="00FF0099", description="Green", dye="green"},
	{name="blue", code="0000FF99", description="Blue", dye="blue"},
	-- RGB Secondary Colour -- 
	{name="yellow", code="FFFF0099", description="Yellow", dye="yellow"},
	{name="magenta", code="FF00FF99", description="Magenta", dye="magenta"},
	{name="cyan", code="00FFFF99", description="Cyan", dye="cyan"},
	-- RGB Other Colours --
	{name="orange", code="E5940099", description="Orange", dye="orange"},
	{name="darkgreen", code="004C0099", description="Dark Green", dye="dark_green"},
	{name="purple", code="80008099", description="Purple", dye="purple"},
	{name="pink", code="FFC0CB99", description="Pink", dye="pink"},
	{name="brown", code="732c0b99", description="Brown", dye="brown"},
	-- MonoChrome --
	{name="white", code="FFFFFF99", description="White", dye="white"},
	{name="grey", code="80808099", description="Grey", dye="grey"},
	{name="darkgrey", code="14141499", description="Dark Grey", dye="dark_grey"}
}

for i,colour in ipairs(colours) do
	register_round(colour.name, colour.description, colour.code, colour.dye)
	register_square(colour.name, colour.description, colour.code, colour.dye)
	register_dimond(colour.name, colour.description, colour.code, colour.dye)
	-- register whatever here 
end