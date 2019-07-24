# NAME: Link to ID
# PATH: gunivers-lib:entity/link/create_link_to_target_id

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# INPUT:
# - TargetId

# OUTPUT:
# - Glib_R_LocX
# - Glib_R_LocY
# - Glib_R_LocZ

# - Glib_L_LocX
# - Glib_L_LocY
# - Glib_L_LocZ

# - Glib_R_OriV
# - Glib_R_OriH

# - Glib_Link_Parent

# NOTE:
# @s must have TargetId defined (equal to another entity id)

# INIT:
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Var4 dummy
scoreboard objectives add Var5 dummy
scoreboard objectives add Var6 dummy
scoreboard objectives add Var7 dummy
scoreboard objectives add Var8 dummy
scoreboard objectives add Var9 dummy

scoreboard objectives add Glib_R_LocX dummy
scoreboard objectives add Glib_R_LocY dummy
scoreboard objectives add Glib_R_LocZ dummy

scoreboard objectives add Glib_L_LocX dummy
scoreboard objectives add Glib_L_LocY dummy
scoreboard objectives add Glib_L_LocZ dummy

scoreboard objectives add Glib_R_OriV dummy
scoreboard objectives add Glib_R_OriH dummy

scoreboard objectives add Glib_Link_Parent dummy

# CODE:
#____________________________________________________________________________________________________

scoreboard players operation @s Glib_Link_Parent = @s TargetId

function gunivers-lib:entity/id/check


#   Relative Position
execute store result score @s Var1 run data get entity @s Pos[0] 1000
execute store result score @s Var2 run data get entity @s Pos[1] 1000
execute store result score @s Var3 run data get entity @s Pos[2] 1000

execute store result score @s Glib_R_LocX run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Pos[0] 1000
execute store result score @s Glib_R_LocY run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Pos[1] 1000
execute store result score @s Glib_R_LocZ run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Pos[2] 1000

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Link/Create_Link_By_Target_Id]=-","color":"green"}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Child X: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":".   Child Y: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}},{"text":".   Child Z: ","color":"red"},{"score":{"name":"@s","objective":"Var3"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Parent X: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocX"}},{"text":".   Parent Y: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocY"}},{"text":".   Parent Z: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocZ"}}]
### END DEBUG

scoreboard players operation @s Glib_R_LocX -= @s Var1
scoreboard players operation @s Glib_R_LocY -= @s Var2
scoreboard players operation @s Glib_R_LocZ -= @s Var3

scoreboard players operation @s Glib_R_LocX *= -1 Constant
scoreboard players operation @s Glib_R_LocY *= -1 Constant
scoreboard players operation @s Glib_R_LocZ *= -1 Constant

#   Relative Orientation
execute store result score @s Var1 run data get entity @s Rotation[0] 1000
execute store result score @s Var2 run data get entity @s Rotation[1] 1000

execute store result score @s Glib_R_OriV run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Rotation[0] 1000
execute store result score @s Glib_R_OriH run data get entity @e[tag=IdMatch,limit=1,sort=nearest] Rotation[1] 1000

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Child Theta: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":".   Child Phi: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Parent Theta: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_OriV"}},{"text":".   Parent Phi: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_OriH"}}]
### END DEBUG

scoreboard players operation @s Glib_R_OriV -= @s Var1
scoreboard players operation @s Glib_R_OriH -= @s Var2

scoreboard players operation @s Glib_R_OriV *= -1 Constant
scoreboard players operation @s Glib_R_OriH *= -1 Constant

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"Diff X: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocX"}},{"text":".   Diff Y: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocY"}},{"text":".   Diff Z: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocZ"}}]
#tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"Diff Theta: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_OriV"}},{"text":".   Diff Phi: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_OriH"}}]
### END DEBUG


execute as @e[tag=IdMatch,limit=1,sort=nearest] run function gunivers-lib:entity/orientation/get

# tellraw @a[tag=Debug] ["",{"text":"----------\nLoc -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Glib_R_LocZ"}}]
# tellraw @a[tag=Debug] ["",{"text":"Ori -> ","color":"gray"},{"text":"H: ","color":"red"},{"score":{"name":"@e[tag=IdMatch,limit=1,sort=nearest]","objective":"OriH"}},{"text":".   V: ","color":"red"},{"score":{"name":"@e[tag=IdMatch,limit=1,sort=nearest]","objective":"OriV"}}]

# Cos(Phi)
scoreboard players operation @s Var1 = @e[tag=IdMatch,limit=1,sort=nearest] OriH
function gunivers-lib:math/cos
scoreboard players operation @s Var4 = @s Res
# tellraw @a[tag=Debug] ["",{"text":"CosH -> ","color":"gray"},{"text":"Cos(","color":"red"},{"score":{"name":"@e[tag=IdMatch,limit=1,sort=nearest]","objective":"OriH"}},{"text":") = ","color":"red"},{"score":{"name":"@s","objective":"Var4"}}]
# Sin(Phi)
scoreboard players operation @s Var1 = @e[tag=IdMatch,limit=1,sort=nearest] OriH
function gunivers-lib:math/sin
scoreboard players operation @s Var5 = @s Res
# tellraw @a[tag=Debug] ["",{"text":"SinH -> ","color":"gray"},{"text":"Sin(","color":"red"},{"score":{"name":"@e[tag=IdMatch,limit=1,sort=nearest]","objective":"OriH"}},{"text":") = ","color":"red"},{"score":{"name":"@s","objective":"Var5"}}]

# Cos(Theta)
scoreboard players operation @s Var1 = @e[tag=IdMatch,limit=1,sort=nearest] OriV
function gunivers-lib:math/cos
scoreboard players operation @s Var6 = @s Res
# tellraw @a[tag=Debug] ["",{"text":"CosV -> ","color":"gray"},{"text":"Cos(","color":"red"},{"score":{"name":"@e[tag=IdMatch,limit=1,sort=nearest]","objective":"OriV"}},{"text":") = ","color":"red"},{"score":{"name":"@s","objective":"Var6"}}]
# Sin(Theta)
scoreboard players operation @s Var1 = @e[tag=IdMatch,limit=1,sort=nearest] OriV
function gunivers-lib:math/sin
scoreboard players operation @s Var7 = @s Res
# tellraw @a[tag=Debug] ["",{"text":"SinV -> ","color":"gray"},{"text":"Sin(","color":"red"},{"score":{"name":"@e[tag=IdMatch,limit=1,sort=nearest]","objective":"OriV"}},{"text":") = ","color":"red"},{"score":{"name":"@s","objective":"Var7"}}]



# Vector Left -> L = cos(P)*X + sin(P)*Z
scoreboard players operation @s Var1 = @s Glib_R_LocX
scoreboard players operation @s Var1 *= @s Var4
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s Glib_L_LocX = @s Var1

# tellraw @a[tag=Debug] ["",{"text":"Calc -> ","color":"gray"},{"text":"cos(H)*X= ","color":"red"},{"score":{"name":"@s","objective":"Glib_L_LocX"}}]

scoreboard players operation @s Var1 = @s Glib_R_LocZ
scoreboard players operation @s Var1 *= @s Var5
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s Glib_L_LocX += @s Var1

# tellraw @a[tag=Debug] ["",{"text":"Left -> ","color":"gray"},{"text":"cos(H)*X + sin(H)*Z = ","color":"red"},{"score":{"name":"@s","objective":"Glib_L_LocX"}}]


# Vector Up -> U = -sin(P)sin(T)*X + cos(T)*Y + cos(P)sin(T)*Z
scoreboard players operation @s Var1 = @s Glib_R_LocX
scoreboard players operation @s Var1 *= @s Var5
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s Var1 *= @s Var7
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s Var1 *= -1 Constant
scoreboard players operation @s Glib_L_LocY = @s Var1

scoreboard players operation @s Var1 = @s Glib_R_LocY
scoreboard players operation @s Var1 *= @s Var6
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s Glib_L_LocY += @s Var1

scoreboard players operation @s Var1 = @s Glib_R_LocZ
scoreboard players operation @s Var1 *= @s Var4
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s Var1 *= @s Var7
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s Glib_L_LocY += @s Var1

# tellraw @a[tag=Debug] ["",{"text":"Up -> ","color":"gray"},{"text":"-sin(H)sin(V)*X + cos(V)*Y + cos(H)sin(V)*Z = ","color":"red"},{"score":{"name":"@s","objective":"Glib_L_LocY"}}]

# Vector Front -> F = -sin(P)cos(T)*X + sin(T)*Y + cos(P)cos(T)*Z
scoreboard players operation @s Var1 = @s Glib_R_LocX
scoreboard players operation @s Var1 *= @s Var5
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s Var1 *= @s Var6
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s Var1 *= -1 Constant
scoreboard players operation @s Glib_L_LocZ = @s Var1

scoreboard players operation @s Var1 = @s Glib_R_LocY
scoreboard players operation @s Var1 *= @s Var7
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s Glib_L_LocZ -= @s Var1

scoreboard players operation @s Var1 = @s Glib_R_LocZ
scoreboard players operation @s Var1 *= @s Var4
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s Var1 *= @s Var6
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s Glib_L_LocZ += @s Var1

# tellraw @a[tag=Debug] ["",{"text":"Front -> ","color":"gray"},{"text":"-sin(H)cos(V)*X - sin(V)*Y + cos(H)cos(V)*Z = ","color":"red"},{"score":{"name":"@s","objective":"Glib_L_LocZ"}}]

