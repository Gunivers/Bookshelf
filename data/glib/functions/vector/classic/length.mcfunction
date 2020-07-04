#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:vector/classic/length
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#vector
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation vector.length.var0 glib.tmp = @s glib.var0

function glib:vector/classic/length_squared
scoreboard players operation @s glib.var0 = @s glib.res0
function glib:math/sqrt

scoreboard players operation @s glib.var0 = vector.length.var0 glib.tmp
