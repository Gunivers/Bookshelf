scoreboard players operation $math.gcd bs.out %= #math.gcd.b bs.data
scoreboard players operation $math.gcd bs.out >< #math.gcd.b bs.data
execute unless score #math.gcd.b bs.data matches 0 run function bs.math:gcd/loop
