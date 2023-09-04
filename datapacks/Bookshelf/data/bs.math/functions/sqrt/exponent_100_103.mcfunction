# if E = 103
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.00000000000000000000005293955920339377119177015629247762262821197509765625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 8388608 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 102
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.000000000000000000000211758236813575084767080625169910490512847900390625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 4194304 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 101
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.000000000000000000000211758236813575084767080625169910490512847900390625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 4194304 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 100
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0000000000000000000008470329472543003390683225006796419620513916015625
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 2097152 run scoreboard players get #math.sqrt.out bs.data