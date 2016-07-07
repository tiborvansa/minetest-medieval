
local function register_vertical_bar(name, description, barTexture, craft)


 minetest.register_node("medieval:" ..name.. "_vertical_bar", {
	 description = description .. " Vertical bar",
	 tiles = { barTexture .. "^medieval_bars.png"},
	 is_ground_content = true,
	 paramtype2 = "facedir",
	 groups = {cracky=3},
	 sounds = default.node_sound_stone_defaults(),
 })

 minetest.register_craft({
	 output = "medieval:" ..name.. "_vertical_bar 4",
	 recipe = {
 		{'default:stick', craft , 'default:stick'},
 		{'default:stick', craft , 'default:stick'},
 		{'default:stick', craft , 'default:stick'},
 	}
 })

end

local function register_cross_bar(name, description, barTexture, craft)


 minetest.register_node("medieval:" ..name.. "_cross_bar", {
	 description = description .. " Cross bar",
	 tiles = { barTexture .. "^medieval_bar_left.png^medieval_bar_right.png"},
	 is_ground_content = true,
	 paramtype2 = "facedir",
	 groups = {cracky=3},
	 sounds = default.node_sound_stone_defaults(),
 })

 minetest.register_craft({
	 output = "medieval:" ..name.. "_cross_bar 5",
	 recipe = {
 		{'default:stick', craft, 'default:stick'},
 		{craft, 'default:stick', craft},
 		{'default:stick', craft, 'default:stick'},
 	}
 })

end

local function register_slope_bar(name, description, barTexture, craft)


 minetest.register_node("medieval:" ..name.. "_slope_bar", {
	 description = description .. " Slope bar",
	 tiles = { barTexture .. "^medieval_bar_left.png"},
	 is_ground_content = true,
	 	paramtype2 = "facedir",
	 	groups = {cracky=3},
	 	sounds = default.node_sound_stone_defaults(),
 })

 minetest.register_craft({
	 output = "medieval:" ..name.. "_slope_bar 6",
	 recipe = {
			{craft, craft, 'default:stick'},
			{craft, 'default:stick', craft},
			{'default:stick', craft, craft},
		}
 })

end

local function register_arrow_bar(name, description, barTexture, craft)


 minetest.register_node("medieval:" ..name.. "_arrow_bar", {
	 description = description .. "Arrow bar",
	 tiles = { barTexture .."^medieval_arrow_left.png" , barTexture .."^medieval_arrow_right.png" ,
 		barTexture .."^medieval_arrow_right.png" , barTexture .."^medieval_arrow_left.png" ,
 		barTexture .."^medieval_arrow_up.png" , barTexture .."^medieval_arrow_down.png"},
	 is_ground_content = true,
	 	paramtype2 = "facedir",
	 	groups = {cracky=3},
	 	sounds = default.node_sound_stone_defaults(),
 })

 minetest.register_craft({
	 output = "medieval:" ..name.. "_arrow_bar 5",
	recipe = {
		 {craft, 'default:stick', craft},
		 {'default:stick', craft , 'default:stick'},
		 {'default:stick', craft, 'default:stick'},
	 }
 })

end




 -- todo register craft reziep for round <name> box here


textures = {
 -- RGB Prime Colours --
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

	register_vertical_bar(texture.name, texture.description, texture.tiles, texture.craft)
	register_cross_bar(texture.name, texture.description, texture.tiles, texture.craft)
	register_slope_bar(texture.name, texture.description, texture.tiles, texture.craft)
	register_arrow_bar(texture.name, texture.description, texture.tiles, texture.craft)

end

-- misk --

minetest.register_node("medieval:plaster_rose_bar", {
	description = "Plaster Rose Bar ",
	tiles = {"medieval_plaster.png^medieval_rose_bar.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
