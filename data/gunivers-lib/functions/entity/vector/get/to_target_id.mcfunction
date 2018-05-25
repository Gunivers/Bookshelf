# NAME: Get Vector To TargetID
# PATH: gunivers-lib:entity/vectors/get/forward

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - Var1 (score dummy)
# - Var2 (score dummy)
# - Var3 (score dummy)
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - TargetID (score dummy)

# INPUT:
# - TargetID (score dummy)

# OUTPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# CODE:

tag @s add Source

execute as @e if score @s ID = @e[tag=Source,limit=1] TargetID at @s as @e[tag=Source] run function gunivers-lib:entity/vectors/get_as_to_at

tag @s remove Source