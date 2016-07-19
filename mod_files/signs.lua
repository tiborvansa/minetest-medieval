local itemsign= {}

local function remove_item(pos, node)
	local objs = minetest.get_objects_inside_radius(pos, 0.5)
	if not objs then return end

	for _, obj in pairs(objs) do
		if obj and obj:get_luaentity() and
				obj:get_luaentity().name == "medieval:sign_item" then
			obj:remove()
		end
	end
end

local facedir = {
	[0] = {x=0, y=0, z=1}, {x=1, y=0, z=0}, {x=0, y=0, z=-1}, {x=-1, y=0, z=0}
}

local function update_item(pos, node)
	remove_item(pos, node)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	local itemstring = inv:get_stack("item", 1):get_name()
	local posad = facedir[node.param2]
	if not posad or itemstring == "" then return end

	pos = vector.add(pos, vector.multiply(posad, 6.5/16))

	local obj = minetest.add_entity(pos, "medieval:sign_item")
	local yaw = math.pi*2 - node.param2 * math.pi/2
	obj:setyaw(yaw)
	obj:get_luaentity():init(itemstring)
end

local formspec = [[
	size[8,6]
	list[context;item;0,0;1,1;]
	label[0,-0.35;Item to show:]
	field[2,0.3;4.1,1;text;Text:;${text}]
	button_exit[6,0;2,1;submit;OK]

	list[current_player;main;0,1.85;8,1;]
	list[current_player;main;0,3.08;8,3;8]

	listring[context;item]
	listring[current_player;main]
]].. medieval.formbg

function itemsign.construct(pos)
	local meta = minetest.get_meta(pos)
	meta:set_string("formspec", formspec)
	local inv = meta:get_inventory()
	inv:set_size("item", 1)
end

function itemsign.after_place(pos, placer, itemstack)
	local meta = minetest.get_meta(pos)
	local name = placer:get_player_name()
	meta:set_string("owner", name)
	meta:set_string("infotext", "Item Sign")
end

function itemsign.on_receive_fields(pos, formname, fields, sender)
	local player_name = sender:get_player_name() or ""
	if minetest.is_protected(pos, player_name) then
		minetest.record_protection_violation(pos, player_name)
		return
	end
	if fields.text then
		local meta = minetest.get_meta(pos)

		minetest.log("action", string.format("%s wrote %q to itemsign at %s", player_name, fields.text, minetest.pos_to_string(pos)))
		meta:set_string("text", fields.text)
		meta:set_string("infotext", '"' .. fields.text .. '"')
	end
end

function itemsign.inventory_modified(pos, listname, index, stack, player)
	local node = minetest.get_node(pos)
	update_item(pos, node)
end

minetest.register_node("medieval:sign", {
	drawtype = "nodebox",
	description = " Trading sign",
	groups = {choppy=3, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
	--on_rotate = screwdriver.disallow,
	sunlight_propagates = true,
	paramtype = "light",
	paramtype2 = "facedir",
	inventory_image = "default_sign_wood.png",
	node_box = {
		 type = "fixed",
		 fixed = {-0.4375, -0.3125, 0.4375, 0.4375, 0.3125, 0.5},
	},
	tiles = {"default_sign_wall_wood.png"},
	inventory_image = "default_sign_wood.png",
	wield_image = "default_sign_wood.png",
	after_place_node = itemsign.after_place,
	on_construct = itemsign.construct,
	on_metadata_inventory_put = itemsign.inventory_modified,
	on_metadata_inventory_take = itemsign.inventory_modified,
	on_receive_fields = itemsign.on_receive_fields,
	on_punch = update_item,
	after_destruct = remove_item
})

minetest.register_entity("medieval:sign_item", {
	visual = "wielditem",
	visual_size = {x=0.33, y=0.33},
	collisionbox = {0},
	physical = false,
	textures = {"air"},
	-- Init the item with the texture
	init = function(self, item)
		self.data.item = item
		self.object:set_properties({textures={self.data.item}})
	end,
	-- Everytime the item gets loaded
	on_activate = function(self, staticdata)
		local pos = self.object:getpos()
		if minetest.get_node(pos).name ~= "medieval:sign" then
			self.object:remove()
		end

		self.data = minetest.deserialize(staticdata) or {}

		if self.data.item then
			self.object:set_properties({textures={self.data.item}})
		end
	end,
	-- Data, that shouldnt get loosed
	get_staticdata = function(self)
		return minetest.serialize(self.data)
	end
})
