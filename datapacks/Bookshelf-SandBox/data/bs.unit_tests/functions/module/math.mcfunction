tellraw @a ["",{"text":"<"},{"text":"BookShelf","color":"dark_aqua"},{"text":"> Testing bs.math module..."}]

summon armor_stand ~ ~ ~ {Tags:["bs.unitest"]}

#=============================================================================#
#                                                                             #
#                             COMMON/DIVIDE                                   #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 9
scoreboard players set @e[tag=bs.unitest] bs.var1 5
execute as @e[tag=bs.unitest] run function bs.math:common/divide

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 2 run tellraw @a [{"text":"[bs.math:common/divide] expected round(9/5) = 2, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 31
scoreboard players set @e[tag=bs.unitest] bs.var1 3
execute as @e[tag=bs.unitest] run function bs.math:common/divide

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 10 run tellraw @a [{"text":"[bs.math:common/divide] expected round(31/3) = 10, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

#=============================================================================#
#                                                                             #
#                              COMMON/EXP                                     #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 300
execute as @e[tag=bs.unitest] run function bs.math:common/exp

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 20085 run tellraw @a [{"text":"[bs.math:common/exp] expected exp(300e-2) = 20085e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 -100
execute as @e[tag=bs.unitest] run function bs.math:common/exp

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 367 run tellraw @a [{"text":"[bs.math:common/exp] expected exp(-100e-2) = 367e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

#=============================================================================#
#                                                                             #
#                              COMMON/SQRT                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 16
execute as @e[tag=bs.unitest] run function bs.math:common/sqrt

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 4 run tellraw @a [{"text":"[bs.math:common/sqrt] expected sqrt(16) = 4, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 955
execute as @e[tag=bs.unitest] run function bs.math:common/sqrt

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 31 run tellraw @a [{"text":"[bs.math:common/sqrt] expected sqrt(955) = 31, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]



#=============================================================================#

execute as @e[tag=bs.unitest] run function bs.health:safe_kill