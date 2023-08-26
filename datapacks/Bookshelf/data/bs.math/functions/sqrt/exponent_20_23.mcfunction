# if E = 23
execute store result score #in bs.data run data get storage bs.in math.sqrt 128
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000010789593218788872875020003194723727801829227246344089508056640625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 22
execute store result score #in bs.data run data get storage bs.in math.sqrt 256
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000003814697265625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 21
execute store result score #in bs.data run data get storage bs.in math.sqrt 512
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000053947966093944364375100015973618639009146136231720447540283203125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 20
execute store result score #in bs.data run data get storage bs.in math.sqrt 1024
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 0.0000019073486328125 run scoreboard players get #out bs.data