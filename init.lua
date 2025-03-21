
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

core.register_craftitem("lategame_amulets:sky_artifact", {
description = "Sky Artifact",
inventory_image = "Type2_Sky.png",
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

core.register_craftitem("lategame_amulets:steel_amulet_4", {
description = "Skyscraper Amulet Tier 4",
inventory_image = "steel_amulet_3.png",
})

core.register_craftitem("lategame_amulets:steel_amulet_5", {
description = "Skyscraper Amulet Tier 5",
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
    output = "lategame_amulets:steel_amulet_4",
    recipe = {
    	"lategame_amulets:steel_amulet",
        "lategame_amulets:steel_amulet_3",
        "lategame_amulets:steel_amulet",
    },
})


core.register_craft({
    type = "shapeless",
    output = "lategame_amulets:steel_amulet_5",
    recipe = {
    	"lategame_amulets:steel_amulet",
        "lategame_amulets:steel_amulet_4",
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

})





core.register_ore({
ore_type = "scatter",
ore = "lategame_amulets:megastructure_ore",
wherein = "default:stone",
clust_scarcity = 13*13*13,
clust_num_ores = 1,
clust_size = 3,
y_min = -31000,
y_max = -4,
})




core.register_node("lategame_amulets:sky_ore", {
description = "Sky Ore",
tiles = {"lategame_amulets_megastructure_ore.png"},
is_ground_content=false,
groups = {cracky = 2},

drop = {
        max_items = 4,
        items = {
            {
                items = {'lategame_amulets:sky_artifact'},
                rarity = 3,
            },
            {
                items = {'lategame_amulets:sky_artifact'},
                rarity = 2,
            },
            {
                items = {'lategame_amulets:sky_artifact'},
                rarity = 2,
            },
            {
                items = {'lategame_amulets:sky_artifact','lategame_amulets:type_II_artifact'},
            }
        }
    },

})


core.register_node("lategame_amulets:sky_iron", {
description = "Sky Iron",
tiles = {"sky_iron.png"},
is_ground_content=true,
groups = {cracky = 2},

drop = {
        items = {
            {
                items = {'default:iron_lump'},
            },
            {
                items = {'lategame_amulets:type_II_artifact'},
                rarity = 8,
            },
            {
            	items = {'wool:white'},
                rarity = 4,
            }
        }
    },

})


core.register_node("lategame_amulets:rail_ore", {
description = "Rail Ore (Sky)",
tiles = {"rail_ore.png"},
is_ground_content=true,
groups = {cracky = 2},

drop = {
        items = {
            {
                items = {'carts:powerrail 49','default:coal_lump 20','lategame_amulets:type_II_artifact 5'},
            },
        }
    },

})



core.register_node("lategame_amulets:boom_ore", {
description = "Boom Ore (Sky)",
tiles = {"boom_ore.png"},
is_ground_content=true,
groups = {cracky = 2},

drop = {
        items = {
            {
                items = {'tnt:tnt 20','default:diamond 15','lategame_amulets:type_II_artifact 18'},
            },
        }
    },

})




core.register_ore({
ore_type = "scatter",
ore = "lategame_amulets:sky_ore",
wherein = "group:cracky",
clust_scarcity = 8*8*8,
clust_num_ores = 1,
clust_size = 3,
y_min = 100,
y_max = 31000,
})



core.register_ore({
ore_type = "scatter",
ore = "lategame_amulets:sky_iron",
wherein = "group:cracky",
clust_scarcity = 4*4*4,
clust_num_ores = 1,
clust_size = 4,
y_min = 100,
y_max = 31000,
})



core.register_ore({
ore_type = "scatter",
ore = "lategame_amulets:rail_ore",
wherein = "group:cracky",
clust_scarcity = 12*12*12,
clust_num_ores = 1,
clust_size = 5,
y_min = 100,
y_max = 31000,
})



core.register_ore({
ore_type = "scatter",
ore = "lategame_amulets:boom_ore",
wherein = "group:cracky",
clust_scarcity = 16*16*16,
clust_num_ores = 1,
clust_size = 5,
y_min = 100,
y_max = 31000,
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
				if player_inventory:contains_item("main", "lategame_amulets:steel_amulet_5") then
				
					local new_steel_stack = ItemStack("default:steelblock 33")
					table.insert_all(final_drops, {new_steel_stack})
				
				elseif player_inventory:contains_item("main", "lategame_amulets:steel_amulet_4") then
				
					local new_steel_stack = ItemStack("default:steelblock 18")
					table.insert_all(final_drops, {new_steel_stack})
				
				elseif player_inventory:contains_item("main", "lategame_amulets:steel_amulet_3") then
				
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


--Compatible with Mesecon. Adds some QoL recipies, to encorage big builds.

if minetest.get_modpath("mesecons") then

core.register_craft({
    type = "shapeless",
    output = "mesecons_powerplant:power_plant",
    recipe = {
        "lategame_amulets:type_II_artifact",
        "group:mesecon_conductor_craftable",
        "group:mesecon_conductor_craftable",
    },
})

core.register_craft({
    type = "shapeless",
    output = "mesecons:wire_00000000_off 9",
    recipe = {
        "lategame_amulets:type_II_artifact",
        "group:mesecon_conductor_craftable",
    },
})

end

--Another QoL Recipe for megastructures; steel to glass

core.register_craft({
	output = "default:glass 27",
	recipe = {
		{"default:steelblock", "default:steelblock", "default:steelblock"},
		{"default:steelblock", "lategame_amulets:type_II_artifact", "default:steelblock"},
		{"default:steelblock", "default:steelblock", "default:steelblock"}
	}
})



local My_Path = minetest.get_modpath('lategame_amulets')






--[[

Compatible with Mobs Monster. This will change spawn rates and let monsters drop items for crafting amulets.

Attribution:

Below code is modified from TenPlus1's MobsMonster files, dungeon_master.lua and mese_monster.lua. New code modifications within this file are made by Comet712.

The original files attribute asset work to PilzAdam for the Dungeon Master, and SirrobZeroone for the Mese Monster. This file only modifies code.

The MIT License (MIT)

Copyright (c) 2016 TenPlus1

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

--]]


if minetest.get_modpath("mobs_monster") and minetest.get_modpath("mobs") then

	if not mobs.custom_spawn_monster then

		mobs:spawn({
				name = "mobs_monster:mese_monster",
				nodes = {"group:cracky", "group:crumbly", "group:oddly_breakable_by_hand", "group:choppy"},
				max_light = 7,
				chance = 500,
				active_object_count = 20,
			})
			
		mobs:spawn({
			name = "mobs_monster:dungeon_master",
			nodes = {"group:cracky", "group:crumbly", "group:oddly_breakable_by_hand", "group:choppy"},
			max_light = 7,
			chance = 1300,
			active_object_count = 10,
		})
		
		
		
		
		
	end
	
	local dungeon_master_definition = minetest.registered_entities["mobs_monster:dungeon_master"]	
	table.insert(dungeon_master_definition.drops, {name = "lategame_amulets:type_II_artifact", chance = 3, min = 1, max = 2})
	table.insert(dungeon_master_definition.drops, {name = "lategame_amulets:type_II_artifact", chance = 3, min = 1, max = 1})
	
	--Mese Monster changes drops on spawn, so need to override method to set drops
	
	local mese_monster_definition = minetest.registered_entities["mobs_monster:mese_monster"]	
	
	local default_mese_spawn = mese_monster_definition.on_spawn
	
	mese_monster_definition.on_spawn = function(self)
	
		local result = default_mese_spawn(self)
		
		--clear the default drops, we are giving a new set.
		
		for entry, value in pairs(self.drops) do
  			self.drops[entry] = nil
		end

		
		--Detect the type of mese monster it is by self.hp_max , and set drops based on that.
		
		if self.hp_max >= 40 then
		
		table.insert(self.drops, {name = "lategame_amulets:type_II_artifact", chance = 4, min = 1, max = 1})
		table.insert(self.drops, {name = "default:mese", chance = 9, min = 0, max = 1})
		table.insert(self.drops, {name = "default:mese_crystal", chance = 6, min = 0, max = 2})
		table.insert(self.drops, {name = "default:mese_crystal_fragment", chance = 1, min = 0, max = 3})
		
		elseif self.hp_max >= 35 then
		
		table.insert(self.drops, {name = "lategame_amulets:type_II_artifact", chance = 5, min = 1, max = 1})
		table.insert(self.drops, {name = "default:mese", chance = 15, min = 0, max = 1})
		table.insert(self.drops, {name = "default:mese_crystal", chance = 9, min = 0, max = 2})
		table.insert(self.drops, {name = "default:mese_crystal_fragment", chance = 1, min = 0, max = 2})
		
		elseif self.hp_max >= 30 then
		
		table.insert(self.drops, {name = "lategame_amulets:type_II_artifact", chance = 7, min = 1, max = 1})
		table.insert(self.drops, {name = "default:mese_crystal", chance = 12, min = 0, max = 1})
		table.insert(self.drops, {name = "default:mese_crystal_fragment", chance = 1, min = 0, max = 1})
		
		else
		
		table.insert(self.drops, {name = "lategame_amulets:type_II_artifact", chance = 10, min = 1, max = 1})
		table.insert(self.drops, {name = "default:mese_crystal", chance = 15, min = 0, max = 1})
		table.insert(self.drops, {name = "default:mese_crystal_fragment", chance = 2, min = 0, max = 1})
		
		end
		
		
		return result

	end

end





