# remove trailing comma
data modify storage bs:out block.state[-1] set string storage bs:out block.state[-1] 0 -1

# move each state entry into a compound.
data modify storage bs:ctx _ set value {0:"",1:"",2:"",3:"",4:"",5:"",6:"",7:""}
data modify storage bs:ctx _.0 set from storage bs:out block.state[0]
data modify storage bs:ctx _.1 set from storage bs:out block.state[1]
data modify storage bs:ctx _.2 set from storage bs:out block.state[2]
data modify storage bs:ctx _.3 set from storage bs:out block.state[3]
data modify storage bs:ctx _.4 set from storage bs:out block.state[4]
data modify storage bs:ctx _.5 set from storage bs:out block.state[5]
data modify storage bs:ctx _.6 set from storage bs:out block.state[6]
data modify storage bs:ctx _.7 set from storage bs:out block.state[7]

function bs.block:get/compile/concat/state with storage bs:ctx _
