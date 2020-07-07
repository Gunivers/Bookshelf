#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.14
# Last check:

# Original path: glib:biome/get_biome_temperature
# Parallelizable: true
# Note: Allow to get the glib.temperature of the player's glib.biome at y = 62 (sea level).
#		The format of the result is "glib.temperature * 10^8", based on the wiki values.

#__________________________________________________
# PARAMETERS

# Output: glib.biome (score dummy)
# Output: glib.temperature (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add glib.biome dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players set @s[scores={glib.biome=0}] glib.temperature 50000000
scoreboard players set @s[scores={glib.biome=1}] glib.temperature 80000000
scoreboard players set @s[scores={glib.biome=2}] glib.temperature 200000000
scoreboard players set @s[scores={glib.biome=3}] glib.temperature 20000000
scoreboard players set @s[scores={glib.biome=4}] glib.temperature 70000000
scoreboard players set @s[scores={glib.biome=5}] glib.temperature 25000000
scoreboard players set @s[scores={glib.biome=6}] glib.temperature 80000000
scoreboard players set @s[scores={glib.biome=7}] glib.temperature 50000000
scoreboard players set @s[scores={glib.biome=8}] glib.temperature 200000000
scoreboard players set @s[scores={glib.biome=9}] glib.temperature 50000000
scoreboard players set @s[scores={glib.biome=10}] glib.temperature 0
scoreboard players set @s[scores={glib.biome=11}] glib.temperature 0
scoreboard players set @s[scores={glib.biome=12}] glib.temperature 0
scoreboard players set @s[scores={glib.biome=13}] glib.temperature 0
scoreboard players set @s[scores={glib.biome=14}] glib.temperature 90000000
scoreboard players set @s[scores={glib.biome=15}] glib.temperature 90000000
scoreboard players set @s[scores={glib.biome=16}] glib.temperature 80000000
scoreboard players set @s[scores={glib.biome=17}] glib.temperature 200000000
scoreboard players set @s[scores={glib.biome=18}] glib.temperature 70000000
scoreboard players set @s[scores={glib.biome=19}] glib.temperature 25000000
scoreboard players set @s[scores={glib.biome=20}] glib.temperature 20000000
scoreboard players set @s[scores={glib.biome=21}] glib.temperature 95000000
scoreboard players set @s[scores={glib.biome=22}] glib.temperature 95000000
scoreboard players set @s[scores={glib.biome=23}] glib.temperature 95000000
scoreboard players set @s[scores={glib.biome=24}] glib.temperature 50000000
scoreboard players set @s[scores={glib.biome=25}] glib.temperature 20000000
scoreboard players set @s[scores={glib.biome=26}] glib.temperature 5000000
scoreboard players set @s[scores={glib.biome=27}] glib.temperature 60000000
scoreboard players set @s[scores={glib.biome=28}] glib.temperature 60000000
scoreboard players set @s[scores={glib.biome=29}] glib.temperature 70000000
scoreboard players set @s[scores={glib.biome=30}] glib.temperature -50000000
scoreboard players set @s[scores={glib.biome=31}] glib.temperature -50000000
scoreboard players set @s[scores={glib.biome=32}] glib.temperature 30000000
scoreboard players set @s[scores={glib.biome=33}] glib.temperature 30000000
scoreboard players set @s[scores={glib.biome=34}] glib.temperature 20000000
scoreboard players set @s[scores={glib.biome=35}] glib.temperature 120000000
scoreboard players set @s[scores={glib.biome=36}] glib.temperature 120000000
scoreboard players set @s[scores={glib.biome=37}] glib.temperature 200000000
scoreboard players set @s[scores={glib.biome=38}] glib.temperature 200000000
scoreboard players set @s[scores={glib.biome=39}] glib.temperature 200000000
scoreboard players set @s[scores={glib.biome=40}] glib.temperature 50000000
scoreboard players set @s[scores={glib.biome=41}] glib.temperature 50000000
scoreboard players set @s[scores={glib.biome=42}] glib.temperature 50000000
scoreboard players set @s[scores={glib.biome=43}] glib.temperature 50000000
scoreboard players set @s[scores={glib.biome=44}] glib.temperature 50000000
scoreboard players set @s[scores={glib.biome=45}] glib.temperature 50000000
scoreboard players set @s[scores={glib.biome=46}] glib.temperature 50000000
scoreboard players set @s[scores={glib.biome=47}] glib.temperature 50000000
scoreboard players set @s[scores={glib.biome=48}] glib.temperature 50000000
scoreboard players set @s[scores={glib.biome=49}] glib.temperature 50000000
scoreboard players set @s[scores={glib.biome=50}] glib.temperature 0
scoreboard players set @s[scores={glib.biome=51}] glib.temperature 0
scoreboard players set @s[scores={glib.biome=52}] glib.temperature 80000000
scoreboard players set @s[scores={glib.biome=53}] glib.temperature 200000000
scoreboard players set @s[scores={glib.biome=54}] glib.temperature 20000000
scoreboard players set @s[scores={glib.biome=55}] glib.temperature 70000000
scoreboard players set @s[scores={glib.biome=56}] glib.temperature 25000000
scoreboard players set @s[scores={glib.biome=57}] glib.temperature 80000000
scoreboard players set @s[scores={glib.biome=58}] glib.temperature 0
scoreboard players set @s[scores={glib.biome=59}] glib.temperature 95000000
scoreboard players set @s[scores={glib.biome=60}] glib.temperature 95000000
scoreboard players set @s[scores={glib.biome=61}] glib.temperature 60000000
scoreboard players set @s[scores={glib.biome=62}] glib.temperature 60000000
scoreboard players set @s[scores={glib.biome=63}] glib.temperature 70000000
scoreboard players set @s[scores={glib.biome=64}] glib.temperature -50000000
scoreboard players set @s[scores={glib.biome=65}] glib.temperature 25000000
scoreboard players set @s[scores={glib.biome=66}] glib.temperature 25000000
scoreboard players set @s[scores={glib.biome=67}] glib.temperature 20000000
scoreboard players set @s[scores={glib.biome=68}] glib.temperature 110000000
scoreboard players set @s[scores={glib.biome=69}] glib.temperature 110000000
scoreboard players set @s[scores={glib.biome=70}] glib.temperature 200000000
scoreboard players set @s[scores={glib.biome=71}] glib.temperature 200000000
scoreboard players set @s[scores={glib.biome=72}] glib.temperature 200000000
scoreboard players set @s[scores={glib.biome=73}] glib.temperature 95000000
scoreboard players set @s[scores={glib.biome=74}] glib.temperature 95000000
