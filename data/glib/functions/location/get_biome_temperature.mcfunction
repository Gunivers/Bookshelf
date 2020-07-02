#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.14
# Last check:

# Original path: glib:location/get_glib.biome_glib.res0
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#location
# Parallelizable: <true/false/global>
# Note: Allow to get the glib.res0 of the player's glib.biome at y = 62 (sea level).
#		The format of the result is "glib.res0 * 10^8", based on the wiki values.

#__________________________________________________
# PARAMETERS

# Output: glib.res0 (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add glib.glib.biome dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players set @s[scores={glib.biome=0}] glib.res0 50000000
scoreboard players set @s[scores={glib.biome=1}] glib.res0 80000000
scoreboard players set @s[scores={glib.biome=2}] glib.res0 200000000
scoreboard players set @s[scores={glib.biome=3}] glib.res0 20000000
scoreboard players set @s[scores={glib.biome=4}] glib.res0 70000000
scoreboard players set @s[scores={glib.biome=5}] glib.res0 25000000
scoreboard players set @s[scores={glib.biome=6}] glib.res0 80000000
scoreboard players set @s[scores={glib.biome=7}] glib.res0 50000000
scoreboard players set @s[scores={glib.biome=8}] glib.res0 200000000
scoreboard players set @s[scores={glib.biome=9}] glib.res0 50000000
scoreboard players set @s[scores={glib.biome=10}] glib.res0 0
scoreboard players set @s[scores={glib.biome=11}] glib.res0 0
scoreboard players set @s[scores={glib.biome=12}] glib.res0 0
scoreboard players set @s[scores={glib.biome=13}] glib.res0 0
scoreboard players set @s[scores={glib.biome=14}] glib.res0 90000000
scoreboard players set @s[scores={glib.biome=15}] glib.res0 90000000
scoreboard players set @s[scores={glib.biome=16}] glib.res0 80000000
scoreboard players set @s[scores={glib.biome=17}] glib.res0 200000000
scoreboard players set @s[scores={glib.biome=18}] glib.res0 70000000
scoreboard players set @s[scores={glib.biome=19}] glib.res0 25000000
scoreboard players set @s[scores={glib.biome=20}] glib.res0 20000000
scoreboard players set @s[scores={glib.biome=21}] glib.res0 95000000
scoreboard players set @s[scores={glib.biome=22}] glib.res0 95000000
scoreboard players set @s[scores={glib.biome=23}] glib.res0 95000000
scoreboard players set @s[scores={glib.biome=24}] glib.res0 50000000
scoreboard players set @s[scores={glib.biome=25}] glib.res0 20000000
scoreboard players set @s[scores={glib.biome=26}] glib.res0 5000000
scoreboard players set @s[scores={glib.biome=27}] glib.res0 60000000
scoreboard players set @s[scores={glib.biome=28}] glib.res0 60000000
scoreboard players set @s[scores={glib.biome=29}] glib.res0 70000000
scoreboard players set @s[scores={glib.biome=30}] glib.res0 -50000000
scoreboard players set @s[scores={glib.biome=31}] glib.res0 -50000000
scoreboard players set @s[scores={glib.biome=32}] glib.res0 30000000
scoreboard players set @s[scores={glib.biome=33}] glib.res0 30000000
scoreboard players set @s[scores={glib.biome=34}] glib.res0 20000000
scoreboard players set @s[scores={glib.biome=35}] glib.res0 120000000
scoreboard players set @s[scores={glib.biome=36}] glib.res0 120000000
scoreboard players set @s[scores={glib.biome=37}] glib.res0 200000000
scoreboard players set @s[scores={glib.biome=38}] glib.res0 200000000
scoreboard players set @s[scores={glib.biome=39}] glib.res0 200000000
scoreboard players set @s[scores={glib.biome=40}] glib.res0 50000000
scoreboard players set @s[scores={glib.biome=41}] glib.res0 50000000
scoreboard players set @s[scores={glib.biome=42}] glib.res0 50000000
scoreboard players set @s[scores={glib.biome=43}] glib.res0 50000000
scoreboard players set @s[scores={glib.biome=44}] glib.res0 50000000
scoreboard players set @s[scores={glib.biome=45}] glib.res0 50000000
scoreboard players set @s[scores={glib.biome=46}] glib.res0 50000000
scoreboard players set @s[scores={glib.biome=47}] glib.res0 50000000
scoreboard players set @s[scores={glib.biome=48}] glib.res0 50000000
scoreboard players set @s[scores={glib.biome=49}] glib.res0 50000000
scoreboard players set @s[scores={glib.biome=50}] glib.res0 0
scoreboard players set @s[scores={glib.biome=51}] glib.res0 0
scoreboard players set @s[scores={glib.biome=52}] glib.res0 80000000
scoreboard players set @s[scores={glib.biome=53}] glib.res0 200000000
scoreboard players set @s[scores={glib.biome=54}] glib.res0 20000000
scoreboard players set @s[scores={glib.biome=55}] glib.res0 70000000
scoreboard players set @s[scores={glib.biome=56}] glib.res0 25000000
scoreboard players set @s[scores={glib.biome=57}] glib.res0 80000000
scoreboard players set @s[scores={glib.biome=58}] glib.res0 0
scoreboard players set @s[scores={glib.biome=59}] glib.res0 95000000
scoreboard players set @s[scores={glib.biome=60}] glib.res0 95000000
scoreboard players set @s[scores={glib.biome=61}] glib.res0 60000000
scoreboard players set @s[scores={glib.biome=62}] glib.res0 60000000
scoreboard players set @s[scores={glib.biome=63}] glib.res0 70000000
scoreboard players set @s[scores={glib.biome=64}] glib.res0 -50000000
scoreboard players set @s[scores={glib.biome=65}] glib.res0 25000000
scoreboard players set @s[scores={glib.biome=66}] glib.res0 25000000
scoreboard players set @s[scores={glib.biome=67}] glib.res0 20000000
scoreboard players set @s[scores={glib.biome=68}] glib.res0 110000000
scoreboard players set @s[scores={glib.biome=69}] glib.res0 110000000
scoreboard players set @s[scores={glib.biome=70}] glib.res0 200000000
scoreboard players set @s[scores={glib.biome=71}] glib.res0 200000000
scoreboard players set @s[scores={glib.biome=72}] glib.res0 200000000
scoreboard players set @s[scores={glib.biome=73}] glib.res0 95000000
scoreboard players set @s[scores={glib.biome=74}] glib.res0 95000000
