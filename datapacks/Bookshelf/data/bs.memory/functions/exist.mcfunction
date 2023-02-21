# NAME: Variable Exist
# PATH: bs.memory:exist

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# INPUT:
# - @s ArmorItems[0].tag.Buffer1 ~ Variable Name (NBT)

# OUTPUT:
# - bs.in.0

# NOTE:
# Return 1 if the variable exists, 0 else.
# If the executing entity is not a valid Memory, gives an arbitrary result.

# CODE:
function bs.memory:get
execute if data entity @s ArmorItems[0].tag.Output run scoreboard players set @s bs.out.0 1
execute unless data entity @s ArmorItems[0].tag.Output run scoreboard players set @s bs.out.0 0
