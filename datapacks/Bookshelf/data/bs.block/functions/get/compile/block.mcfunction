# retrieve state and properties data from the _
data modify storage bs:out block merge value {state:[],properties:{}}
data modify storage bs:out block.state append from storage bs:out block._[].options[{selected:1b}].state
data modify storage bs:out block.properties merge from storage bs:out block._[].options[{selected:1b}].property

# default to an empty string if state or nbt is missing
execute unless data storage bs:out block.state[] run data modify storage bs:out block.state set value ""
execute unless data storage bs:out block.nbt run data modify storage bs:out block.nbt set value ""

# generate the state and block strings
execute if data storage bs:out block.state[] run function bs.block:get/compile/state
return run function bs.block:get/compile/concat/block with storage bs:out block
