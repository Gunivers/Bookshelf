scoreboard players operation @s glib.var /= 10 glib.const
scoreboard players add @s glib.var2 1

execute unless entity @s[scores={glib.var=0}] run function glib:math/child/log-digits
