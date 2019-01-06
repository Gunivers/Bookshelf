# NAME: FIFO List - Pop
# PATH: gunivers-lib:collections/lists/fifo_list/pop

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - Vars (module)

# Output:
# - Var1 (dummy)

# NOTE: Get the first value inserted in the list. This value is deleted after being returned.

# CODE:

function gunivers-lib:collections/lists/fifo_list/get_size
scoreboard players remove @s[scores={Var1=1..,Var2=1}] Var1 1
execute store result entity @s[scores={Var1=0..,Var2=1}] ArmorItems[2].tag.fifo_size int 1 run scoreboard players get @s Var1
function gunivers-lib:collections/lists/fifo_list/peek
data remove entity @s[scores={Var2=1}] ArmorItems[2].tag.fifo[0]