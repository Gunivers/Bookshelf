# if E = -121
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1427247692705959881058285969449495136382746624
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000000000000000161558713389263217748322010169914619837072677910327911376953125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -122
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 5708990770823839524233143877797980545530986496
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000000000000000807793566946316088741610050849573099185363389551639556884765625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -123
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 5708990770823839524233143877797980545530986496
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000000000000000807793566946316088741610050849573099185363389551639556884765625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -124
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 22835963083295358096932575511191922182123945984
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.0000000000000000000000000004038967834731580443708050254247865495926816947758197784423828125 run scoreboard players get #math.sqrt.out bs.data