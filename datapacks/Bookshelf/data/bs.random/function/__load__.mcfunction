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

scoreboard objectives add bs.const dummy [{"text":"BS ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]
scoreboard objectives add bs.ctx dummy [{"text":"BS ","color":"dark_gray"},{"text":"Context","color":"aqua"}]
scoreboard objectives add bs.out dummy [{"text":"BS ","color":"dark_gray"},{"text":"Output","color":"aqua"}]

execute unless data storage bs:in random.choose run data modify storage bs:in random.choose set value {options:[]}
execute unless data storage bs:out random.choose run data modify storage bs:out random.choose set value []

execute store result score #random.seed bs.data run seed

scoreboard players set -1000 bs.const -1000
scoreboard players set 2 bs.const 2
scoreboard players set 8 bs.const 8
scoreboard players set 10 bs.const 10
scoreboard players set 12 bs.const 12
scoreboard players set 13 bs.const 13
scoreboard players set 14 bs.const 14
scoreboard players set 24 bs.const 24
scoreboard players set 78 bs.const 78
scoreboard players set 100 bs.const 100
scoreboard players set 1000 bs.const 1000
scoreboard players set 10000 bs.const 10000
scoreboard players set 65536 bs.const 65536
scoreboard players set exp(-0.9)*65536 bs.const 26645
scoreboard players set exp(-0.8)*65536 bs.const 29447
scoreboard players set exp(-0.7)*65536 bs.const 32544
scoreboard players set exp(-0.6)*65536 bs.const 35967
scoreboard players set exp(-0.5)*65536 bs.const 39750
scoreboard players set exp(-0.4)*65536 bs.const 43930
scoreboard players set exp(-0.3)*65536 bs.const 48550
scoreboard players set exp(-0.2)*65536 bs.const 53656
scoreboard players set exp(-0.1)*65536 bs.const 59299
