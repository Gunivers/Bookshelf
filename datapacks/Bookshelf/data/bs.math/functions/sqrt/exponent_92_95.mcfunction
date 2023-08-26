# if E = 95
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.00000000000000000002710505431213761085018632002174854278564453125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 741455 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 94
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0000000000000000000542101086242752217003726400434970855712890625
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 262144 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 93
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.000000000000000000108420217248550443400745280086994171142578125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 370728 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 92
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.00000000000000000021684043449710088680149056017398834228515625
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 131072 run scoreboard players get #out bs.data