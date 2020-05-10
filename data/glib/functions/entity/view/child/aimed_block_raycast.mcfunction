# NAME: Aimed block
# PATH: glib:entity/view/child/aimed_block_raycast

# CONTRIBUTOR: Syl2010

# CHILD OF: glib:entity/view/aimed_block

# CODE:
tp @s ^ ^ ^0.1
scoreboard players remove @s Var1 1
execute at @s if block ~ ~ ~ #glib:air if entity @s[scores={Var1=1..}] run function glib:entity/view/child/aimed_block_raycast