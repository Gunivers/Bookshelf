# if E = 111
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.000000000000000000000000413590306276513837435704346034981426782906055450439453125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 94906266 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 110
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.00000000000000000000000082718061255302767487140869206996285356581211090087890625
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 67108864 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 109
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0000000000000000000000016543612251060553497428173841399257071316242218017578125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 47453133 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 108
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.000000000000000000000003308722450212110699485634768279851414263248443603515625
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 33554432 run scoreboard players get #out bs.data