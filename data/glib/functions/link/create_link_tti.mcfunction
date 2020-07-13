#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:link/create_link_to_target_id
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#link
# Parallelizable: false
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.link.rx dummy
scoreboard objectives add glib.link.ry dummy
scoreboard objectives add glib.link.rz dummy

scoreboard objectives add glib.link.lx dummy
scoreboard objectives add glib.link.ly dummy
scoreboard objectives add glib.link.lz dummy

scoreboard objectives add glib.link.rv dummy
scoreboard objectives add glib.link.rh dummy

scoreboard objectives add glib.link.to dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

function glib:id/check

#   Relative Position
execute store result score @s glib.var0 run data get entity @s Pos[0] 1000
execute store result score @s glib.var1 run data get entity @s Pos[1] 1000
execute store result score @s glib.var2 run data get entity @s Pos[2] 1000

execute store result score @s glib.link.rx run data get entity @e[tag=glib.id.match,limit=1,sort=nearest] Pos[0] 1000
execute store result score @s glib.link.ry run data get entity @e[tag=glib.id.match,limit=1,sort=nearest] Pos[1] 1000
execute store result score @s glib.link.rz run data get entity @e[tag=glib.id.match,limit=1,sort=nearest] Pos[2] 1000

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Link/Create_Link_By_Target_glib.id]=-","color":"green"}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Child X: ","color":"red"},{"score":{"name":"@s","objective":"glib.var0"}},{"text":".   Child Y: ","color":"red"},{"score":{"name":"@s","objective":"glib.var1"}},{"text":".   Child Z: ","color":"red"},{"score":{"name":"@s","objective":"glib.var2"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Parent X: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.rx"}},{"text":".   Parent Y: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.ry"}},{"text":".   Parent Z: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.rz"}}]
### END DEBUG

scoreboard players operation @s glib.link.rx -= @s glib.var0
scoreboard players operation @s glib.link.ry -= @s glib.var1
scoreboard players operation @s glib.link.rz -= @s glib.var2

scoreboard players operation @s glib.link.rx *= -1 glib.const
scoreboard players operation @s glib.link.ry *= -1 glib.const
scoreboard players operation @s glib.link.rz *= -1 glib.const

#   Relative Orientation
execute store result score @s glib.var0 run data get entity @s Rotation[0] 1000
execute store result score @s glib.var1 run data get entity @s Rotation[1] 1000

execute store result score @s glib.link.rv run data get entity @e[tag=glib.id.match,limit=1,sort=nearest] Rotation[0] 1000
execute store result score @s glib.link.rh run data get entity @e[tag=glib.id.match,limit=1,sort=nearest] Rotation[1] 1000

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Child Theta: ","color":"red"},{"score":{"name":"@s","objective":"glib.var0"}},{"text":".   Child Phi: ","color":"red"},{"score":{"name":"@s","objective":"glib.var1"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Parent Theta: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.rv"}},{"text":".   Parent Phi: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.rh"}}]
### END DEBUG

scoreboard players operation @s glib.link.rv -= @s glib.var0
scoreboard players operation @s glib.link.rh -= @s glib.var1

scoreboard players operation @s glib.link.rv *= -1 glib.const
scoreboard players operation @s glib.link.rh *= -1 glib.const

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"Diff X: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.rx"}},{"text":".   Diff Y: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.ry"}},{"text":".   Diff Z: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.rz"}}]
#tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"Diff Theta: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.rv"}},{"text":".   Diff Phi: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.rh"}}]
### END DEBUG

execute as @e[tag=glib.id.match,limit=1,sort=nearest] run function glib:orientation/get

# tellraw @a[tag=Debug] ["",{"text":"----------\nLoc -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.rx"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.ry"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.rz"}}]
# tellraw @a[tag=Debug] ["",{"text":"Ori -> ","color":"gray"},{"text":"H: ","color":"red"},{"score":{"name":"@e[tag=glib.id.match,limit=1,sort=nearest]","objective":"glib.ori.h"}},{"text":".   V: ","color":"red"},{"score":{"name":"@e[tag=glib.id.match,limit=1,sort=nearest]","objective":"glib.ori.v"}}]

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
