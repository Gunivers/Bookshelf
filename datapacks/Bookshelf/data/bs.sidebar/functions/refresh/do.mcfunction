$data modify storage bs:sidebar do.contents set from storage bs:sidebar registry[{id:$(id)}].contents

execute store result storage bs:sidebar do.line int 1 run scoreboard players set #sidebar.line bs.data 0
data modify entity @s text set from storage bs:sidebar do.contents[0]
data modify storage bs:sidebar do.text set from entity @s text
execute if data storage bs:sidebar do.contents[0] run function bs.sidebar:refresh/loop with storage bs:sidebar do
