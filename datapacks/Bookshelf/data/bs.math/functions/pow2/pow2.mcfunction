execute if score $math.pow2.exp bs.in matches 0..7 run function bs.math:pow2/group_1
execute if score $math.pow2.exp bs.in matches 8..15 run function bs.math:pow2/group_2
execute if score $math.pow2.exp bs.in matches 16..23 run function bs.math:pow2/group_3
execute if score $math.pow2.exp bs.in matches 24.. run function bs.math:pow2/group_4

scoreboard players get $math.pow2 bs.out
