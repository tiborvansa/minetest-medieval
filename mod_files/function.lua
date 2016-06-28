local register_roundglass = function(glass01_node)

	local name = glass01_node .. "_roundglass"
	local ndef = minetest.registered_nodes[glass01_node]
	local groups = ndef.groups
	groups["roundglass"] = 1
	-- inventory node, and pole-type wall start item
	minetest.register_node(name, {
		description = ndef.description .. " roundglass",
		connects_to = {glass01_node,"group:roundglass"},
		paramtype = "light",
		is_ground_content = false,
		tiles = ndef.tiles,
		walkable = true,
		groups = groups,
		sounds = ndef.sounds,
	})

	-- crafting recipe
	minetest.register_craft({
		output = name .. " 6",
		recipe = {
			{ '', '', '' },
			{ glass01_node, glass01_node, glass01_node},
			{ glass01_node, glass01_node, glass01_node},
		}
	})

end

register_roundglass("medieval_craft:basalt_cobble")
register_roundglass("medieval_craft:ors_cobble")
register_roundglass("medieval_craft:stone_brick")
register_roundglass("medieval_craft:slate_cobble")


