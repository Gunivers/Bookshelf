
execute unless score @s glib.plot.x matches -1000..1000 run kill @s[type=!player]
execute unless score @s glib.plot.y matches -1000..1000 run kill @s[type=!player]
#execute unless score @s glib.plot.z matches -1000..1000 run kill @s[type=!player]

#scoreboard players operation @s glib.var0 = @s glib.plot.z
#execute at @e[tag=glib.sandbox.plot.create] run function glib_sandbox:math/plot/get_position/z
#scoreboard players operation @s glib.var2 = @s glib.res0
scoreboard players operation @s glib.locZ = sandbox.plot.center.z glib.const

scoreboard players operation @s glib.var0 = @s glib.plot.y
function glib_sandbox:math/plot/get_position/y
scoreboard players operation @s glib.locY = @s glib.res0

scoreboard players operation @s glib.var0 = @s glib.plot.x
function glib_sandbox:math/plot/get_position/x
scoreboard players operation @s glib.locX = @s glib.res0

gamerule maxCommandChainLength 1000000
function glib.location:fast_set/accuracy/10-3

tag @s[tag=glib.sandbox.plot,tag=!glib.sandbox.plot.drawed] add glib.sandbox.plot.drawed
