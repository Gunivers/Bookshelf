# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# CODE ------------------------------------------------------------------------

scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]

function bs.block:load/blocks_table
function bs.block:load/items_table
function bs.block:load/types_table
function bs.block:load/states_table
function bs.block:load/mapping_sets

data modify storage bs:out block set value {}
