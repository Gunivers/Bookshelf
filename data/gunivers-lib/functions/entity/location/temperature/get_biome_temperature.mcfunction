# NAME: Biome Temperature
# PATH: gunivers-lib:entity/location/Temperature/get_biome_temperature

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.13

# INIT:
scoreboard objectives add Biome dummy
scoreboard objectives add Temperature dummy

# OUTPUT:
# - Temperature(score dummy)

# NOTE: Allow to get the temperature of the player's biome at y = 62 (sea level).
#		The format of the result is "temperature * 10^8", based on the wiki values.

# CODE:

scoreboard players set @s[scores={Biome=0}] Temperature 50000000
scoreboard players set @s[scores={Biome=1}] Temperature 80000000
scoreboard players set @s[scores={Biome=2}] Temperature 200000000
scoreboard players set @s[scores={Biome=3}] Temperature 20000000
scoreboard players set @s[scores={Biome=4}] Temperature 70000000
scoreboard players set @s[scores={Biome=5}] Temperature 25000000
scoreboard players set @s[scores={Biome=6}] Temperature 80000000
scoreboard players set @s[scores={Biome=7}] Temperature 50000000
scoreboard players set @s[scores={Biome=8}] Temperature 200000000
scoreboard players set @s[scores={Biome=9}] Temperature 50000000
scoreboard players set @s[scores={Biome=10}] Temperature 0
scoreboard players set @s[scores={Biome=11}] Temperature 0
scoreboard players set @s[scores={Biome=12}] Temperature 0
scoreboard players set @s[scores={Biome=13}] Temperature 0
scoreboard players set @s[scores={Biome=14}] Temperature 90000000
scoreboard players set @s[scores={Biome=15}] Temperature 90000000
scoreboard players set @s[scores={Biome=16}] Temperature 80000000
scoreboard players set @s[scores={Biome=17}] Temperature 200000000
scoreboard players set @s[scores={Biome=18}] Temperature 70000000
scoreboard players set @s[scores={Biome=19}] Temperature 25000000
scoreboard players set @s[scores={Biome=20}] Temperature 20000000
scoreboard players set @s[scores={Biome=21}] Temperature 95000000
scoreboard players set @s[scores={Biome=22}] Temperature 95000000
scoreboard players set @s[scores={Biome=23}] Temperature 95000000
scoreboard players set @s[scores={Biome=24}] Temperature 50000000
scoreboard players set @s[scores={Biome=25}] Temperature 20000000
scoreboard players set @s[scores={Biome=26}] Temperature 5000000
scoreboard players set @s[scores={Biome=27}] Temperature 60000000
scoreboard players set @s[scores={Biome=28}] Temperature 60000000
scoreboard players set @s[scores={Biome=29}] Temperature 70000000
scoreboard players set @s[scores={Biome=30}] Temperature -50000000
scoreboard players set @s[scores={Biome=31}] Temperature -50000000
scoreboard players set @s[scores={Biome=32}] Temperature 30000000
scoreboard players set @s[scores={Biome=33}] Temperature 30000000
scoreboard players set @s[scores={Biome=34}] Temperature 20000000
scoreboard players set @s[scores={Biome=35}] Temperature 120000000
scoreboard players set @s[scores={Biome=36}] Temperature 120000000
scoreboard players set @s[scores={Biome=37}] Temperature 200000000
scoreboard players set @s[scores={Biome=38}] Temperature 200000000
scoreboard players set @s[scores={Biome=39}] Temperature 200000000
scoreboard players set @s[scores={Biome=40}] Temperature 50000000
scoreboard players set @s[scores={Biome=41}] Temperature 50000000
scoreboard players set @s[scores={Biome=42}] Temperature 50000000
scoreboard players set @s[scores={Biome=43}] Temperature 50000000
scoreboard players set @s[scores={Biome=44}] Temperature 50000000
scoreboard players set @s[scores={Biome=45}] Temperature 50000000
scoreboard players set @s[scores={Biome=46}] Temperature 50000000
scoreboard players set @s[scores={Biome=47}] Temperature 50000000
scoreboard players set @s[scores={Biome=48}] Temperature 50000000
scoreboard players set @s[scores={Biome=49}] Temperature 50000000
scoreboard players set @s[scores={Biome=50}] Temperature 0
scoreboard players set @s[scores={Biome=51}] Temperature 0
scoreboard players set @s[scores={Biome=52}] Temperature 80000000
scoreboard players set @s[scores={Biome=53}] Temperature 200000000
scoreboard players set @s[scores={Biome=54}] Temperature 20000000
scoreboard players set @s[scores={Biome=55}] Temperature 70000000
scoreboard players set @s[scores={Biome=56}] Temperature 25000000
scoreboard players set @s[scores={Biome=57}] Temperature 80000000
scoreboard players set @s[scores={Biome=58}] Temperature 0
scoreboard players set @s[scores={Biome=59}] Temperature 95000000
scoreboard players set @s[scores={Biome=60}] Temperature 95000000
scoreboard players set @s[scores={Biome=61}] Temperature 60000000
scoreboard players set @s[scores={Biome=62}] Temperature 60000000
scoreboard players set @s[scores={Biome=63}] Temperature 70000000
scoreboard players set @s[scores={Biome=64}] Temperature -50000000
scoreboard players set @s[scores={Biome=65}] Temperature 25000000
scoreboard players set @s[scores={Biome=66}] Temperature 25000000
scoreboard players set @s[scores={Biome=67}] Temperature 20000000
scoreboard players set @s[scores={Biome=68}] Temperature 110000000
scoreboard players set @s[scores={Biome=69}] Temperature 110000000
scoreboard players set @s[scores={Biome=70}] Temperature 200000000
scoreboard players set @s[scores={Biome=71}] Temperature 200000000
scoreboard players set @s[scores={Biome=72}] Temperature 200000000
