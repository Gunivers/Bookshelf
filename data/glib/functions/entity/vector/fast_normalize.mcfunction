#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/vector/normalize
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#vector
# Note:

#__________________________________________________
# PARAMETERS

# Input: VectorX (score dummy)
# Input: VectorY (score dummy)
# Input: VectorZ (score dummy)

# Output: VectorX (score dummy)
# Output: VectorY (score dummy)
# Output: VectorZ (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy

scoreboard objectives add glib.res2 dummy
scoreboard objectives add glib.res3 dummy
scoreboard objectives add glib.res4 dummy

#__________________________________________________
# CONFIG

# The final vector will have (almost) this length
scoreboard players set @s[tag=!glib.config.override] glib.var 1000

#__________________________________________________
# CODE



### DEBUG
execute if score @s VectorX matches 2147483.. run tellraw @a[tag=glib.debug] ["",{"text":"[ERROR] VectorX too high, int overflow\n - glib:entity/vector/fast_normalize","color":"green"},{"text":" - Entity: ","color":"dark_red"},{"selector":"@s","color":"dark_red"},{"text":" glib.debug.id: ","color":"dark_red"},{"score":{"name":"@s","objective":"glib.debug.id"},"color":"dark_red"}]
### END DEBUG

function glib:entity/vector/length_squared

scoreboard players operation @s VectorX *= 1000 glib.const
scoreboard players operation @s VectorY *= 1000 glib.const
scoreboard players operation @s VectorZ *= 1000 glib.const

scoreboard players operation @s VectorX /= @s glib.res
scoreboard players operation @s VectorY /= @s glib.res
scoreboard players operation @s VectorZ /= @s glib.res

### DEBUG
tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}},{"text":".   Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]
### END DEBUG
