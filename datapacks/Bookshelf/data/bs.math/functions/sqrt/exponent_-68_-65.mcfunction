# if E = -65
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 39614081257132168796771975168
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000000021684043449710088680149056017398834228515625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -66
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 79228162514264337593543950336
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000000021684043449710088680149056017398834228515625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -67
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 158456325028528675187087900672
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000000108420217248550443400745280086994171142578125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -68
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 316912650057057350374175801344
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.000000000000000000108420217248550443400745280086994171142578125 run scoreboard players get #math.sqrt.out bs.data