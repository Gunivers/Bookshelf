# Compute the current tick
scoreboard players add #bs.log.ticks bs.data 1

# Ouput bs:ctx _
function bs.log:time/get_seconds
execute store success score #success bs.data run data modify storage bs:data log.time.previous_seconds set from storage bs:data log.time.current_seconds
execute if score #success bs.data matches 1 run scoreboard players set #bs.log.ticks bs.data 0