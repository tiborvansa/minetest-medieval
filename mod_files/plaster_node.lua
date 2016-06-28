
local function register_plaster(name, description, plasterTexture)

	
	minetest.register_node("medieval:" ..name.. "_with_plaster", {
		description = description .. " With Plaster",
		tiles = { plasterTexture .. "^medieval_plaster_D.png", plasterTexture .. "^medieval_plaster_B.png", plasterTexture .. "^medieval_plaster_C.png", plasterTexture .. "^medieval_plaster_A.png", plasterTexture .. "", "medieval_plaster.png"},
		is_ground_content = true,
  		paramtype2 = "facedir",
		groups = {cracky=3},groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
		sounds = default.node_sound_stone_defaults(),
	})

	-- todo register craft reziep for round <name> box here
end

textures = {
	-- RGB Prime Colours -- 
	{name="wood", tiles="default_wood.png", description="Wood"},
	{name="aspenWood", tiles="default_aspen_wood.png", description="Aspen Wood"},
	{name="acaciaWood", tiles="default_acacia_wood.png", description="Acaia Wood"},
	{name="jungleWood", tiles="default_junglewood.png", description="Jungle Wood"},
	{name="pineWood", tiles="default_pine_wood.png", description="Pine_Wood"},
	
	--[[{name="stone", tiles="default_stone.png", description="Stone"},
	{name="desertStone", tiles="default_desert_stone.png", description="Desert Stone"},
	{name="sandStone", tiles="default_sandstone.png", description="Sand Stone"},]]--
	
	{name="mossyCobble", tiles="default_mossycobble.png", description="Mossy Cobble"},
	{name="desertCobble", tiles="default_desert_cobble.png", description="Desert Cobble"},
	
	
	{name="brick", tiles="default_brick.png", description="Brick"},
	{name="desertBrick", tiles="default_desert_stone_brick.png", description="Desert Brick"},
	{name="sandBrick", tiles="default_sandstone_brick.png", description="Sandstone Brick"},
	{name="stoneBrick", tiles="default_stone_brick.png", description="Stone Brick," },
	
	{name="DSBrick", tiles="darkage_stone_brick.png", description="Darkage Stone Brick,"},
	{name="orsCobble", tiles="darkage_ors_cobble.png", description="Old Red Sandstone Cobble,"},
	{name="slateCobble", tiles="darkage_slate_cobble.png", description="Slate Cobble,"},
	{name="gneissCobble", tiles="darkage_gneiss_cobble.png", description="Gneiss Cobble,"},
	{name="basaltCobble", tiles="darkage_basalt_cobble.png", description="Basalt Cobble"}
	
}

for i,texture in ipairs(textures) do
	register_plaster(texture.name, texture.description, texture.tiles)
	-- register whatever here 
end
