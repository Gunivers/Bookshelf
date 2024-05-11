# retrieve state and properties data from the _
data modify storage bs:out block.properties set value {}
data modify storage bs:out block.state set value {0:"",1:"",2:"",3:"",4:"",5:"",6:"",7:""}
execute store success score #block.has_state bs.data run data modify storage bs:out block.state merge from storage bs:out block._[].o[{c:1b}].s
execute if score #block.has_state bs.data matches 1 run data modify storage bs:out block.properties merge from storage bs:out block._[].o[{c:1b}].p

# default to an empty string if state or nbt is missing
execute if score #block.has_state bs.data matches 0 run data modify storage bs:out block.state set value ""
execute unless data storage bs:out block.nbt run data modify storage bs:out block.nbt set value ""

# generate the state and block strings
execute if score #block.has_state bs.data matches 1 run function bs.block:get/compile/concat/state with storage bs:out block.state
return run function bs.block:get/compile/concat/block with storage bs:out block
