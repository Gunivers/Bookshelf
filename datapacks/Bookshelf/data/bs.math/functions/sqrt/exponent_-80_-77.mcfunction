# if E = -77
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 162259276829213363391578010288128
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000000000338813178901720135627329000271856784820556640625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -78
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 324518553658426726783156020576256
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000000000338813178901720135627329000271856784820556640625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -79
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 649037107316853453566312041152512
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000000001694065894508600678136645001359283924102783203125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -80
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 1298074214633706907132624082305024
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.000000000000000000001694065894508600678136645001359283924102783203125 run scoreboard players get #math.sqrt.out bs.data
