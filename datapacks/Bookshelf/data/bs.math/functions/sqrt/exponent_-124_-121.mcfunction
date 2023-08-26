# if E = -121
execute store result score #in bs.data run data get storage bs.in math.sqrt 2854495385411919762116571938898990272765493248
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000000000022847852359464379940209598803863771317415457012731409294361516692967612472 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -122
execute store result score #in bs.data run data get storage bs.in math.sqrt 5708990770823839524233143877797980545530986496
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000000000000000000000000807793566946316088741610050849573099185363389551639556884765625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -123
execute store result score #in bs.data run data get storage bs.in math.sqrt 11417981541647679048466287755595961091061972992
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000000000011423926179732189970104799401931885658707728506365704647180758346483806236 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -124
execute store result score #in bs.data run data get storage bs.in math.sqrt 22835963083295358096932575511191922182123945984
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 0.0000000000000000000000000004038967834731580443708050254247865495926816947758197784423828125 run scoreboard players get #out bs.data