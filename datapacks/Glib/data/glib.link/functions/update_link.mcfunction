#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib.link:update_link
# Parallelizable: true
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

function glib.link:update_link_x
function glib.link:update_link_y
function glib.link:update_link_z
function glib.link:update_link_h
function glib.link:update_link_v

# Start Backup
scoreboard players operation #backup.updateLink.var0 glib = @s glib.var0
scoreboard players operation #backup.updateLink.var1 glib = @s glib.var1
scoreboard players operation #backup.updateLink.var2 glib = @s glib.var2
scoreboard players operation #backup.updateLink.var3 glib = @s glib.var3
scoreboard players operation #backup.updateLink.var4 glib = @s glib.var4
scoreboard players operation #backup.updateLink.res0 glib = @s glib.res0
scoreboard players operation #backup.updateLink.res1 glib = @s glib.res1
scoreboard players operation #backup.updateLink.res2 glib = @s glib.res2
scoreboard players operation #backup.updateLink.oriH glib = @s glib.oriH
scoreboard players operation #backup.updateLink.oriV glib = @s glib.oriV
# End Backup

# Calcul
scoreboard players operation @s glib.var0 = @s glib.link.rx
scoreboard players operation @s glib.var1 = @s glib.link.ry
scoreboard players operation @s glib.var2 = @s glib.link.rz

execute at @e[tag=glib.id.match,limit=1,sort=nearest] run function glib.orientation:get
scoreboard players operation @s glib.var3 = @s glib.oriH
scoreboard players operation @s glib.var4 = @s glib.oriV

function glib.math:basis_rotation_3d

scoreboard players operation @s glib.link.lx = @s glib.res0
scoreboard players operation @s glib.link.ly = @s glib.res1
scoreboard players operation @s glib.link.lz = @s glib.res2

# Start Restore
scoreboard players operation @s glib.var0 = #backup.updateLink.var0 glib
scoreboard players operation @s glib.var1 = #backup.updateLink.var1 glib
scoreboard players operation @s glib.var2 = #backup.updateLink.var2 glib
scoreboard players operation @s glib.var3 = #backup.updateLink.var3 glib
scoreboard players operation @s glib.var4 = #backup.updateLink.var4 glib
scoreboard players operation @s glib.res0 = #backup.updateLink.res0 glib
scoreboard players operation @s glib.res1 = #backup.updateLink.res1 glib
scoreboard players operation @s glib.res2 = #backup.updateLink.res2 glib
scoreboard players operation @s glib.oriH = #backup.updateLink.oriH glib
scoreboard players operation @s glib.oriV = #backup.updateLink.oriV glib
# End Restore
