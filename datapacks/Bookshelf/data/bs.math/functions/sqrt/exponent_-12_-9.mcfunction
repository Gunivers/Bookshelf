
# if E = -9
execute store result score #in bs.data run data get storage bs.in math.sqrt 549755813888
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00000000008231806349783991146102907710818273774588949009967109304852783679962158203125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -10
execute store result score #in bs.data run data get storage bs.in math.sqrt 1099511627776
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000582076609134674072265625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -11
execute store result score #in bs.data run data get storage bs.in math.sqrt 2199023255552
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000000041159031748919955730514538554091368872944745049835546524263918399810791015625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -12
execute store result score #in bs.data run data get storage bs.in math.sqrt 4398046511104
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.00000000002910383045673370361328125 run scoreboard players get #out bs.data
