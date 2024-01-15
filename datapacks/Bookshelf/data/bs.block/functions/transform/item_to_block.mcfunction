$execute store success score #success bs.data run data modify storage bs:out block set from storage bs:const block[{item:"$(item)"}]
execute if score #success bs.data matches 0 run return 0
