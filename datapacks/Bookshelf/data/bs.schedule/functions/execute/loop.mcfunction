data modify entity B5-0-0-0-4 {} merge from storage bs:ctx _[-1]
execute store success score #success bs.data if data storage bs:ctx _[-1].Owner
execute if score #success bs.data matches 0 at B5-0-0-0-4 run function bs.schedule:execute/run with storage bs:ctx _[-1]
execute if score #success bs.data matches 1 as B5-0-0-0-4 at @s on origin run function bs.schedule:execute/run with storage bs:ctx _[-1]

data remove storage bs:ctx _[-1]
execute if data storage bs:ctx _[-1] run function bs.schedule:execute/loop
