local function register_square(name, description, colorCode)
	
	minetest.register_node("medieval:glass_square_"..name, {
		description = "Square ".. description .." Glass",
		drawtype = "glasslike",
		tiles = { "medieval_square_glass_colour.png^[colorize:#" ..colorCode.. "99^medieval_square_glass.png" },
		paramtype = "light",
		use_texture_alpha = true,
		sunlight_propagates = true,
		sounds = default.node_sound_glass_defaults(),
		groups = {cracky=3,oddly_breakable_by_hand=3},
	}) 
	-- todo register craft reziep for round <name> glass here
end

local function register_round(name, description, colorCode)
	
	minetest.register_node("medieval:glass_round_"..name, {
		description = "Round ".. description .." Glass",
		drawtype = "glasslike",
		tiles = { "medieval_round_glass_colour.png^[colorize:#" ..colorCode.. "99^medieval_round_glass.png" },
		paramtype = "light",
		use_texture_alpha = true,
		sunlight_propagates = true,
		sounds = default.node_sound_glass_defaults(),
		groups = {cracky=3,oddly_breakable_by_hand=3},
	}) 
	-- todo register craft reziep for round <name> glass here
end

local function register_dimond(name, description, colorCode)
	
	minetest.register_node("medieval:glass_dimond_"..name, {
		description = "Dimond "..description.." Glass",
		drawtype = "glasslike",
		tiles = { "medieval_dimond_glass_colour.png^[colorize:#" ..colorCode.. "99^medieval_dimond_glass.png" },
		paramtype = "light",
		use_texture_alpha = true,
		sunlight_propagates = true,
		sounds = default.node_sound_glass_defaults(),
		groups = {cracky=3,oddly_breakable_by_hand=3},
	}) 
	-- todo register craft reziep for dimond <name> glass here
end

colours = {
	-- RGB Prime Colours -- 
	{name="red", code="FF0000", description="Red"}, 
	{name="green", code="00FF00", description="Green"},
	{name="blue", code="0000FF", description="Blue"},
	-- RGB Secondary Colour -- 
	{name="yellow", code="FFFF00", description="Yellow"},
	{name="magenta", code="FF00FF", description="Magenta"},
	{name="cyan", code="00FFFF", description="Cyan"},
	-- RGB Other Colours --
	{name="orange", code="E59400", description="Orange"},
	{name="darkGreen", code="004C00", description="Dark Green"},
	{name="purple", code="800080", description="Purple"},
	{name="pink", code="FFC0CB", description="Pink"},
	{name="brown", code="732c0b", description="Brown"},
	-- MonoChrome --
	{name="white", code="FFFFFF", description="White"},
	{name="grey", code="808080", description="Grey"},
	{name="darkGrey", code="141414", description="Dark Grey"}
}

for i,colour in ipairs(colours) do
	register_round(colour.name, colour.description, colour.code)
	register_square(colour.name, colour.description, colour.code)
	register_dimond(colour.name, colour.description, colour.code)
	-- register whatever here 
end