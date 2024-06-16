# Xn+1 = (aXn + c) mod m
scoreboard players operation #lcg bs.random *= #lcg_a bs.random
scoreboard players operation #lcg bs.random += #lcg_c bs.random
scoreboard players operation #lcg bs.random %= #lcg_m bs.random

# Loop if necessary
execute if score #lcg bs.random >= #max bs.random run function bs.random:uniform/loop