# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2026 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/mcbookshelf/bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
# ------------------------------------------------------------------------------------------------------------

execute in minecraft:overworld as B5-0-0-0-1 run function bs.position:utils/get_rot

# X' = x * cos(h) - (z * cos(v) + y * sin(v)) * sin(h)
execute store result score #x bs.ctx run compute default float {type:"sub",\
    left:{type:"mul",inputs:[{type:"from_int",input:{type:"score",score:"bs.pos.x",target:"this"}},{type:"cos",input:{type:"mul",inputs:[0.01745329252,{type:"storage",storage:"bs.position:",path:"rotation[0]"}]}}]},\
    right:{type:"mul",inputs:[{type:"sin",input:{type:"mul",inputs:[0.01745329252,{type:"storage",storage:"bs.position:",path:"rotation[0]"}]}},\
        {type:"add",inputs:[\
        {type:"mul",inputs:[{type:"from_int",input:{type:"score",score:"bs.pos.y",target:"this"}},{type:"sin",input:{type:"mul",inputs:[0.01745329252,{type:"storage",storage:"bs.position:",path:"rotation[1]"}]}}]},\
        {type:"mul",inputs:[{type:"from_int",input:{type:"score",score:"bs.pos.z",target:"this"}},{type:"cos",input:{type:"mul",inputs:[0.01745329252,{type:"storage",storage:"bs.position:",path:"rotation[1]"}]}}]}\
]}]}}

# Y' = y * cos(v) - z * sin(v)
execute store result score #y bs.ctx run compute default float {type:"sub",\
    left:{type:"mul",inputs:[{type:"from_int",input:{type:"score",score:"bs.pos.y",target:"this"}},{type:"cos",input:{type:"mul",inputs:[0.01745329252,{type:"storage",storage:"bs.position:",path:"rotation[1]"}]}}]},\
    right:{type:"mul",inputs:[{type:"from_int",input:{type:"score",score:"bs.pos.z",target:"this"}},{type:"sin",input:{type:"mul",inputs:[0.01745329252,{type:"storage",storage:"bs.position:",path:"rotation[1]"}]}}]}\
    }

# Z' = x * sin(h) - (z * cos(v) + y * sin(v)) * cos(h)
execute store result score #x bs.ctx run compute default float {type:"add",inputs:[\
    {type:"mul",inputs:[{type:"from_int",input:{type:"score",score:"bs.pos.x",target:"this"}},{type:"sin",input:{type:"mul",inputs:[0.01745329252,{type:"storage",storage:"bs.position:",path:"rotation[0]"}]}}]},\
    {type:"mul",inputs:[{type:"cos",input:{type:"mul",inputs:[0.01745329252,{type:"storage",storage:"bs.position:",path:"rotation[0]"}]}},\
        {type:"add",inputs:[\
        {type:"mul",inputs:[{type:"from_int",input:{type:"score",score:"bs.pos.y",target:"this"}},{type:"sin",input:{type:"mul",inputs:[0.01745329252,{type:"storage",storage:"bs.position:",path:"rotation[1]"}]}}]},\
        {type:"mul",inputs:[{type:"from_int",input:{type:"score",score:"bs.pos.z",target:"this"}},{type:"cos",input:{type:"mul",inputs:[0.01745329252,{type:"storage",storage:"bs.position:",path:"rotation[1]"}]}}]}\
]}]}]}

scoreboard players operation @s bs.pos.x = #x bs.ctx
scoreboard players operation @s bs.pos.y = #y bs.ctx
scoreboard players operation @s bs.pos.z = #z bs.ctx
