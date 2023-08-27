
# if E = 79
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0000000000000017763568394002504646778106689453125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 1448 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 78
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.000000000000003552713678800500929355621337890625
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 1024 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 77
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.00000000000000710542735760100185871124267578125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 724 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 76
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0000000000000142108547152020037174224853515625
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 512 run scoreboard players get #out bs.data
