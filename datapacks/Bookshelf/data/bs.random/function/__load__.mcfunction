# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2024 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/Gunivers/Bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
#
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/random.html#random-distributions
# ------------------------------------------------------------------------------------------------------------
# Modified from https://github.com/Aeldrion/Minecraft-Random
scoreboard objectives add bs.random dummy [{"text":"BS ","color":"dark_gray"},{"text":"Random","color":"aqua"}]
execute unless score #lcg bs.random = #lcg bs.random store result score #lcg bs.random run seed
data merge storage bs:random {tmp:{}}
execute unless data storage bs:in random run data merge storage bs:in {random:{choose:{list:[]}}}
execute unless data storage bs:out random run data merge storage bs:out {random:{choose:{selection:""}}}

scoreboard players set #3 bs.const 3
scoreboard players set #5 bs.const 5
scoreboard players set #7 bs.const 7
scoreboard players set #8 bs.const 8
scoreboard players set #9 bs.const 9
scoreboard players set #10 bs.const 10
scoreboard players set #100 bs.const 100
scoreboard players set #1000 bs.const 1000
scoreboard players set #10000 bs.const 10000
scoreboard players set #log(10) bs.const 23026
scoreboard players set #exp(-0.9)*65536 bs.const 26645
scoreboard players set #exp(-0.8)*65536 bs.const 29447
scoreboard players set #exp(-0.7)*65536 bs.const 32544
scoreboard players set #exp(-0.6)*65536 bs.const 35967
scoreboard players set #exp(-0.5)*65536 bs.const 39750
scoreboard players set #exp(-0.4)*65536 bs.const 43930
scoreboard players set #exp(-0.3)*65536 bs.const 48550
scoreboard players set #exp(-0.2)*65536 bs.const 53656
scoreboard players set #exp(-0.1)*65536 bs.const 59299
scoreboard players set #65536 bs.const 65536
scoreboard players set #lcg_a bs.random 1630111353
scoreboard players set #lcg_c bs.random 1623164762
scoreboard players set #lcg_m bs.random 2147483647