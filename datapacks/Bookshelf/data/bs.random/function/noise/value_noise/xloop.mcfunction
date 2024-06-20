scoreboard players set #y bs.random 0
data modify storage bs:out random.noise append value []
function bs.random:noise/value_noise/yloop
scoreboard players add #x bs.random 1
scoreboard players operation #tmp bs.random = #x bs.random
scoreboard players operation #tmp bs.random %= #spacing bs.random
execute if score #tmp bs.random matches 0 run function bs.random:noise/value_noise/exec with storage bs:random tmp
execute if score #tmp bs.random matches 0 if score #postpone bs.random matches 1.. if score #x bs.random < #height bs.random run schedule function bs.random:noise/value_noise/xloop 1t
execute if score #tmp bs.random matches 0 if score #postpone bs.random matches 1.. if score #x bs.random <= #width bs.random run return 1
execute if score #x bs.random = #height bs.random unless score #tmp bs.random matches 0 run function bs.random:noise/value_noise/exec with storage bs:random tmp
execute if score #x bs.random < #height bs.random run function bs.random:noise/value_noise/xloop