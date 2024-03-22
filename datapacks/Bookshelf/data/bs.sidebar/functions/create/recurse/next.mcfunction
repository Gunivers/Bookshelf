$scoreboard players display name $$(line) $(id) $(left)
$scoreboard players display numberformat $$(line) $(id) fixed $(right)

$execute if score #sidebar.dynleft bs.data matches 1 run data modify storage bs:data sidebar[{id:'$(id)'}].dyn append value {cmd:'scoreboard players display name $$(line) $(id)',text:'$(dynleft)'}
$execute if score #sidebar.dynright bs.data matches 1 run data modify storage bs:data sidebar[{id:'$(id)'}].dyn append value {cmd:'scoreboard players display numberformat $$(line) $(id) fixed',text:'$(dynright)'}
execute store result storage bs:ctx _.line int 1 run scoreboard players add #sidebar.line bs.data 1

data remove storage bs:ctx _.contents[0]
execute unless data storage bs:ctx _.contents[0] run return 1

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
