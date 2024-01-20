data modify entity B5-0-0-0-1 {} merge from storage bs:ctx _[-1]
execute if data storage bs:ctx _[-1].selector at B5-0-0-0-1 run function bs.schedule:execute/run/as with storage bs:ctx _[-1]
execute unless data storage bs:ctx _[-1].selector at B5-0-0-0-1 run function bs.schedule:execute/run/cmd with storage bs:ctx _[-1]

data remove storage bs:ctx _[-1]
execute if data storage bs:ctx _[-1] run function bs.schedule:execute/loop
