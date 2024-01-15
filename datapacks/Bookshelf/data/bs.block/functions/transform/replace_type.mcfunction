$execute unless data storage bs:const block[{type:"$(type)"}] run return 0
$data modify storage bs:ctx _ set from storage bs:const block[{type:"$(type)"}]

execute store success score #success bs.data run data modify storage bs:out block.group set from storage bs:ctx _.group
execute if score #success bs.data matches 0 run data modify storage bs:out block.type set from storage bs:ctx _.type
execute if score #success bs.data matches 1 run data modify storage bs:out block set from storage bs:ctx _
