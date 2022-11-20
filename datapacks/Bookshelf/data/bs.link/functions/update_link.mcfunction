#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.link:update_link
# Parallelizable: true
# Note: @s must have bs.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

function bs.link:update_link_x
function bs.link:update_link_y
function bs.link:update_link_z
function bs.link:update_link_h
function bs.link:update_link_v

# Start Backup
scoreboard players operation #backup.updateLink.var0 bs = @s bs.var0
scoreboard players operation #backup.updateLink.var1 bs = @s bs.var1
scoreboard players operation #backup.updateLink.var2 bs = @s bs.var2
scoreboard players operation #backup.updateLink.var3 bs = @s bs.var3
scoreboard players operation #backup.updateLink.var4 bs = @s bs.var4
scoreboard players operation #backup.updateLink.res0 bs = @s bs.res0
scoreboard players operation #backup.updateLink.res1 bs = @s bs.res1
scoreboard players operation #backup.updateLink.res2 bs = @s bs.res2
scoreboard players operation #backup.updateLink.oriH bs = @s bs.oriH
scoreboard players operation #backup.updateLink.oriV bs = @s bs.oriV
# End Backup

# Calcul
scoreboard players operation @s bs.var0 = @s bs.link.rx
scoreboard players operation @s bs.var1 = @s bs.link.ry
scoreboard players operation @s bs.var2 = @s bs.link.rz

execute at @e[tag=bs.id.match,limit=1,sort=nearest] run function bs.orientation:get
scoreboard players operation @s bs.var3 = @s bs.oriH
scoreboard players operation @s bs.var4 = @s bs.oriV

function bs.math:basis_rotation_3d

scoreboard players operation @s bs.link.lx = @s bs.res0
scoreboard players operation @s bs.link.ly = @s bs.res1
scoreboard players operation @s bs.link.lz = @s bs.res2

# Start Restore
scoreboard players operation @s bs.var0 = #backup.updateLink.var0 bs
scoreboard players operation @s bs.var1 = #backup.updateLink.var1 bs
scoreboard players operation @s bs.var2 = #backup.updateLink.var2 bs
scoreboard players operation @s bs.var3 = #backup.updateLink.var3 bs
scoreboard players operation @s bs.var4 = #backup.updateLink.var4 bs
scoreboard players operation @s bs.res0 = #backup.updateLink.res0 bs
scoreboard players operation @s bs.res1 = #backup.updateLink.res1 bs
scoreboard players operation @s bs.res2 = #backup.updateLink.res2 bs
scoreboard players operation @s bs.oriH = #backup.updateLink.oriH bs
scoreboard players operation @s bs.oriV = #backup.updateLink.oriV bs
# End Restore
