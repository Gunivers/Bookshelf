#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.15
# Last check:

# Original path: glib:link/create_link_ata
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#link
# Parallelizable: <true/false/global>
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.link.r.x dummy [{"text":"GLib ","color":"gold"},{"text":"Relative position X","color":"dark_gray"}]
scoreboard objectives add glib.link.r.y dummy [{"text":"GLib ","color":"gold"},{"text":"Relative position Y","color":"dark_gray"}]
scoreboard objectives add glib.link.r.z dummy [{"text":"GLib ","color":"gold"},{"text":"Relative position Z","color":"dark_gray"}]

scoreboard objectives add glib.link.l.x dummy [{"text":"GLib ","color":"gold"},{"text":"Local position X","color":"dark_gray"}]
scoreboard objectives add glib.link.l.y dummy [{"text":"GLib ","color":"gold"},{"text":"Local position Y","color":"dark_gray"}]
scoreboard objectives add glib.link.l.z dummy [{"text":"GLib ","color":"gold"},{"text":"Local position Z","color":"dark_gray"}]

scoreboard objectives add glib.link.r.v dummy [{"text":"GLib ","color":"gold"},{"text":"Relative orientation V","color":"dark_gray"}]
scoreboard objectives add glib.link.r.h dummy [{"text":"GLib ","color":"gold"},{"text":"Relative orientation H","color":"dark_gray"}]

scoreboard objectives add glib.link.to dummy [{"text":"GLib ","color":"gold"},{"text":"Linked to","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @e remove glib.link.target
tag @e[limit=1,sort=nearest] add glib.link.target
tag @s add glib.linked
scoreboard players operation @s glib.link.to = @e[limit=1,sort=nearest] glib.id

#-------------------#
# Relative Position #
#-------------------#

function glib.entity/location/zzz_accuracy/10-3/get
scoreboard players operation @s glib.link.r.x = location.x.10-3 glib.var0
scoreboard players operation @s glib.link.r.y = location.y.10-3 glib.var0
scoreboard players operation @s glib.link.r.z = location.z.10-3 glib.var0

execute as @e[tag=glib.link.target,limit=1] at @s run function glib.entity/location/zzz_accuracy/10-3/get
scoreboard players operation @s glib.link.r.x -= location.x.10-3 glib.var0
scoreboard players operation @s glib.link.r.y -= location.y.10-3 glib.var0
scoreboard players operation @s glib.link.r.z -= location.z.10-3 glib.var0

# Relative Orientation
function glib.entity/orientation/zzz_accuracy/10-3/get
scoreboard players operation @s glib.link.r.h = orientation.h.10-3 glib.var0
scoreboard players operation @s glib.link.r.h = orientation.h.10-3 glib.var0

execute as @e[tag=glib.link.target,limit=1] at @s run function glib.entity/orientation/zzz_accuracy/10-3/get
scoreboard players operation @s glib.link.r.h -= orientation.h.10-3 glib.var0
scoreboard players operation @s glib.link.r.v -= orientation.v.10-3 glib.var0

#----------------#
# Local Position #
#----------------#

execute as @e[tag=glib.link.target] run function glib:orientation/get

# Cos(h)
scoreboard players operation math.angle glib.var0 = orientation.h glib.var0
function glib:math/cos
scoreboard players operation link.cos.h glib.var0 = cos glib.res0

# Sin(h)
# REDONDANT - scoreboard players operation math.angle glib.var0 = orientation.h glib.var0
function glib:math/sin
scoreboard players operation link.sin.h glib.var0 = @s glib.res0

# Cos(v)
scoreboard players operation math.angle glib.var0 = orientation.h glib.var0
function glib:math/cos
scoreboard players operation link.cos.v glib.var0 = @s glib.res0

# Sin(v)
# REDONDANT - scoreboard players operation math.angle glib.var0 = orientation.h glib.var0
function glib:math/sin
scoreboard players operation link.sin.v glib.var0 = @s glib.res0



# Vector Left -> L = cos(h)*X + sin(h)*Z
scoreboard players operation @s glib.link.l.x = @s glib.link.r.x
scoreboard players operation @s glib.link.l.x *= link.cos.h glib.var0
scoreboard players operation @s glib.link.l.x /= 1000 glib.const

scoreboard players operation tmp glib.var0 = @s glib.link.r.z
scoreboard players operation tmp glib.var0 *= link.sin.h glib.var0
scoreboard players operation tmp glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.link.l.x += tmp glib.var0

# Vector Up -> U = -sin(h)sin(v)*X + cos(v)*Y + cos(h)sin(v)*Z
scoreboard players operation @s glib.link.l.y = @s glib.link.r.x
scoreboard players operation @s glib.link.l.y *= link.sin.h glib.var0
scoreboard players operation @s glib.link.l.y /= 1000 glib.const
scoreboard players operation @s glib.link.l.y *= link.sin.v glib.var0
scoreboard players operation @s glib.link.l.y /= 1000 glib.const
scoreboard players operation @s glib.link.l.y *= -1 glib.const

scoreboard players operation tmp glib.var0 = @s glib.link.r.y
scoreboard players operation tmp glib.var0 *= link.cos.v glib.var0
scoreboard players operation tmp glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.link.l.y += tmp glib.var0

scoreboard players operation tmp glib.var0 = @s glib.link.r.z
scoreboard players operation tmp glib.var0 *= link.cos.h glib.var0
scoreboard players operation tmp glib.var0 /= 1000 glib.const
scoreboard players operation tmp glib.var0 *= link.sin.v glib.var0
scoreboard players operation tmp glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.link.l.y += tmp glib.var0

# Vector Front -> F = -sin(h)cos(v)*X + sin(v)*Y + cos(h)cos(v)*Z
scoreboard players operation @s glib.link.l.z = @s glib.link.r.x
scoreboard players operation @s glib.link.l.z *= link.sin.h glib.var0
scoreboard players operation @s glib.link.l.z /= 1000 glib.const
scoreboard players operation @s glib.link.l.z *= link.cos.v glib.var0
scoreboard players operation @s glib.link.l.z /= 1000 glib.const
scoreboard players operation @s glib.link.l.z *= -1 glib.const

scoreboard players operation tmp glib.var0 = @s glib.link.r.y
scoreboard players operation tmp glib.var0 *= link.sin.v glib.var0
scoreboard players operation tmp glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.link.l.z -= tmp glib.var0

scoreboard players operation tmp glib.var0 = @s glib.link.r.z
scoreboard players operation tmp glib.var0 *= link.cos.h glib.var0
scoreboard players operation tmp glib.var0 /= 1000 glib.const
scoreboard players operation tmp glib.var0 *= link.cos.v glib.var0
scoreboard players operation tmp glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.link.l.z += tmp glib.var0
