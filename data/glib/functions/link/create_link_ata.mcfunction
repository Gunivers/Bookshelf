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

scoreboard objectives add glib.link.rx dummy [{"text":"GLib ","color":"gold"},{"text":"Relative position X","color":"dark_gray"}]
scoreboard objectives add glib.link.ry dummy [{"text":"GLib ","color":"gold"},{"text":"Relative position Y","color":"dark_gray"}]
scoreboard objectives add glib.link.rz dummy [{"text":"GLib ","color":"gold"},{"text":"Relative position Z","color":"dark_gray"}]

scoreboard objectives add glib.link.lx dummy [{"text":"GLib ","color":"gold"},{"text":"Local position X","color":"dark_gray"}]
scoreboard objectives add glib.link.ly dummy [{"text":"GLib ","color":"gold"},{"text":"Local position Y","color":"dark_gray"}]
scoreboard objectives add glib.link.lz dummy [{"text":"GLib ","color":"gold"},{"text":"Local position Z","color":"dark_gray"}]

scoreboard objectives add glib.link.rv dummy [{"text":"GLib ","color":"gold"},{"text":"Relative orientation V","color":"dark_gray"}]
scoreboard objectives add glib.link.rh dummy [{"text":"GLib ","color":"gold"},{"text":"Relative orientation H","color":"dark_gray"}]

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
scoreboard players operation @s glib.link.rx = location.x.10-3 glib.var0
scoreboard players operation @s glib.link.ry = location.y.10-3 glib.var0
scoreboard players operation @s glib.link.rz = location.z.10-3 glib.var0

execute as @e[tag=glib.link.target,limit=1] at @s run function glib.entity/location/zzz_accuracy/10-3/get
scoreboard players operation @s glib.link.rx -= location.x.10-3 glib.var0
scoreboard players operation @s glib.link.ry -= location.y.10-3 glib.var0
scoreboard players operation @s glib.link.rz -= location.z.10-3 glib.var0

# Relative Orientation
function glib.entity/orientation/zzz_accuracy/10-3/get
scoreboard players operation @s glib.link.rh = orientation.h.10-3 glib.var0
scoreboard players operation @s glib.link.rh = orientation.h.10-3 glib.var0

execute as @e[tag=glib.link.target,limit=1] at @s run function glib.entity/orientation/zzz_accuracy/10-3/get
scoreboard players operation @s glib.link.rh -= orientation.h.10-3 glib.var0
scoreboard players operation @s glib.link.rv -= orientation.v.10-3 glib.var0

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
scoreboard players operation @s glib.link.lx = @s glib.link.rx
scoreboard players operation @s glib.link.lx *= link.cos.h glib.var0
scoreboard players operation @s glib.link.lx /= 1000 glib.const

scoreboard players operation tmp glib.var0 = @s glib.link.rz
scoreboard players operation tmp glib.var0 *= link.sin.h glib.var0
scoreboard players operation tmp glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.link.lx += tmp glib.var0

# Vector Up -> U = -sin(h)sin(v)*X + cos(v)*Y + cos(h)sin(v)*Z
scoreboard players operation @s glib.link.ly = @s glib.link.rx
scoreboard players operation @s glib.link.ly *= link.sin.h glib.var0
scoreboard players operation @s glib.link.ly /= 1000 glib.const
scoreboard players operation @s glib.link.ly *= link.sin.v glib.var0
scoreboard players operation @s glib.link.ly /= 1000 glib.const
scoreboard players operation @s glib.link.ly *= -1 glib.const

scoreboard players operation tmp glib.var0 = @s glib.link.ry
scoreboard players operation tmp glib.var0 *= link.cos.v glib.var0
scoreboard players operation tmp glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.link.ly += tmp glib.var0

scoreboard players operation tmp glib.var0 = @s glib.link.rz
scoreboard players operation tmp glib.var0 *= link.cos.h glib.var0
scoreboard players operation tmp glib.var0 /= 1000 glib.const
scoreboard players operation tmp glib.var0 *= link.sin.v glib.var0
scoreboard players operation tmp glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.link.ly += tmp glib.var0

# Vector Front -> F = -sin(h)cos(v)*X + sin(v)*Y + cos(h)cos(v)*Z
scoreboard players operation @s glib.link.lz = @s glib.link.rx
scoreboard players operation @s glib.link.lz *= link.sin.h glib.var0
scoreboard players operation @s glib.link.lz /= 1000 glib.const
scoreboard players operation @s glib.link.lz *= link.cos.v glib.var0
scoreboard players operation @s glib.link.lz /= 1000 glib.const
scoreboard players operation @s glib.link.lz *= -1 glib.const

scoreboard players operation tmp glib.var0 = @s glib.link.ry
scoreboard players operation tmp glib.var0 *= link.sin.v glib.var0
scoreboard players operation tmp glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.link.lz -= tmp glib.var0

scoreboard players operation tmp glib.var0 = @s glib.link.rz
scoreboard players operation tmp glib.var0 *= link.cos.h glib.var0
scoreboard players operation tmp glib.var0 /= 1000 glib.const
scoreboard players operation tmp glib.var0 *= link.cos.v glib.var0
scoreboard players operation tmp glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.link.lz += tmp glib.var0
