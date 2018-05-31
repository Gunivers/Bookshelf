execute at @s run function gunivers-lib:entity/view/aimed_block
function gunivers-lib:entity/id/check_parent
scoreboard players operation @s TargetId = @s Id
execute at @e[tag=ParentIdMatch,tag=AimedBlock,limit=1] unless block ~ ~ ~ air run function gunivers-lib:object/block/block_to_id
tag @e[tag=ParentIdMatch,tag=AimedBlock,limit=1] add setHeadSlot
scoreboard players set @s UseCarrot 0