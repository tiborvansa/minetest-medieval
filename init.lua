

local MODPATH = minetest.get_modpath("medieval")
medieval = {}

--formspec background
medieval.formbg = (default.gui_bg or "")..
	(default.gui_bg_img or "")..
	(default.gui_slots or "")


-- Load other files --

dofile(MODPATH.."/mod_files/coloured_glass.lua")
dofile(MODPATH.."/mod_files/bars_and_plaster.lua") 
dofile(MODPATH.."/mod_files/medieval_tools.lua")
dofile(MODPATH.."/mod_files/nodes.lua")
dofile(MODPATH.."/mod_files/signs.lua")
