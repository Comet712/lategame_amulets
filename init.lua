
--[[

The MIT License (MIT)

Copyright (c) 2024 by Comet712

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



### Textures

Textures are created by Comet712, and are licensed under CC-BY-SA 4.0. 
https://creativecommons.org/licenses/by-sa/4.0/


]]--




--Items

core.register_craftitem("lategame_amulets:type_II_artifact", {
description = "Type II Artifact",
inventory_image = "type_II_artifact.png",
})

core.register_craftitem("lategame_amulets:genesis_matter", {
description = "Genesis Matter",
inventory_image = "genesis_matter.png",
})


core.register_craftitem("lategame_amulets:steel_amulet", {
description = "Steel Amulet",
inventory_image = "steel_amulet.png",
})

core.register_craftitem("lategame_amulets:steel_amulet_2", {
description = "Super Steel Amulet",
inventory_image = "steel_amulet_2.png",
})

core.register_craftitem("lategame_amulets:steel_amulet_3", {
description = "Skyscraper Amulet",
inventory_image = "steel_amulet_3.png",
})

core.register_craftitem("lategame_amulets:coal_amulet_1", {
description = "Coal Amulet",
inventory_image = "coal_amulet.png",
})

core.register_craftitem("lategame_amulets:coal_amulet_2", {
description = "Super Coal Amulet",
inventory_image = "coal_amulet_2.png",
})




--Crafting


core.register_craft({
	output = "lategame_amulets:genesis_matter",
	recipe = {
		{"lategame_amulets:type_II_artifact", "lategame_amulets:type_II_artifact", "lategame_amulets:type_II_artifact"},
		{"lategame_amulets:type_II_artifact", "lategame_amulets:type_II_artifact", "lategame_amulets:type_II_artifact"},
		{"lategame_amulets:type_II_artifact", "lategame_amulets:type_II_artifact", "lategame_amulets:type_II_artifact"}
	}
})


core.register_craft({
	output = "lategame_amulets:steel_amulet",
	recipe = {
		{"lategame_amulets:genesis_matter", "lategame_amulets:genesis_matter", "lategame_amulets:genesis_matter"},
		{"lategame_amulets:genesis_matter", "lategame_amulets:genesis_matter", "lategame_amulets:genesis_matter"},
		{"lategame_amulets:genesis_matter", "lategame_amulets:genesis_matter", "lategame_amulets:genesis_matter"}
	}
})



core.register_craft({
    type = "shapeless",
    output = "lategame_amulets:steel_amulet_2",
    recipe = {
        "lategame_amulets:steel_amulet",
        "lategame_amulets:steel_amulet",
    },
})



core.register_craft({
    type = "shapeless",
    output = "lategame_amulets:steel_amulet_3",
    recipe = {
        "lategame_amulets:steel_amulet_2",
        "lategame_amulets:steel_amulet",
    },
})


core.register_craft({
    type = "shapeless",
    output = "lategame_amulets:steel_amulet_3",
    recipe = {
        "lategame_amulets:steel_amulet",
        "lategame_amulets:steel_amulet",
        "lategame_amulets:steel_amulet",
    },
})


core.register_craft({
	output = "lategame_amulets:coal_amulet_1",
	recipe = {
		{"default:coal_lump", "lategame_amulets:genesis_matter", "default:coal_lump"},
		{"lategame_amulets:genesis_matter", "lategame_amulets:steel_amulet", "lategame_amulets:genesis_matter"},
		{"default:coal_lump", "lategame_amulets:genesis_matter", "default:coal_lump"}
	}
})


core.register_craft({
    type = "shapeless",
    output = "lategame_amulets:coal_amulet_2",
    recipe = {
        "lategame_amulets:coal_amulet_1",
        "lategame_amulets:coal_amulet_1",
    },
})




--Ore


core.register_node("lategame_amulets:megastructure_ore", {
description = "Megastructure Ore",
tiles = {"lategame_amulets_megastructure_ore.png"},
is_ground_content=true,
groups = {cracky = 2},

drop = {
        max_items = 4,
        items = {
            {
                items = {'lategame_amulets:type_II_artifact'},
                rarity = 3,
            },
            {
                items = {'lategame_amulets:type_II_artifact'},
                rarity = 2,
            },
            {
                items = {'lategame_amulets:type_II_artifact'},
                rarity = 2,
            },
            {
                items = {'lategame_amulets:type_II_artifact'},
            }
        }
    },

sounds = default.node_sound_stone_defaults(),
})





core.register_ore({
ore_type = "scatter",
ore = "lategame_amulets:megastructure_ore",
wherein = "default:stone",
clust_scarcity = 14*14*14,
clust_num_ores = 1,
clust_size = 3,
y_min = -31000,
y_max = -4,
})






--Handle behavior for Amulets to improve item drops. If player has the amulet, increase the rewards

local default_handle_node_drops = minetest.handle_node_drops

function minetest.handle_node_drops(pos, drops, digger)

	if digger then
	
		local player_inventory = digger:get_inventory()

		local final_drops = {}
		
		--Go through each drop, get the item stack, and do checks on it to see if we change it in any way.

		for _, current_drop in ipairs(drops) do

			local stack = ItemStack(current_drop)
			
			local stack_size = stack:get_count()

			--If it is an affected item, improve it... if the digger has the amulet.
			
			if stack:get_name() == ("default:iron_lump") then
			
				--Handle iron to steel
				if player_inventory:contains_item("main", "lategame_amulets:steel_amulet_3") then
				
					local new_steel_stack = ItemStack("default:steelblock 9")
					table.insert_all(final_drops, {new_steel_stack})
				
				elseif player_inventory:contains_item("main", "lategame_amulets:steel_amulet_2") then
				
					local new_steel_stack = ItemStack("default:steelblock 4")
					table.insert_all(final_drops, {new_steel_stack})
				
				elseif player_inventory:contains_item("main", "lategame_amulets:steel_amulet") then
				
					local new_steel_stack = ItemStack("default:steelblock " .. stack_size)
					table.insert_all(final_drops, {new_steel_stack})
				
				else
				
					--Digger does not have an amulet, so pass back as-is
					table.insert_all(final_drops, {stack})
				
				end	
			elseif stack:get_name() == ("default:coal_lump") then	
			
				--Handle coal amulets
				if player_inventory:contains_item("main", "lategame_amulets:coal_amulet_2") then
				
					local new_steel_stack = ItemStack("default:coal_lump 9")
					table.insert_all(final_drops, {new_steel_stack})
					
				elseif player_inventory:contains_item("main", "lategame_amulets:coal_amulet_1") then
				
					local new_steel_stack = ItemStack("default:coal_lump 3")
					table.insert_all(final_drops, {new_steel_stack})
					
				else
					--Digger does not have an amulet, so pass back as-is
					table.insert_all(final_drops, {stack})
				end
			
			else
				--Not an affected item, so pass back as-is
				table.insert_all(final_drops, {stack})		
			end			
		end
		drops = final_drops	
	end
	--Let the original function resume.
	return default_handle_node_drops(pos, drops, digger)
end

