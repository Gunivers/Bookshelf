# if E = -73
execute store result score #in bs.data run data get storage bs.in math.sqrt 10141204801825835211973625643008
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000191661677085421773281481762202882062983441842020654801857955373822761657720548101 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -74
execute store result score #in bs.data run data get storage bs.in math.sqrt 20282409603651670423947251286016
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000000000000000013552527156068805425093160010874271392822265625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -75
execute store result score #in bs.data run data get storage bs.in math.sqrt 40564819207303340847894502572032
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000000000000000009583083854271088664074088110144103149172092101032740092897768691138082886027405 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -76
execute store result score #in bs.data run data get storage bs.in math.sqrt 81129638414606681695789005144064
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.0000000000000000000067762635780344027125465800054371356964111328125 run scoreboard players get #out bs.data