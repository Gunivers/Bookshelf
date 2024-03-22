$execute store success score #success bs.data run data get $(var)
execute if score #success bs.data matches 0 run data modify storage bs:data dump[-1].var set value {}
$execute if score #success bs.data matches 1 run data modify storage bs:data dump[-1].var set from $(var)
