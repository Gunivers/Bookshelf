# if E = -29
execute store result score #in bs.data run data get storage bs.in math.sqrt 576460752303423488
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00000000000016077746776921857707232241622691940965994041035092010361040593124926090240478515625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -30
execute store result score #in bs.data run data get storage bs.in math.sqrt 1152921504606846976
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00000000000005684341886080801486968994140625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -31
execute store result score #in bs.data run data get storage bs.in math.sqrt 2305843009213693952
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000000000080388733884609288536161208113459704829970205175460051805202965624630451202392578125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -32
execute store result score #in bs.data run data get storage bs.in math.sqrt 4611686018427387904
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 0.000000000000028421709430404007434844970703125 run scoreboard players get #out bs.data