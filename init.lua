
--[[

The MIT License (MIT)

Copyright (c) 2024-2025 by Comet712

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



### Textures

Textures are created by Comet712, and are licensed under CC-BY-SA 4.0. 
https://creativecommons.org/licenses/by-sa/4.0/


]]--



local daytime_enemies_enabled = minetest.settings:get("daytime_enemies_enabled")
local enemy_difficulty = minetest.settings:get("enemy_difficulty")


--Backwards compatibility
core.register_alias('lategame_amulets:treasure_box_wheat_amulet', 'lategame_amulets:treasure_box_cotton_amulet')


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


core.register_craftitem("lategame_amulets:rare_crystal", {
description = "Rare Crystal",
inventory_image = "Type2_Sky.png",
})



core.register_craftitem("lategame_amulets:steel_amulet", {
description = "Steel Amulet Tier 1",
inventory_image = "steel_amulet.png",
})

core.register_craftitem("lategame_amulets:steel_amulet_2", {
description = "Steel Amulet Tier 2",
inventory_image = "steel_amulet_2.png",
})

core.register_craftitem("lategame_amulets:steel_amulet_3", {
description = "Steel Amulet Tier 3",
inventory_image = "steel_amulet_3.png",
})

core.register_craftitem("lategame_amulets:steel_amulet_4", {
description = "Steel Amulet Tier 4",
inventory_image = "steel_amulet_3.png",
})

core.register_craftitem("lategame_amulets:steel_amulet_5", {
description = "Steel Amulet Tier 5",
inventory_image = "steel_amulet_3.png",
})

core.register_craftitem("lategame_amulets:coal_amulet_1", {
description = "Coal Amulet Tier 1",
inventory_image = "coal_amulet.png",
})

core.register_craftitem("lategame_amulets:coal_amulet_2", {
description = "Coal Amulet Tier 2",
inventory_image = "coal_amulet_2.png",
})


core.register_craftitem("lategame_amulets:apple_amulet_1", {
description = "Apple Amulet Tier 1",
inventory_image = "coal_amulet.png",
})

core.register_craftitem("lategame_amulets:apple_amulet_2", {
description = "Apple Amulet Tier 2",
inventory_image = "coal_amulet.png",
})

core.register_craftitem("lategame_amulets:apple_amulet_3", {
description = "Apple Amulet Tier 3",
inventory_image = "coal_amulet.png",
})


core.register_craftitem("lategame_amulets:cotton_amulet_1", {
description = "Cotton Amulet Tier 1",
inventory_image = "coal_amulet.png",
})

core.register_craftitem("lategame_amulets:cotton_amulet_2", {
description = "Cotton Amulet Tier 2",
inventory_image = "coal_amulet.png",
})


core.register_craftitem("lategame_amulets:cotton_amulet_3", {
description = "Cotton Amulet Tier 3",
inventory_image = "coal_amulet.png",
})


core.register_craftitem("lategame_amulets:cotton_amulet_4", {
description = "Cotton Amulet Tier 4",
inventory_image = "coal_amulet.png",
})



core.register_craftitem("lategame_amulets:diamond_stick", {
description = "Polished Diamond Stick",
inventory_image = "coal_amulet.png",
})





--Tools and armor


minetest.register_tool("lategame_amulets:hammer_of_yeeting_1", {
	description = "Hammer of Yeeting",
	inventory_image = "coal_amulet.png",
	wield_image = "coal_amulet.png",
	
	liquids_pointable = true,
	stack_max = 1,
	
	tool_capabilities = {
			full_punch_interval = 1.5,
			damage_groups = {fleshy = 2, knockback = 50},
			},

})


minetest.register_tool("lategame_amulets:bog_staff_1", {
	description = "Bog Staff: Chaser Slayer",
	inventory_image = "genesis_matter.png",
	wield_image = "genesis_matter.png",
	
	liquids_pointable = true,
	stack_max = 1,
	
		tool_capabilities = {
			punch_interval = 5,
			damage_groups = {fleshy = 1, knockback = 3},
			},
			
			

	
	
	on_use = function(itemstack, user, pointed_thing)
		if pointed_thing.type == "node" then
		
			Position_Below_Click = pointed_thing.under


		if core.is_protected(Position_Below_Click, user:get_player_name()) then
			return
		end

			Node_To_Change_Position = {x = Position_Below_Click.x, y = Position_Below_Click.y + 1, z = Position_Below_Click.z}
			Node_To_Change = minetest.get_node(Node_To_Change_Position)

							--core.chat_send_all(Node_To_Change.groups.." Arrived at line"..math.random(1000000))


			Type_To_Generate = "lategame_amulets:bog_liquid_source"
			
			if(math.random(3) <= 1) then
				Type_To_Generate =  "lategame_amulets:bog_tree_log"
			end
			
			

			if Is_Bog_Type_Placable(Node_To_Change) then

					core.swap_node(Node_To_Change_Position, {name = Type_To_Generate})
					 timer = core.get_node_timer(Node_To_Change_Position)
					timer:start(28)
					
					
					--Try to place more
					Node_To_Change_Position_2 = {x = Position_Below_Click.x, y = Position_Below_Click.y + 2, z = Position_Below_Click.z}
					if( Is_Bog_Type_Placable(minetest.get_node(Node_To_Change_Position_2))) then
					core.swap_node(Node_To_Change_Position_2, {name = Type_To_Generate})
					 timer = core.get_node_timer(Node_To_Change_Position_2)
					timer:start(25)
					
					
					Node_To_Change_Position_3 = {x = Position_Below_Click.x, y = Position_Below_Click.y + 3, z = Position_Below_Click.z}
					if(Type_To_Generate ==  "lategame_amulets:bog_liquid_source" and Is_Bog_Type_Placable(minetest.get_node(Node_To_Change_Position_3))) then
					core.swap_node(Node_To_Change_Position_3, {name = Type_To_Generate})
					 timer = core.get_node_timer(Node_To_Change_Position_3)
					timer:start(20)
					end
					
					end
					
					
					
					
			end



		end
	end,
	
})



function Is_Bog_Type_Placable(Node_To_Change)

if Node_To_Change.name == "air" or Node_To_Change.name == "default:snow" then
	return true
end

return false

end



core.register_node('lategame_amulets:bog_liquid_source', {
    description = "Bog Source",
	tiles = {"boom_ore.png"},
    drawtype = 'liquid',
	
	 damage_per_second = 1,
	 liquid_viscosity = 25,
	drop = "",
    drowning = 1,
	
	pointable = false,
    walkable = false,
    diggable = false,
    buildable_to = true,
    is_ground_content = false,
	
	

	
	on_timer = function(pos)
        core.set_node(pos, { name = "air" })
        return false
    end,

})




core.register_node('lategame_amulets:bog_tree_log', {
    description = "Bog Log",
	tiles = {"sky_iron.png"},

	drop = "",
	
	pointable = true,
    walkable = true,
    diggable = false,
    buildable_to = true,
    is_ground_content = false,
	
	
	on_timer = function(pos)
        core.set_node(pos, { name = "air" })
        return false
    end,

})







if minetest.get_modpath("3d_armor") then

armor:register_armor("lategame_amulets:glass_boots", {

description = "Glass Boots",
inventory_image = "lategame_amulets_inv_glass_boots.png",

groups = {armor_feet=1, physics_speed=1,
				physics_jump=0.5, armor_use=25000},
				
})


core.register_craft({
	output = "lategame_amulets:glass_boots",
	recipe = {
		{"", "", ""},
		{"default:glass", "", "default:glass"},
		{"default:glass", "", "default:glass"}
	}
})


core.register_craft({
	output = "3d_armor:boots_crystal",
	recipe = {
		{"", "", ""},
		{"lategame_amulets:rare_crystal", "", "lategame_amulets:rare_crystal"},
		{"lategame_amulets:rare_crystal", "", "lategame_amulets:rare_crystal"}
	}
})



end


--Crafting


core.register_craft({
    type = "shapeless",
    output = "lategame_amulets:diamond_stick 2",
    recipe = {
        "default:diamondblock",
        "default:diamondblock",
    },
})






core.register_craft({
	output = "lategame_amulets:hammer_of_yeeting_1",
	recipe = {
		{"default:permafrost_with_moss", "tnt:tnt", "default:permafrost_with_moss"},
		{"", "lategame_amulets:diamond_stick", ""},
		{"", "lategame_amulets:diamond_stick", ""}
	}
})







if minetest.get_modpath("everness") then
core.register_craft({
	output = "lategame_amulets:glass_boots",
	recipe = {
		{"", "", ""},
		{"everness:glass", "", "everness:glass"},
		{"everness:glass", "", "everness:glass"}
	}
})
end

core.register_craft({
	output = "lategame_amulets:genesis_matter",
	recipe = {
		{"lategame_amulets:type_II_artifact", "lategame_amulets:type_II_artifact", "lategame_amulets:type_II_artifact"},
		{"lategame_amulets:type_II_artifact", "lategame_amulets:type_II_artifact", "lategame_amulets:type_II_artifact"},
		{"lategame_amulets:type_II_artifact", "lategame_amulets:type_II_artifact", "lategame_amulets:type_II_artifact"}
	}
})










core.register_craft({
    type = "shapeless",
    output = "lategame_amulets:apple_amulet_2",
    recipe = {
        "lategame_amulets:apple_amulet_1",
        "lategame_amulets:apple_amulet_1",
    },
})




core.register_craft({
    type = "shapeless",
    output = "lategame_amulets:apple_amulet_3",
    recipe = {
        "lategame_amulets:apple_amulet_2",
        "lategame_amulets:apple_amulet_1",
    },
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
    },
})


core.register_craft({
    type = "shapeless",
    output = "lategame_amulets:steel_amulet_5",
    recipe = {
    	"lategame_amulets:steel_amulet",
        "lategame_amulets:steel_amulet_4",
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





core.register_craft({
    type = "shapeless",
    output = "lategame_amulets:cotton_amulet_2",
    recipe = {
    	"lategame_amulets:cotton_amulet_1",
    	"lategame_amulets:cotton_amulet_1",
    },
})

core.register_craft({
    type = "shapeless",
    output = "lategame_amulets:cotton_amulet_3",
    recipe = {
    	"lategame_amulets:cotton_amulet_2",
    	"lategame_amulets:cotton_amulet_1",
    },
})

core.register_craft({
    type = "shapeless",
    output = "lategame_amulets:cotton_amulet_4",
    recipe = {
    	"lategame_amulets:cotton_amulet_3",
    	"lategame_amulets:cotton_amulet_1",
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







--Reward boxes


core.register_node("lategame_amulets:treasure_box_1", {
description = "Treasure Box Tier 1",
tiles = {"Treasure_Box.png"},
is_ground_content=true,
groups = {cracky = 2},

drop = {
        --max_items = 4,
        items = {
            {
                items = {'lategame_amulets:megastructure_ore'},
            },
            {
                items = {'lategame_amulets:type_II_artifact 3'},
                rarity = 3,
            },
			{
                items = {'lategame_amulets:rare_crystal'},
                rarity = 4,
            },
			{
			
				 items = {'lategame_amulets:apple_amulet_1'},
                rarity = 4,
			}
            
        }
    },

})



core.register_node("lategame_amulets:treasure_box_2", {
description = "Treasure Box Tier 2",
tiles = {"Treasure_Box.png"},
is_ground_content=true,
groups = {cracky = 2},

drop = {
        --max_items = 4,
        items = {
            {
                items = {'lategame_amulets:megastructure_ore'},
            },
            {
                items = {'lategame_amulets:type_II_artifact 3'},
                rarity = 3,
            },
			{
                items = {'lategame_amulets:rare_crystal'},
            }
            
        }
    },

})





core.register_node("lategame_amulets:treasure_box_cotton_amulet", {
description = "Treasure Box Cotton Amulet",
tiles = {"Treasure_Box.png"},
is_ground_content=true,
groups = {cracky = 2},

drop = {
        --max_items = 4,
        items = {
            {
                items = {'lategame_amulets:cotton_amulet_1'},
            },
            {
                items = {'lategame_amulets:megastructure_ore 5'},
            },
            {
                items = {'default:ladder_wood 10'},
            }
            
        }
    },

})





core.register_node("lategame_amulets:sky_ore", {
description = "Sky Ore",
tiles = {"sky_ore.png"},
is_ground_content=false,
groups = {cracky = 2},

drop = {
        max_items = 4,
        items = {
            {
                items = {'lategame_amulets:sky_artifact'},
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
                items = {'carts:powerrail 49','default:coal_lump 20'},
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
                items = {'tnt:tnt 20','default:diamond 3'},
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
y_max = 850,
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
			
			elseif stack:get_name() == ("default:apple") then	
			
				--Handle apple amulets
				if player_inventory:contains_item("main", "lategame_amulets:apple_amulet_3") then
				
					local new_steel_stack = ItemStack("default:apple 8")
					table.insert_all(final_drops, {new_steel_stack})
					
				elseif player_inventory:contains_item("main", "lategame_amulets:apple_amulet_2") then
				
					local new_steel_stack = ItemStack("default:apple 4")
					table.insert_all(final_drops, {new_steel_stack})
				
				elseif player_inventory:contains_item("main", "lategame_amulets:apple_amulet_1") then
				
					local new_steel_stack = ItemStack("default:apple 2")
					table.insert_all(final_drops, {new_steel_stack})
					
				else
					--Digger does not have an amulet, so pass back as-is
					table.insert_all(final_drops, {stack})
				end
			
			elseif stack:get_name() == ("farming:cotton") then	
			
				--Handle cotton amulets

				if player_inventory:contains_item("main", "lategame_amulets:cotton_amulet_4") then
				
					local new_steel_stack = ItemStack("wool:white 33")
					table.insert_all(final_drops, {new_steel_stack})

				elseif player_inventory:contains_item("main", "lategame_amulets:cotton_amulet_3") then
				
					local new_steel_stack = ItemStack("wool:white 12")
					table.insert_all(final_drops, {new_steel_stack})

				elseif player_inventory:contains_item("main", "lategame_amulets:cotton_amulet_2") then
				
					local new_steel_stack = ItemStack("wool:white 4")
					table.insert_all(final_drops, {new_steel_stack})
				
					
				elseif player_inventory:contains_item("main", "lategame_amulets:cotton_amulet_1") then
				
					local new_steel_stack = ItemStack("wool:white 1")
					table.insert_all(final_drops, {new_steel_stack})
					
				
				
				else
					--Player does not have an amulet, so pass back as-is
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
dofile(My_Path .. "/schematics.lua")







--Exosphere Glass node

minetest.register_node("lategame_amulets:exosphere_glass", {

description = "Exosphere Glass",
drawtype = "glasslike",
tiles = {"default_obsidian_glass.png"},
paramtype = "light",
sunlight_propagates = true,
is_ground_content = false,
groups = {cracky = 2},
drop = "",

})




if minetest.get_modpath("ethereal") then

--Set to 20 second flight

core.register_craft({
	output = "ethereal:flight_potion",
	recipe = {
		{"lategame_amulets:sky_artifact", "lategame_amulets:sky_artifact", "lategame_amulets:sky_artifact"},
		{"lategame_amulets:sky_artifact", "lategame_amulets:sky_artifact", "lategame_amulets:sky_artifact"},
		{"lategame_amulets:sky_artifact", "lategame_amulets:sky_artifact", "lategame_amulets:sky_artifact"}
	}
})


--TODO, Allow Ethereal biomes to extend into the Floatlands
--Include smaller structures and decorations for trees and stuff



end






--Break glass boots underground


function Break_Glass_Boots_Repeating()

Log_Timer = 0
	
core.register_globalstep(function(dtime)
	
	Log_Timer = Log_Timer + dtime
	
	if Log_Timer > 5 then
	
	    Log_Timer = 0
		Check_Players_Underground_To_Break_Glass_Boots();
		
end
end)
	
end


		--If player is underground, break glass boots.

function Check_Players_Underground_To_Break_Glass_Boots()

All_Players = minetest.get_connected_players()

for k, Player in ipairs(All_Players) do


			Player_Position = Player:get_pos()

			if Player_Position.y < -10  then
			
			
			--[[
				--Player_Inventory = Player:get_inventory()
				
				Player_Armor_Inventory = core.get_inventory({type="detached", name=Player:get_player_name().."_armor"})
				
				Num_Removed_Glass_Boots = Player_Armor_Inventory:remove_item("armor", ItemStack("lategame_amulets:glass_boots 1"))
				
				if Num_Removed_Glass_Boots:get_count() > 0 then
						 core.chat_send_player(Player:get_player_name(), "In the absence of surface air, your glass boots shattered.")
						 
						 Num_Removed_Glass_Boots:add_wear(1000000)
						 Player_Armor_Inventory:add_item("armor", Num_Removed_Glass_Boots)
						 --Set player speed to normal
				end
--]]
			

			
			end
			
			--Player_Inventory:contains_item("main", "lategame_amulets:glass_boots") and


            
			
			
        end

end




Break_Glass_Boots_Repeating()







--Enemy values



local mese_monster_spawn_chance = 1500
local dungeon_master_spawn_chance = 3900

local mese_monster_max_count = 20
local dungeon_master_max_count = 10


	if enemy_difficulty == "apocalyptic" then

		mese_monster_spawn_chance = 1500
		dungeon_master_spawn_chance = 3900
		mese_monster_max_count = 20
		dungeon_master_max_count = 8
		
	elseif enemy_difficulty == "hard" then

		mese_monster_spawn_chance = 3000
		dungeon_master_spawn_chance = 10000
		mese_monster_max_count = 16
		dungeon_master_max_count = 3

	elseif enemy_difficulty == "normal" then

		mese_monster_spawn_chance = 7000
		dungeon_master_spawn_chance = 25000
		mese_monster_max_count = 7
		dungeon_master_max_count = 1
		

	elseif enemy_difficulty == "easy" then

		mese_monster_spawn_chance = 7000
		dungeon_master_spawn_chance = 25000
		mese_monster_max_count = 4
		dungeon_master_max_count = 0

	elseif enemy_difficulty == "very_easy" then

		mese_monster_spawn_chance = 7000
		dungeon_master_spawn_chance = 25000
		mese_monster_max_count = 4
		dungeon_master_max_count = 0
	end




enemy_max_light_spawning = 7

if(daytime_enemies_enabled) then
enemy_max_light_spawning = 15
end







--[[
This next code section is modified from Wuzzy's code in "Indestructible Bedrock Layer"

Copyright 2023 Wuzzy

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

local Exosphere_Glass_Layer = 900


minetest.register_on_generated(function(minp, maxp)
	if maxp.y >= Exosphere_Glass_Layer and minp.y <= Exosphere_Glass_Layer then
		local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
		local data = vm:get_data()
		local area = VoxelArea:new({MinEdge=emin, MaxEdge=emax})
		
		local c_exosphere_glass = minetest.get_content_id("lategame_amulets:exosphere_glass")

		for x = minp.x, maxp.x do
			for z = minp.z, maxp.z do
				local p_pos = area:index(x, Exosphere_Glass_Layer, z)
				data[p_pos] = c_exosphere_glass
			end
		end

		vm:set_data(data)
		vm:calc_lighting()
		vm:update_liquids()
		vm:write_to_map()
	end
end)









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
				max_light = enemy_max_light_spawning,
				chance = mese_monster_spawn_chance,
				active_object_count = mese_monster_max_count,
			})
			
		mobs:spawn({
			name = "mobs_monster:dungeon_master",
			nodes = {"group:cracky", "group:crumbly", "group:oddly_breakable_by_hand", "group:choppy"},
			max_light = enemy_max_light_spawning,
			chance = dungeon_master_spawn_chance,
			active_object_count = dungeon_master_max_count,
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




