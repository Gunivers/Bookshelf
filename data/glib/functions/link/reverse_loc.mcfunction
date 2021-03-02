#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib:link/reverse_loc
# Parallelizable: true
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.link.rx dummy [{"text":"GLib ","color":"gold"},{"text":"Link Relative X","color":"dark_gray"}]
scoreboard objectives add glib.link.ry dummy [{"text":"GLib ","color":"gold"},{"text":"Link Relative Y","color":"dark_gray"}]
scoreboard objectives add glib.link.rz dummy [{"text":"GLib ","color":"gold"},{"text":"Link Relative Z","color":"dark_gray"}]

scoreboard objectives add glib.link.to dummy [{"text":"GLib ","color":"gold"},{"text":"Link To","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.targetId = @s glib.link.to
function glib:id/check

#   Relative Position
execute store result score @s glib.var0 run data get entity @s Pos[0] 1000
execute store result score @s glib.var1 run data get entity @s Pos[1] 1000
execute store result score @s glib.var2 run data get entity @s Pos[2] 1000

execute store result score @s glib.var3 run data get entity @e[tag=glib.id.match,limit=1,sort=nearest] Pos[0] 1000
execute store result score @s glib.var4 run data get entity @e[tag=glib.id.match,limit=1,sort=nearest] Pos[1] 1000
execute store result score @s glib.var4 run data get entity @e[tag=glib.id.match,limit=1,sort=nearest] Pos[2] 1000

scoreboard players operation @s glib.var3 -= @s glib.var0
scoreboard players operation @s glib.var4 -= @s glib.var1
scoreboard players operation @s glib.var4 -= @s glib.var2

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Link/Imitate_Loc]=-","color":"green"}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative X: ","color":"red"},{"score":{"name":"@s","objective":"glib.var3"}},{"text":".   Old Relative X: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.rx"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative Y: ","color":"red"},{"score":{"name":"@s","objective":"glib.var4"}},{"text":".   Old Relative Y: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.ry"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative Z: ","color":"red"},{"score":{"name":"@s","objective":"glib.var4"}},{"text":".   Old Relative Z: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.rz"}}]
### END DEBUG

scoreboard players operation @s glib.var3 -= @s glib.link.rx
scoreboard players operation @s glib.var4 -= @s glib.link.ry
scoreboard players operation @s glib.var4 -= @s glib.link.rz

scoreboard players operation @s glib.var0 -= @s glib.var3
scoreboard players operation @s glib.var1 -= @s glib.var4
scoreboard players operation @s glib.var2 -= @s glib.var4

function glib:location/set/accuracy/10-3

function glib:link/update_link_x
function glib:link/update_link_y
function glib:link/update_link_z
