# if E = -85
execute store result score #in bs.data run data get storage bs.in math.sqrt 41538374868278621028243970633760768
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000002994713704459715207523152534420032234116278781572731279030552715980650901883564 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -86
execute store result score #in bs.data run data get storage bs.in math.sqrt 83076749736557242056487941267521536
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000000000000000000211758236813575084767080625169910490512847900390625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -87
execute store result score #in bs.data run data get storage bs.in math.sqrt 166153499473114484112975882535043072
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000001497356852229857603761576267210016117058139390786365639515276357990325450941782 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -88
execute store result score #in bs.data run data get storage bs.in math.sqrt 332306998946228968225951765070086144
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.0000000000000000000001058791184067875423835403125849552452564239501953125 run scoreboard players get #out bs.data