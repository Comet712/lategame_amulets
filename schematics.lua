
--[[

The MIT License (MIT)

Copyright (c) 2025 by Comet712

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



### Textures

Textures are created by Comet712, and are licensed under CC-BY-SA 4.0. 
https://creativecommons.org/licenses/by-sa/4.0/


]]--




local My_Path = minetest.get_modpath('lategame_amulets')


core.register_decoration({
    schematic = My_Path .. "/schematics/Exosphere_Small_Challenge_1.mts",
    deco_type = "schematic",
    place_on = {"group:cracky", "group:crumbly", "group:oddly_breakable_by_hand"},
    rotation = "random",
    flags = 'place_center_x, place_center_z',
    sidelen = 640,
    y_max = 31000,
    y_min = 1000,
    --place_offset_y = -1,

    noise_params = {
        offset = -0.000005,
        scale = 0.00005,
        spread = { x = 15, y = 15, z = 15 },
        seed = 287,
        octaves = 3,
        persist = 0.6
    },

})




core.register_decoration({
    schematic = My_Path .. "/schematics/Exosphere_Tower_1.mts",
    deco_type = "schematic",
    place_on = {"group:cracky", "group:crumbly", "group:oddly_breakable_by_hand"},
    rotation = "random",
    flags = 'place_center_x, place_center_z',
    sidelen = 640,
    y_max = 31000,
    y_min = 1000,
    --place_offset_y = -1,

    noise_params = {
        offset = -0.000005,
        scale = 0.00005,
        spread = { x = 50, y = 50, z = 50 },
        seed = 112,
        octaves = 3,
        persist = 0.6
    },

})





core.register_decoration({
    schematic = My_Path .. "/schematics/Exosphere_Barraks_1.mts",
    deco_type = "schematic",
    place_on = {"group:cracky", "group:crumbly", "group:oddly_breakable_by_hand"},
    rotation = "random",
    flags = 'place_center_x, place_center_z',
    sidelen = 640,
    y_max = 31000,
    y_min = 1000,
    --place_offset_y = -1,

    noise_params = {
        offset = -0.000005,
        scale = 0.00005,
        spread = { x = 15, y = 15, z = 15 },
        seed = 482,
        octaves = 3,
        persist = 0.6
    },

})


--[[


core.register_decoration({
    schematic = My_Path .. "/schematics/Exosphere_Aqueduct_1.mts",
    deco_type = "schematic",
    place_on = {"group:cracky", "group:crumbly", "group:oddly_breakable_by_hand", "default:air"},
    rotation = "0",
    flags = 'place_center_x, place_center_z',
    sidelen = 640,
    y_max = 2500,
    y_min = 1270,
    --place_offset_y = -1,

    noise_params = {
        offset = -0.00001,
        scale = 0.0001,
        spread = { x = 200, y = 200, z = 200 },
        seed = 320,
        octaves = 3,
        persist = 0.6
    },

})




core.register_decoration({
    schematic = My_Path .. "/schematics/Exosphere_Floating_1.mts",
    deco_type = "schematic",
    {"group:cracky", "group:crumbly", "group:oddly_breakable_by_hand", "default:air"},
    rotation = "0",
    flags = 'place_center_x, place_center_z',
    sidelen = 640,
    y_max = 2500,
    y_min = 1270,
    --place_offset_y = -1,

    noise_params = {
        offset = -0.00001,
        scale = 0.0001,
        spread = { x = 200, y = 200, z = 200 },
        seed = 118,
        octaves = 3,
        persist = 0.6
    },

})




--]]



