# NAME: Aimed block
# PATH: gunivers-lib:entity/view/child/aimed_block_raycast

#CHILD OF: gunivers-lib:entity/view/aimed_block

# CODE:
tp @s ^ ^ ^0.05
execute at @s if block ~ ~ ~ air run function gunivers-lib:entity/view/child/aimed_block_raycast