# retrieve state and properties data from the _
data modify storage bs:out block.properties set value {}
data modify storage bs:out block.state set value {0:"",1:"",2:"",3:"",4:"",5:"",6:"",7:""}
execute store success score #block.has_state bs.data run data modify storage bs:out block.state merge from storage bs:out block._[].o[{c:1b}].s
execute if score #block.has_state bs.data matches 1 run data modify storage bs:out block.properties merge from storage bs:out block._[].o[{c:1b}].p

# generate the state string or default to an empty one
execute if score #block.has_state bs.data matches 1 run function bs.block:get/compile/concat/state with storage bs:out block.state
execute if score #block.has_state bs.data matches 0 run data modify storage bs:out block.state set value ""

# set the nbt to an empty string if it does not exist
execute store success score #block.has_nbt bs.data run data get storage bs:out block.nbt
execute if score #block.has_nbt bs.data matches 0 run data modify storage bs:out block.nbt set value ""

# generate the full block string representation
data modify storage bs:ctx _ set from storage bs:out block
execute if score #block.has_nbt bs.data matches 1 run data modify entity B5-0-0-0-2 text set value '{"storage":"bs:out","nbt":"block.nbt"}'
execute if score #block.has_nbt bs.data matches 1 run data modify storage bs:ctx _.nbt set string entity B5-0-0-0-2 text 1 -1
return run function bs.block:get/compile/concat/block with storage bs:ctx _
