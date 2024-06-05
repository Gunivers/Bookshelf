$execute store success score #success bs.data run scoreboard players get $(var)
execute if score #success bs.data matches 0 run return run function bs.dump:format/undefined with storage bs:const dump
$scoreboard players operation #dump.var bs.data = $(var)
function bs.dump:format/score with storage bs:const dump
