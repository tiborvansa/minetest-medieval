GLASS_ALPHA = 60
GLASS_VISC = 1

-- Load other files --

dofile(minetest.get_modpath("medieval").."/mod_files/coloured_glass.lua")
dofile(minetest.get_modpath("medieval").."/mod_files/bars.lua") 
dofile(minetest.get_modpath("medieval").."/mod_files/medieval_tools.lua")
dofile(minetest.get_modpath("medieval").."/mod_files/plaster_node.lua")

 dofile(minetest.get_modpath("medieval").."/mod_files/nodes.lua")



	

-- craft -- 

minetest.register_craft({
	output = 'medieval:cauldron',
	recipe = {
		{'default:steel_ingot', '', 'default:steel_ingot'},
		{'default:steel_ingot', '', 'default:steel_ingot'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})



