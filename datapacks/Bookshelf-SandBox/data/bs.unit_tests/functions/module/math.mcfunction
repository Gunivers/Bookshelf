tellraw @a ["",{"text":"<"},{"text":"BookShelf","color":"dark_aqua"},{"text":"> Testing bs.math module..."}]

summon armor_stand ~ ~ ~ {Tags:["bs.unitest"]}

#=============================================================================#
#                                                                             #
#                              TRIG/ARCCOS                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 1000
execute as @e[tag=bs.unitest] run function bs.math:trig/arccos

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 0 run tellraw @a [{"text":"[bs.math:trig/arccos] expected arccos(1000e-3) = 0, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -314
execute as @e[tag=bs.unitest] run function bs.math:trig/arccos

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 108 run tellraw @a [{"text":"[bs.math:trig/arccos] expected arccos(-314e-3) = 108, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                              TRIG/ARCSIN                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 1000
execute as @e[tag=bs.unitest] run function bs.math:trig/arcsin

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 90 run tellraw @a [{"text":"[bs.math:trig/arcsin] expected arcsin(1000e-3) = 90, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -314
execute as @e[tag=bs.unitest] run function bs.math:trig/arcsin

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -18..-17 run tellraw @a [{"text":"[bs.math:trig/arcsin] expected arcsin(-314e-3) = -18, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]


#=============================================================================#
#                                                                             #
#                              TRIG/ARCTAN                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 1000
execute as @e[tag=bs.unitest] run function bs.math:trig/arctan

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 45 run tellraw @a [{"text":"[bs.math:trig/arctan] expected arctan(1000e-3) = 45, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -314
execute as @e[tag=bs.unitest] run function bs.math:trig/arctan

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -18..-17 run tellraw @a [{"text":"[bs.math:trig/arctan] expected arctan(-314e-3) = -17, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]


#=============================================================================#
#                                                                             #
#                       ALGEBRA/BASIS_ROTATION_3D                             #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 1000
scoreboard players set @e[tag=bs.unitest] bs.in.1 2000
scoreboard players set @e[tag=bs.unitest] bs.in.2 3000
scoreboard players set @e[tag=bs.unitest] bs.in.3 145
scoreboard players set @e[tag=bs.unitest] bs.in.4 -45
execute as @e[tag=bs.unitest] run function bs.math:algebra/basis_rotation_3d

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 902 run tellraw @a [{"text":"[bs.math:algebra/basis_rotation_3d] expected x' = 902, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]
execute as @e[tag=bs.unitest] unless score @s bs.out.1 matches 3541 run tellraw @a [{"text":"[bs.math:algebra/basis_rotation_3d] expected y' = 3541, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.1"}}]
execute as @e[tag=bs.unitest] unless score @s bs.out.2 matches -721 run tellraw @a [{"text":"[bs.math:algebra/basis_rotation_3d] expected z' = -721, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.2"}}]

#=============================================================================#
#                                                                             #
#                               TRIG/COS                                      #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 45
execute as @e[tag=bs.unitest] run function bs.math:trig/cos

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 705..707 run tellraw @a [{"text":"[bs.math:trig/cos] expected cos(45) = 707e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 180
execute as @e[tag=bs.unitest] run function bs.math:trig/cos

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -1000 run tellraw @a [{"text":"[bs.math:trig/cos] expected cos(180) = -1000e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                             COMMON/DIVIDE                                   #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 9
scoreboard players set @e[tag=bs.unitest] bs.in.1 5
execute as @e[tag=bs.unitest] run function bs.math:common/divide

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 2 run tellraw @a [{"text":"[bs.math:common/divide] expected round(9/5) = 2, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 31
scoreboard players set @e[tag=bs.unitest] bs.in.1 3
execute as @e[tag=bs.unitest] run function bs.math:common/divide

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 10 run tellraw @a [{"text":"[bs.math:common/divide] expected round(31/3) = 10, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                              COMMON/EXP                                     #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 300
execute as @e[tag=bs.unitest] run function bs.math:common/exp

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 20077..20085 run tellraw @a [{"text":"[bs.math:common/exp] expected exp(300e-2) = 20085e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -100
execute as @e[tag=bs.unitest] run function bs.math:common/exp

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 367..370 run tellraw @a [{"text":"[bs.math:common/exp] expected exp(-100e-2) = 367e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                           COMMON/FACTORIAL                                  #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 3
execute as @e[tag=bs.unitest] run function bs.math:common/factorial

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 6 run tellraw @a [{"text":"[bs.math:common/factorial] expected 3! = 6, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 11
execute as @e[tag=bs.unitest] run function bs.math:common/factorial

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 39916800 run tellraw @a [{"text":"[bs.math:common/factorial] expected 11! = 39916800, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                              COMMON/GCD                                     #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 10
scoreboard players set @e[tag=bs.unitest] bs.in.1 8
execute as @e[tag=bs.unitest] run function bs.math:common/gcd

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 2 run tellraw @a [{"text":"[bs.math:common/gcd] expected gcd(10,8) = 2, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 31
scoreboard players set @e[tag=bs.unitest] bs.in.1 7
execute as @e[tag=bs.unitest] run function bs.math:common/gcd

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 1 run tellraw @a [{"text":"[bs.math:common/gcd] gcd(7,31) = 1, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                              COMMON/LOG                                     #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 500
execute as @e[tag=bs.unitest] run function bs.math:common/log

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -694..-693 run tellraw @a [{"text":"[bs.math:common/log] expected log(500e-3) = -693e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 10000
execute as @e[tag=bs.unitest] run function bs.math:common/log

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 2302..2303 run tellraw @a [{"text":"[bs.math:common/log] log(10000e-3) = 2302e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                              COMMON/LOG2                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 500
execute as @e[tag=bs.unitest] run function bs.math:common/log2

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -1002..-1000 run tellraw @a [{"text":"[bs.math:common/log2] expected log2(500e-3) = -1000e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 10000
execute as @e[tag=bs.unitest] run function bs.math:common/log2

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 3321..3323 run tellraw @a [{"text":"[bs.math:common/log2] log2(10000e-3) = 3321e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                             COMMON/LOG10                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 500
execute as @e[tag=bs.unitest] run function bs.math:common/log10

# RESULTS ---------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -302..-301 run tellraw @a [{"text":"[bs.math:common/log10] expected log10(500e-3) = -301e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 10000
execute as @e[tag=bs.unitest] run function bs.math:common/log10

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 1000 run tellraw @a [{"text":"[bs.math:common/log10] log10(10000e-3) = 1000e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                              COMMON/LOGA                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 500
scoreboard players set @e[tag=bs.unitest] bs.in.1 4
execute as @e[tag=bs.unitest] run function bs.math:common/loga

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -501..-500 run tellraw @a [{"text":"[bs.math:common/loga] expected log4(500e-3) = -500e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 10000
scoreboard players set @e[tag=bs.unitest] bs.in.1 7
execute as @e[tag=bs.unitest] run function bs.math:common/loga

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 1183..1184 run tellraw @a [{"text":"[bs.math:common/loga] log7(10000e-3) = 1183e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                         SPECIAL/GET_NEXT_POW2                               #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 42
execute as @e[tag=bs.unitest] run function bs.math:special/get_next_pow2

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 64 run tellraw @a [{"text":"[bs.math:special/get_next_pow2] expected next_pow2(42) = 64, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 4
execute as @e[tag=bs.unitest] run function bs.math:special/get_next_pow2

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 4 run tellraw @a [{"text":"[bs.math:special/get_next_pow2] expected next_pow2(4) = 4, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                               COMMON/POW                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 5
scoreboard players set @e[tag=bs.unitest] bs.in.1 6
execute as @e[tag=bs.unitest] run function bs.math:common/pow

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 15625 run tellraw @a [{"text":"[bs.math:common/pow] expected 5^6 = 15625, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 2
scoreboard players set @e[tag=bs.unitest] bs.in.1 16
execute as @e[tag=bs.unitest] run function bs.math:common/pow

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 65536 run tellraw @a [{"text":"[bs.math:common/pow] expected 2^16 = 65536, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                               TRIG/SIN                                      #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 45
execute as @e[tag=bs.unitest] run function bs.math:trig/sin

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 705..707 run tellraw @a [{"text":"[bs.math:trig/sin] expected sin(45) = 707e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 270
execute as @e[tag=bs.unitest] run function bs.math:trig/sin

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -1000 run tellraw @a [{"text":"[bs.math:trig/sin] expected sin(270) = -1000e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                              COMMON/SQRT                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 16
execute as @e[tag=bs.unitest] run function bs.math:common/sqrt

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 4 run tellraw @a [{"text":"[bs.math:common/sqrt] expected sqrt(16) = 4, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 955
execute as @e[tag=bs.unitest] run function bs.math:common/sqrt

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 31 run tellraw @a [{"text":"[bs.math:common/sqrt] expected sqrt(955) = 31, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                               TRIG/TAN                                      #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 45
execute as @e[tag=bs.unitest] run function bs.math:trig/tan

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 1000 run tellraw @a [{"text":"[bs.math:trig/tan] expected tan(45) = 1000e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 280
execute as @e[tag=bs.unitest] run function bs.math:trig/tan

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -5671..-5623 run tellraw @a [{"text":"[bs.math:trig/tan] expected tan(280) = -5671e-3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]



#=============================================================================#

execute as @e[tag=bs.unitest] run function bs.health:safe_kill