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
scoreboard players operation #BACKUP.UPDATE_LINK.VAR0 bs = @s bs.var0
scoreboard players operation #BACKUP.UPDATE_LINK.VAR1 bs = @s bs.var1
scoreboard players operation #BACKUP.UPDATE_LINK.VAR2 bs = @s bs.var2
scoreboard players operation #BACKUP.UPDATE_LINK.VAR3 bs = @s bs.var3
scoreboard players operation #BACKUP.UPDATE_LINK.VAR4 bs = @s bs.var4
scoreboard players operation #BACKUP.UPDATE_LINK.RES0 bs = @s bs.res0
scoreboard players operation #BACKUP.UPDATE_LINK.RES1 bs = @s bs.res1
scoreboard players operation #BACKUP.UPDATE_LINK.RES2 bs = @s bs.res2
scoreboard players operation #BACKUP.UPDATE_LINK.ORIH bs = @s bs.oriH
scoreboard players operation #BACKUP.UPDATE_LINK.ORIV bs = @s bs.oriV
# End Backup

# Calcul
scoreboard players operation @s bs.var0 = @s bs.link.rx
scoreboard players operation @s bs.var1 = @s bs.link.ry
scoreboard players operation @s bs.var2 = @s bs.link.rz

execute at @e[tag=bs.id.match,limit=1,sort=nearest] run function bs.orientation:get
scoreboard players operation @s bs.var3 = @s bs.oriH
scoreboard players operation @s bs.var4 = @s bs.oriV

# tellraw @a [{"score":{"name":"@s","objective":"bs.var0"}}]
# tellraw @a [{"score":{"name":"@s","objective":"bs.var1"}}]
# tellraw @a [{"score":{"name":"@s","objective":"bs.var2"}}]
# tellraw @a [{"score":{"name":"@s","objective":"bs.var3"}}]
# tellraw @a [{"score":{"name":"@s","objective":"bs.var4"}}]


# f: rx, ry, rz, rh, rv -> lx, ly, lz
function bs.math:algebra/basis_rotation_3d

# tellraw @a [{"score":{"name":"@s","objective":"bs.res0"}}]
# tellraw @a [{"score":{"name":"@s","objective":"bs.res1"}}]
# tellraw @a [{"score":{"name":"@s","objective":"bs.res2"}}]

scoreboard players operation @s bs.link.lx = @s bs.res0
scoreboard players operation @s bs.link.ly = @s bs.res1
scoreboard players operation @s bs.link.lz = @s bs.res2

# Start Restore
scoreboard players operation @s bs.var0 = #BACKUP.UPDATE_LINK.VAR0 bs
scoreboard players operation @s bs.var1 = #BACKUP.UPDATE_LINK.VAR1 bs
scoreboard players operation @s bs.var2 = #BACKUP.UPDATE_LINK.VAR2 bs
scoreboard players operation @s bs.var3 = #BACKUP.UPDATE_LINK.VAR3 bs
scoreboard players operation @s bs.var4 = #BACKUP.UPDATE_LINK.VAR4 bs
scoreboard players operation @s bs.res0 = #BACKUP.UPDATE_LINK.RES0 bs
scoreboard players operation @s bs.res1 = #BACKUP.UPDATE_LINK.RES1 bs
scoreboard players operation @s bs.res2 = #BACKUP.UPDATE_LINK.RES2 bs
scoreboard players operation @s bs.oriH = #BACKUP.UPDATE_LINK.ORIH bs
scoreboard players operation @s bs.oriV = #BACKUP.UPDATE_LINK.ORIV bs
# End Restore
