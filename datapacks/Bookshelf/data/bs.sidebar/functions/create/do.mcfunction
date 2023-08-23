$scoreboard objectives add bs.sidebar.$(id) dummy $(name)
$data modify storage bs:sidebar registry append value {id:'$(id)',refresh:[]}

execute store result storage bs:sidebar do.line int 1 run scoreboard players set #sidebar.line bs.data 0
data modify storage bs:sidebar do.guard set from storage bs:sidebar do.contents[0]
data modify entity @s CustomName set from storage bs:sidebar do.contents[0]
data modify storage bs:sidebar do.rawtext set from entity @s CustomName
data modify entity @s text set from storage bs:sidebar do.contents[0]
data modify storage bs:sidebar do.text set from entity @s text

function bs.sidebar:create/loop with storage bs:sidebar do
