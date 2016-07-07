
local function register_box(name, description, boxTexture, nameCraft)

	
	minetest.register_node("medieval:box_" ..name, {
		description = description .. " Box",
		drawtype = "nodebox",
		tiles = { boxTexture .. '' ,'darkage_box.png', 'darkage_box.png',
		'darkage_box.png', 'darkage_box.png', 'darkage_box.png' 
		},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		sounds = default.node_sound_wood_defaults(),
		on_construct = function(pos)
			local meta = minetest.get_meta(pos)
			meta:set_string("infotext", "Box")
		end,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0.5, 0.5, 0.5, 0.375}, -- side f
				{-0.5, -0.5, -0.5, 0.5, 0.4, 0.5}, -- bottom
				{-0.5, -0.5, -0.5, -0.375, 0.5, 0.5}, -- side l
				{0.375, -0.5, -0.5, 0.5, 0.5, 0.5},  -- side r
				{-0.5, -0.5, -0.375, 0.5, 0.5, -0.5}, -- frount
				
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}, 
			},
		},
	})

	-- todo register craft reziep for round <name> box here
end

textures = {
	-- RGB Prime Colours -- 
	{name="potato", tiles="medieval_box_potato.png", description="Potato"}, 
	{name="carrot", tiles="medieval_box_carrot.png", description="Carrot"},
	{name="fish", tiles="medieval_box_fish.png", description="Fish"},
	{name="apple", tiles="medieval_box_apple.png", description="Apple"},
	{name="wheat", tiles="medieval_box_wheat.png", description="Wheat"},
	{name="mushroom", tiles="medieval_box_mushroom.png", description="Mushroom"}
	
}

for i,texture in ipairs(textures) do
	register_box(texture.name, texture.description, texture.tiles)
	-- register whatever here 
end
