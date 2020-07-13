#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:link/update_link
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#link
# Parallelizable: <true/false/global>
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

function glib:link/update_link_x
function glib:link/update_link_y
function glib:link/update_link_z
function glib:link/update_link_h
function glib:link/update_link_v



execute as @e[tag=glib.id.match,limit=1,sort=nearest] run function glib:orientation/get

# Cos(Phi)
scoreboard players operation @s glib.var0 = @e[tag=glib.id.match,limit=1,sort=nearest] glib.ori.h
function glib:math/cos
scoreboard players operation @s glib.var3 = @s glib.res0
# tellraw @a[tag=Debug] ["",{"text":"CosH -> ","color":"gray"},{"text":"Cos(","color":"red"},{"score":{"name":"@e[tag=glib.id.match,limit=1,sort=nearest]","objective":"glib.ori.h"}},{"text":") = ","color":"red"},{"score":{"name":"@s","objective":"glib.var3"}}]
# Sin(Phi)
scoreboard players operation @s glib.var0 = @e[tag=glib.id.match,limit=1,sort=nearest] glib.ori.h
function glib:math/sin
scoreboard players operation @s glib.var4 = @s glib.res0
# tellraw @a[tag=Debug] ["",{"text":"SinH -> ","color":"gray"},{"text":"Sin(","color":"red"},{"score":{"name":"@e[tag=glib.id.match,limit=1,sort=nearest]","objective":"glib.ori.h"}},{"text":") = ","color":"red"},{"score":{"name":"@s","objective":"glib.var4"}}]

# Cos(Theta)
scoreboard players operation @s glib.var0 = @e[tag=glib.id.match,limit=1,sort=nearest] glib.ori.v
function glib:math/cos
scoreboard players operation @s glib.var4 = @s glib.res0
# tellraw @a[tag=Debug] ["",{"text":"CosV -> ","color":"gray"},{"text":"Cos(","color":"red"},{"score":{"name":"@e[tag=glib.id.match,limit=1,sort=nearest]","objective":"glib.ori.v"}},{"text":") = ","color":"red"},{"score":{"name":"@s","objective":"glib.var4"}}]
# Sin(Theta)
scoreboard players operation @s glib.var0 = @e[tag=glib.id.match,limit=1,sort=nearest] glib.ori.v
function glib:math/sin
scoreboard players operation @s glib.var6 = @s glib.res0
# tellraw @a[tag=Debug] ["",{"text":"SinV -> ","color":"gray"},{"text":"Sin(","color":"red"},{"score":{"name":"@e[tag=glib.id.match,limit=1,sort=nearest]","objective":"glib.ori.v"}},{"text":") = ","color":"red"},{"score":{"name":"@s","objective":"glib.var6"}}]

# Vector Left -> L = cos(P)*X + sin(P)*Z
scoreboard players operation @s glib.var0 = @s glib.link.rx
scoreboard players operation @s glib.var0 *= @s glib.var3
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.link.lx = @s glib.var0

# tellraw @a[tag=Debug] ["",{"text":"Calc -> ","color":"gray"},{"text":"cos(H)*X= ","color":"red"},{"score":{"name":"@s","objective":"glib.link.lx"}}]

scoreboard players operation @s glib.var0 = @s glib.link.rz
scoreboard players operation @s glib.var0 *= @s glib.var4
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.link.lx += @s glib.var0

# tellraw @a[tag=Debug] ["",{"text":"Left -> ","color":"gray"},{"text":"cos(H)*X + sin(H)*Z = ","color":"red"},{"score":{"name":"@s","objective":"glib.link.lx"}}]

# Vector Up -> U = -sin(P)sin(T)*X + cos(T)*Y + cos(P)sin(T)*Z
scoreboard players operation @s glib.var0 = @s glib.link.rx
scoreboard players operation @s glib.var0 *= @s glib.var4
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.var0 *= @s glib.var6
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.var0 *= -1 glib.const
scoreboard players operation @s glib.link.ly = @s glib.var0

scoreboard players operation @s glib.var0 = @s glib.link.ry
scoreboard players operation @s glib.var0 *= @s glib.var4
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.link.ly += @s glib.var0

scoreboard players operation @s glib.var0 = @s glib.link.rz
scoreboard players operation @s glib.var0 *= @s glib.var3
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.var0 *= @s glib.var6
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.link.ly += @s glib.var0

# tellraw @a[tag=Debug] ["",{"text":"Up -> ","color":"gray"},{"text":"-sin(H)sin(V)*X + cos(V)*Y + cos(H)sin(V)*Z = ","color":"red"},{"score":{"name":"@s","objective":"glib.link.ly"}}]

# Vector Front -> F = -sin(P)cos(T)*X + sin(T)*Y + cos(P)cos(T)*Z
scoreboard players operation @s glib.var0 = @s glib.link.rx
scoreboard players operation @s glib.var0 *= @s glib.var4
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.var0 *= @s glib.var4
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.var0 *= -1 glib.const
scoreboard players operation @s glib.link.lz = @s glib.var0

scoreboard players operation @s glib.var0 = @s glib.link.ry
scoreboard players operation @s glib.var0 *= @s glib.var6
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.link.lz -= @s glib.var0

scoreboard players operation @s glib.var0 = @s glib.link.rz
scoreboard players operation @s glib.var0 *= @s glib.var3
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.var0 *= @s glib.var4
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.link.lz += @s glib.var0

# tellraw @a[tag=Debug] ["",{"text":"Front -> ","color":"gray"},{"text":"-sin(H)cos(V)*X - sin(V)*Y + cos(H)cos(V)*Z = ","color":"red"},{"score":{"name":"@s","objective":"glib.link.lz"}}]
