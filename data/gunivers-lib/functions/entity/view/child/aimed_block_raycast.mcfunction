# NAME: Aimed block
# PATH: gunivers-lib:entity/view/child/aimed_block_raycast

#CHILD OF: gunivers-lib:entity/view/aimed_block

# CODE:
tp @s ^ ^ ^0.1
scoreboard players remove @s Var1 1
execute at @s if block ~ ~ ~ air if entity @s[scores={Var1=1..}] run function gunivers-lib:entity/view/child/aimed_block_raycast