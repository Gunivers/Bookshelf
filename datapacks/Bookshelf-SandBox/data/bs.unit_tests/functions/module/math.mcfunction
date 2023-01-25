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
#                           COMMON/FACTORIAL                                  #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 3
execute as @e[tag=bs.unitest] run function bs.math:common/factorial

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 6 run tellraw @a [{"text":"[bs.math:common/factorial] expected 3! = 6, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 11
execute as @e[tag=bs.unitest] run function bs.math:common/factorial

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 39916800 run tellraw @a [{"text":"[bs.math:common/factorial] expected 11! = 39916800, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

#=============================================================================#
#                                                                             #
#                              COMMON/GCD                                     #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 10
scoreboard players set @e[tag=bs.unitest] bs.var1 8
execute as @e[tag=bs.unitest] run function bs.math:common/gcd

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 2 run tellraw @a [{"text":"[bs.math:common/gcd] expected gcd(10,8) = 2, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 31
scoreboard players set @e[tag=bs.unitest] bs.var1 7
execute as @e[tag=bs.unitest] run function bs.math:common/gcd

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 1 run tellraw @a [{"text":"[bs.math:common/gcd] gcd(7,31) = 1, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

#=============================================================================#
#                                                                             #
#                              COMMON/LOG                                     #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 500
execute as @e[tag=bs.unitest] run function bs.math:common/log

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches -693 run tellraw @a [{"text":"[bs.math:common/log] expected log(500e-3) = -693e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 10000
execute as @e[tag=bs.unitest] run function bs.math:common/log

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 2302 run tellraw @a [{"text":"[bs.math:common/log] log(10000e-3) = 2302e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

#=============================================================================#
#                                                                             #
#                              COMMON/LOG2                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 500
execute as @e[tag=bs.unitest] run function bs.math:common/log2

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches -1000 run tellraw @a [{"text":"[bs.math:common/log2] expected log2(500e-3) = -1000e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 10000
execute as @e[tag=bs.unitest] run function bs.math:common/log2

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 3321 run tellraw @a [{"text":"[bs.math:common/log2] log2(10000e-3) = 3321e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

#=============================================================================#
#                                                                             #
#                             COMMON/LOG10                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 500
execute as @e[tag=bs.unitest] run function bs.math:common/log10

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches -301 run tellraw @a [{"text":"[bs.math:common/log10] expected log10(500e-3) = -301e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 10000
execute as @e[tag=bs.unitest] run function bs.math:common/log10

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 1000 run tellraw @a [{"text":"[bs.math:common/log10] log10(10000e-3) = 1000e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

#=============================================================================#
#                                                                             #
#                              COMMON/LOGA                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 500
scoreboard players set @e[tag=bs.unitest] bs.var1 4
execute as @e[tag=bs.unitest] run function bs.math:common/loga

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches -500 run tellraw @a [{"text":"[bs.math:common/loga] expected log4(500e-3) = -500e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 10000
scoreboard players set @e[tag=bs.unitest] bs.var1 7
execute as @e[tag=bs.unitest] run function bs.math:common/log10

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 1183 run tellraw @a [{"text":"[bs.math:common/loga] log7(10000e-3) = 1183e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

#=============================================================================#
#                                                                             #
#                               COMMON/POW                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 5
scoreboard players set @e[tag=bs.unitest] bs.var1 6
execute as @e[tag=bs.unitest] run function bs.math:common/pow

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 15625 run tellraw @a [{"text":"[bs.math:common/pow] expected 5^6 = 15625, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 2
scoreboard players set @e[tag=bs.unitest] bs.var1 16
execute as @e[tag=bs.unitest] run function bs.math:common/pow

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 65536 run tellraw @a [{"text":"[bs.math:common/pow] expected 2^16 = 65536, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

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