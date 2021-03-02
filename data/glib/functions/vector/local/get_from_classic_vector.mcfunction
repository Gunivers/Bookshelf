#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:vector/classic/get_from_local_vector
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#vector
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

# Input: @s glib.var0 (score) : Local Vector Left
# Input: @s glib.var1 (score) : Local Vector Up
# Input: @s glib.var2 (score) : Local Vector Front
# Output: @s Res0 (score) : Vector X
# Output: @s Res1 (score) : Vector Y
# Output: @s Res2 (score) : Vector Z

#__________________________________________________
# INIT

scoreboard objectives add glib.vectorX dummy [{"text":"GLib ","color":"gold"},{"text":"Vector X","color":"dark_gray"}]
scoreboard objectives add glib.vectorY dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Y","color":"dark_gray"}]
scoreboard objectives add glib.vectorZ dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Z","color":"dark_gray"}]

scoreboard objectives add glib.vectorLeft dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Left","color":"dark_gray"}]
scoreboard objectives add glib.vectorUp dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Up","color":"dark_gray"}]
scoreboard objectives add glib.vectorFront dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Front","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Backup
scoreboard players operation backup.localVector.var0 glib = @s glib.var0
scoreboard players operation backup.localVector.var1 glib = @s glib.var1
scoreboard players operation backup.localVector.var2 glib = @s glib.var2
scoreboard players operation backup.localVector.var3 glib = @s glib.var3
scoreboard players operation backup.localVector.var4 glib = @s glib.var4
scoreboard players operation backup.localVector.res0 glib = @s glib.res0
scoreboard players operation backup.localVector.res1 glib = @s glib.res1
scoreboard players operation backup.localVector.res2 glib = @s glib.res2
scoreboard players operation backup.localVector.oriH glib = @s glib.oriH
scoreboard players operation backup.localVector.oriV glib = @s glib.oriV

# Calcul
scoreboard players operation @s glib.var0 = @s glib.vectorX
scoreboard players operation @s glib.var1 = @s glib.vectorY
scoreboard players operation @s glib.var2 = @s glib.vectorZ

execute at @s run function glib:orientation/get
scoreboard players operation @s glib.var3 = @s glib.oriH
scoreboard players operation @s glib.var4 = @s glib.oriV

function glib:math/basis_rotation_3d

scoreboard players operation @s glib.vectorLeft = @s glib.res0
scoreboard players operation @s glib.vectorUp = @s glib.res1
scoreboard players operation @s glib.vectorFront = @s glib.res2

# Restore
scoreboard players operation @s glib.var0 = backup.localVector.var0 glib
scoreboard players operation @s glib.var1 = backup.localVector.var1 glib
scoreboard players operation @s glib.var2 = backup.localVector.var2 glib
scoreboard players operation @s glib.var3 = backup.localVector.var3 glib
scoreboard players operation @s glib.var4 = backup.localVector.var4 glib
scoreboard players operation @s glib.res0 = backup.localVector.res0 glib
scoreboard players operation @s glib.res1 = backup.localVector.res1 glib
scoreboard players operation @s glib.res2 = backup.localVector.res2 glib
scoreboard players operation @s glib.oriH = backup.localVector.oriH glib
scoreboard players operation @s glib.oriV = backup.localVector.oriV glib
