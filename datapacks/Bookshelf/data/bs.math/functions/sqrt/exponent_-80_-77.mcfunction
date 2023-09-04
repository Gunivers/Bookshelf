# if E = -77
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 81129638414606681695789005144064
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000000000000067762635780344027125465800054371356964111328125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -78
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 324518553658426726783156020576256
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000000000338813178901720135627329000271856784820556640625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -79
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 324518553658426726783156020576256
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000000000338813178901720135627329000271856784820556640625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -80
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1298074214633706907132624082305024
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.000000000000000000001694065894508600678136645001359283924102783203125 run scoreboard players get #math.sqrt.out bs.data