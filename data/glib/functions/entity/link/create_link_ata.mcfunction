#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.15
# Last check:

# Original path: glib:entity/link/create_link_ata
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#link
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var dummy

scoreboard objectives add glib.link.r.x dummy
scoreboard objectives add glib.link.r.y dummy
scoreboard objectives add glib.link.r.z dummy

scoreboard objectives add glib.link.l.x dummy
scoreboard objectives add glib.link.l.y dummy
scoreboard objectives add glib.link.l.z dummy

scoreboard objectives add glib.link.r.v dummy
scoreboard objectives add glib.link.r.h dummy

scoreboard objectives add glib.link.to dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @e remove glib.link.target
tag @e[limit=1,sort=nearest] add glib.link.target

#-------------------#
# Relative Position #
#-------------------#

function glib.entity/location/accuracy/10-3/get
scoreboard players operation @s glib.link.r.x = location.x.10-3 glib.var
scoreboard players operation @s glib.link.r.y = location.y.10-3 glib.var
scoreboard players operation @s glib.link.r.z = location.z.10-3 glib.var

execute as @e[tag=glib.link.target,limit=1] at @s run function glib.entity/location/accuracy/10-3/get
scoreboard players operation @s glib.link.r.x -= location.x.10-3 glib.var
scoreboard players operation @s glib.link.r.y -= location.y.10-3 glib.var
scoreboard players operation @s glib.link.r.z -= location.z.10-3 glib.var

# Relative Orientation
function glib.entity/orientation/accuracy/10-3/get
scoreboard players operation @s glib.link.r.h = orientation.h.10-3 glib.var
scoreboard players operation @s glib.link.r.h = orientation.h.10-3 glib.var

execute as @e[tag=glib.link.target,limit=1] at @s run function glib.entity/orientation/accuracy/10-3/get
scoreboard players operation @s glib.link.r.h -= orientation.h.10-3 glib.var
scoreboard players operation @s glib.link.r.v -= orientation.v.10-3 glib.var

#----------------#
# Local Position #
#----------------#

execute as @e[tag=glib.link.target] run function glib:entity/orientation/get

# Cos(Phi)
scoreboard players operation math.angle glib.var = orientation.h glib.var
function glib:math/cos
scoreboard players operation link.cos.h glib.var = cos glib.res

# Sin(Phi)
# REDONDANT - scoreboard players operation math.angle glib.var = orientation.h glib.var
function glib:math/sin
scoreboard players operation @s glib.var5 = @s glib.res

# Cos(Theta)
scoreboard players operation @s glib.var = @e[tag=glib.link.target] OriV
function glib:math/cos
scoreboard players operation @s glib.var5 = @s glib.res
# tellraw @a[tag=Debug] ["",{"text":"CosV -> ","color":"gray"},{"text":"Cos(","color":"red"},{"score":{"name":"@e[tag=glib.link.target]","objective":"OriV"}},{"text":") = ","color":"red"},{"score":{"name":"@s","objective":"glib.var5"}}]
# Sin(Theta)
scoreboard players operation @s glib.var = @e[tag=glib.link.target] OriV
function glib:math/sin
scoreboard players operation @s glib.var7 = @s glib.res
# tellraw @a[tag=Debug] ["",{"text":"SinV -> ","color":"gray"},{"text":"Sin(","color":"red"},{"score":{"name":"@e[tag=glib.link.target]","objective":"OriV"}},{"text":") = ","color":"red"},{"score":{"name":"@s","objective":"glib.var7"}}]

# Vector Left -> L = cos(P)*X + sin(P)*Z
scoreboard players operation @s glib.var = @s glib.link.r.x
scoreboard players operation @s glib.var *= @s glib.var4
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.link.l.x = @s glib.var

# tellraw @a[tag=Debug] ["",{"text":"Calc -> ","color":"gray"},{"text":"cos(H)*X= ","color":"red"},{"score":{"name":"@s","objective":"glib.link.l.x"}}]

scoreboard players operation @s glib.var = @s glib.link.r.z
scoreboard players operation @s glib.var *= @s glib.var5
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.link.l.x += @s glib.var

# tellraw @a[tag=Debug] ["",{"text":"Left -> ","color":"gray"},{"text":"cos(H)*X + sin(H)*Z = ","color":"red"},{"score":{"name":"@s","objective":"glib.link.l.x"}}]

# Vector Up -> U = -sin(P)sin(T)*X + cos(T)*Y + cos(P)sin(T)*Z
scoreboard players operation @s glib.var = @s glib.link.r.x
scoreboard players operation @s glib.var *= @s glib.var5
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.var *= @s glib.var7
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.var *= -1 glib.const
scoreboard players operation @s glib.link.l.y = @s glib.var

scoreboard players operation @s glib.var = @s glib.link.r.y
scoreboard players operation @s glib.var *= @s glib.var5
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.link.l.y += @s glib.var

scoreboard players operation @s glib.var = @s glib.link.r.z
scoreboard players operation @s glib.var *= @s glib.var4
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.var *= @s glib.var7
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.link.l.y += @s glib.var

# tellraw @a[tag=Debug] ["",{"text":"Up -> ","color":"gray"},{"text":"-sin(H)sin(V)*X + cos(V)*Y + cos(H)sin(V)*Z = ","color":"red"},{"score":{"name":"@s","objective":"glib.link.l.y"}}]

# Vector Front -> F = -sin(P)cos(T)*X + sin(T)*Y + cos(P)cos(T)*Z
scoreboard players operation @s glib.var = @s glib.link.r.x
scoreboard players operation @s glib.var *= @s glib.var5
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.var *= @s glib.var5
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.var *= -1 glib.const
scoreboard players operation @s glib.link.l.z = @s glib.var

scoreboard players operation @s glib.var = @s glib.link.r.y
scoreboard players operation @s glib.var *= @s glib.var7
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.link.l.z -= @s glib.var

scoreboard players operation @s glib.var = @s glib.link.r.z
scoreboard players operation @s glib.var *= @s glib.var4
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.var *= @s glib.var5
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.link.l.z += @s glib.var

# tellraw @a[tag=Debug] ["",{"text":"Front -> ","color":"gray"},{"text":"-sin(H)cos(V)*X - sin(V)*Y + cos(H)cos(V)*Z = ","color":"red"},{"score":{"name":"@s","objective":"glib.link.l.z"}}]
