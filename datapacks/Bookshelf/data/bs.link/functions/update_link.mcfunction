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
scoreboard players operation #BACKUP.UPDATE_LINK.VAR0 bs = @s bs.in.0
scoreboard players operation #BACKUP.UPDATE_LINK.VAR1 bs = @s bs.in.1
scoreboard players operation #BACKUP.UPDATE_LINK.VAR2 bs = @s bs.in.2
scoreboard players operation #BACKUP.UPDATE_LINK.VAR3 bs = @s bs.in.3
scoreboard players operation #BACKUP.UPDATE_LINK.VAR4 bs = @s bs.in.4
scoreboard players operation #BACKUP.UPDATE_LINK.RES0 bs = @s bs.out.0
scoreboard players operation #BACKUP.UPDATE_LINK.RES1 bs = @s bs.out.1
scoreboard players operation #BACKUP.UPDATE_LINK.RES2 bs = @s bs.out.2
scoreboard players operation #BACKUP.UPDATE_LINK.ORIH bs = @s bs.ori.h
scoreboard players operation #BACKUP.UPDATE_LINK.ORIV bs = @s bs.ori.v
# End Backup

# Calcul
scoreboard players operation @s bs.in.0 = @s bs.link.rx
scoreboard players operation @s bs.in.1 = @s bs.link.ry
scoreboard players operation @s bs.in.2 = @s bs.link.rz

execute at @e[tag=bs.id.match,limit=1,sort=nearest] run function bs.orientation:get
scoreboard players operation @s bs.in.3 = @s bs.ori.h
scoreboard players operation @s bs.in.4 = @s bs.ori.v

# tellraw @a [{"score":{"name":"@s","objective":"bs.in.0"}}]
# tellraw @a [{"score":{"name":"@s","objective":"bs.in.1"}}]
# tellraw @a [{"score":{"name":"@s","objective":"bs.in.2"}}]
# tellraw @a [{"score":{"name":"@s","objective":"bs.in.3"}}]
# tellraw @a [{"score":{"name":"@s","objective":"bs.in.4"}}]


# f: rx, ry, rz, rh, rv -> lx, ly, lz
function bs.math:algebra/basis_rotation_3d

# tellraw @a [{"score":{"name":"@s","objective":"bs.out.0"}}]
# tellraw @a [{"score":{"name":"@s","objective":"bs.out.1"}}]
# tellraw @a [{"score":{"name":"@s","objective":"bs.out.2"}}]

scoreboard players operation @s bs.link.lx = @s bs.out.0
scoreboard players operation @s bs.link.ly = @s bs.out.1
scoreboard players operation @s bs.link.lz = @s bs.out.2

# Start Restore
scoreboard players operation @s bs.in.0 = #BACKUP.UPDATE_LINK.VAR0 bs
scoreboard players operation @s bs.in.1 = #BACKUP.UPDATE_LINK.VAR1 bs
scoreboard players operation @s bs.in.2 = #BACKUP.UPDATE_LINK.VAR2 bs
scoreboard players operation @s bs.in.3 = #BACKUP.UPDATE_LINK.VAR3 bs
scoreboard players operation @s bs.in.4 = #BACKUP.UPDATE_LINK.VAR4 bs
scoreboard players operation @s bs.out.0 = #BACKUP.UPDATE_LINK.RES0 bs
scoreboard players operation @s bs.out.1 = #BACKUP.UPDATE_LINK.RES1 bs
scoreboard players operation @s bs.out.2 = #BACKUP.UPDATE_LINK.RES2 bs
scoreboard players operation @s bs.ori.h = #BACKUP.UPDATE_LINK.ORIH bs
scoreboard players operation @s bs.ori.v = #BACKUP.UPDATE_LINK.ORIV bs
# End Restore
