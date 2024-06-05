$scoreboard objectives add $(id) dummy
$scoreboard objectives modify $(id) displayname $(name)
$data remove storage bs:data sidebar[{id:'$(id)'}]

execute store result storage bs:ctx _.line int 1 run scoreboard players set #sidebar.line bs.data 0

data modify storage bs:ctx _.dynleft set from storage bs:ctx _.contents[0]
data modify storage bs:ctx _.dynleft set from storage bs:ctx _.contents[0][0]
data modify entity @s CustomName set from storage bs:ctx _.dynleft
data modify entity @s text set from storage bs:ctx _.dynleft
data modify storage bs:ctx _.left set from entity @s CustomName
execute store success score #sidebar.dynleft bs.data run data modify storage bs:ctx _.left set from entity @s text

data modify storage bs:ctx _.dynright set value '""'
data modify storage bs:ctx _.dynright set from storage bs:ctx _.contents[0][1]
data modify entity @s CustomName set from storage bs:ctx _.dynright
data modify entity @s text set from storage bs:ctx _.dynright
data modify storage bs:ctx _.right set from entity @s CustomName
execute store success score #sidebar.dynright bs.data run data modify storage bs:ctx _.right set from entity @s text

function bs.sidebar:create/recurse/next with storage bs:ctx _
