data modify storage bs:data schedule.id_compare set from storage bs:data schedule.id
scoreboard players set #compare bs.data -1
execute store success score #compare bs.data run data modify storage bs:data schedule.id_compare set from storage bs:data schedule.tail[0].id
execute if score #compare bs.data matches 0 run data remove storage bs:data schedule.tail[0]
execute if score #compare bs.data matches 0 run return 1
data modify storage bs:data schedule.head append from storage bs:data schedule.tail[0]
data remove storage bs:data schedule.tail[0]
scoreboard players remove #size bs.data 1
execute if score #size bs.data matches 1.. run function bs.schedule:cancel/remove_id
return 0
