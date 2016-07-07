
local function register_plaster(name, description, plasterTexture, craft)


	minetest.register_node("medieval:" ..name.. "_with_plaster", {
		description = description .. " With Plaster",
		tiles = { plasterTexture .. "^medieval_plaster_D.png", plasterTexture .. "^medieval_plaster_B.png", plasterTexture .. "^medieval_plaster_C.png", plasterTexture .. "^medieval_plaster_A.png", plasterTexture .. "", "medieval_plaster.png"},
		is_ground_content = true,
  		paramtype2 = "facedir",
		groups = {cracky=3},groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craft({
		output = "medieval:" ..name.. "_with_plaster 2",
		recipe = {
			{craft ,"darkage:chalk_powder"},
			{craft ,"darkage:chalk_powder"},
		}
	})

end

local function register_plaster_corner (name, description, plasterTexture, craft)
		minetest.register_node("medieval:" ..name.. "_corner_plaster", {
		description = description .. " With Plaster",
		tiles = { plasterTexture .. "^medieval_plaster_D.png^medieval_plaster_C.png", plasterTexture .. "^medieval_plaster_B.png^medieval_plaster_C.png", plasterTexture .. "^medieval_plaster_C.png", "medieval_plaster.png", plasterTexture .. "^medieval_plaster_A.png", "medieval_plaster.png"},
		is_ground_content = true,
  		paramtype2 = "facedir",
		groups = {cracky=3},groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craft({
		output = "medieval:" ..name.. "_corner_plaster 2",
		recipe = {
			{craft ,"darkage:chalk_powder"},
			{craft ,"darkage:chalk_powder"},
			{"darkage:chalk_powder" ,"darkage:chalk_powder"},
		}
	})



	-- todo register craft reziep for round <name> box here
end

textures = {
	-- RGB Prime Colours --
	{name="wood", tiles="default_wood.png", description="Wood", craft="default:wood"},
	{name="aspenWood", tiles="default_aspen_wood.png", description="Aspen Wood", craft="default:aspen_wood"},
		{name="jungleWood", tiles="default_junglewood.png", description="Jungle Wood", craft="default:junglewood"},
	{name="pineWood", tiles="default_pine_wood.png", description="Pine_Wood", craft="default:pine_wood"},

	--[[{name="stone", tiles="default_stone.png", description="Stone"},
	{name="desertStone", tiles="default_desert_stone.png", description="Desert Stone"},
	{name="sandStone", tiles="default_sandstone.png", description="Sand Stone"},]]--

	{name="mossyCobble", tiles="default_mossycobble.png", description="Mossy Cobble", craft="default:mossycobble"},
	{name="desertCobble", tiles="default_desert_cobble.png", description="Desert Cobble", craft="default:desert_cobble"},


	{name="brick", tiles="default_brick.png", description="Brick", craft="default:brick"},
	{name="desertBrick", tiles="default_desert_stone_brick.png", description="Desert Brick", craft="default:desert_stone_brick"},
	{name="sandBrick", tiles="default_sandstone_brick.png", description="Sandstone Brick", craft="default:sandstone_brick"},
	{name="stoneBrick", tiles="default_stone_brick.png", description="Stone Brick,", craft="default:stone_brick" },

	{name="DSBrick", tiles="darkage_stone_brick.png", description="Darkage Stone Brick,", craft="darkage:stone_brick"},
	{name="orsCobble", tiles="darkage_ors_cobble.png", description="Old Red Sandstone Cobble,", craft="darkage:ors_cobble"},
	{name="slateCobble", tiles="darkage_slate_cobble.png", description="Slate Cobble,", craft="darkage:slate_cobble"},
	{name="gneissCobble", tiles="darkage_gneiss_cobble.png", description="Gneiss Cobble,", craft="darkage:gneiss_cobble"},
	{name="basaltCobble", tiles="darkage_basalt_cobble.png", description="Basalt Cobble", craft="darkage:basalt_cobble"}

}

for i,texture in ipairs(textures) do
	register_plaster(texture.name, texture.description, texture.tiles, texture.craft)
	register_plaster_corner(texture.name, texture.description, texture.tiles, texture.craft)
	-- register whatever here
end
