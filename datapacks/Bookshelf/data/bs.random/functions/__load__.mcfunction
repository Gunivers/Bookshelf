scoreboard objectives add bs.random dummy [{"text":"BS ","color":"dark_gray"},{"text":"Random","color":"aqua"}]
execute unless score #lcg bs.random = #lcg bs.random store result score #lcg bs.random run seed

scoreboard players set #3 bs.const 3
scoreboard players set #5 bs.const 5
scoreboard players set #7 bs.const 7
scoreboard players set #8 bs.const 8
scoreboard players set #9 bs.const 9
scoreboard players set #10 bs.const 10
scoreboard players set #100 bs.const 100
scoreboard players set #1000 bs.const 1000
scoreboard players set #10000 bs.const 10000
scoreboard players set #log(10) bs.const 23026
scoreboard players set #exp(-0.9)*65536 bs.const 26645
scoreboard players set #exp(-0.8)*65536 bs.const 29447
scoreboard players set #exp(-0.7)*65536 bs.const 32544
scoreboard players set #exp(-0.6)*65536 bs.const 35967
scoreboard players set #exp(-0.5)*65536 bs.const 39750
scoreboard players set #exp(-0.4)*65536 bs.const 43930
scoreboard players set #exp(-0.3)*65536 bs.const 48550
scoreboard players set #exp(-0.2)*65536 bs.const 53656
scoreboard players set #exp(-0.1)*65536 bs.const 59299
scoreboard players set #65536 bs.const 65536
scoreboard players set #lcg_a bs.random 1630111353
scoreboard players set #lcg_c bs.random 1623164762
scoreboard players set #lcg_m bs.random 2147483647