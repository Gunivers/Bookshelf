
# if E = 103
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0000000000000000000001058791184067875423835403125849552452564239501953125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 5931642 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 102
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.000000000000000000000211758236813575084767080625169910490512847900390625
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 4194304 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 101
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.00000000000000000000042351647362715016953416125033982098102569580078125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 2965821 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 100
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0000000000000000000008470329472543003390683225006796419620513916015625
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 2097152 run scoreboard players get #out bs.data
