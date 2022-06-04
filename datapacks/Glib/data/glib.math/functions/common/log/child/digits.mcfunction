scoreboard players operation @s glib.var0 /= 10 glib.const
scoreboard players add @s glib.var1 1

execute unless entity @s[scores={glib.var0=0}] run function glib.math:common/log/child/digits
