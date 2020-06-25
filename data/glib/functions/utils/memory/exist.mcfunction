# NAME: Variable Exist
# PATH: glib:utils/memory/exist

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# INPUT:
# - @s ArmorItems[0].tag.Buffer1 ~ Variable Name (NBT)

# OUTPUT:
# - glib.var0

# NOTE:
# Return 1 if the variable exists, 0 else.
# If the executing entity is not a valid Memory, gives an arbitrary result.

# CODE:
function glib:utils/memory/get
execute if data entity @s ArmorItems[0].tag.Output run scoreboard players set @s glib.res0 1
execute unless data entity @s ArmorItems[0].tag.Output run scoreboard players set @s glib.res0 0
