execute at @s run function gunivers-lib:entity/view/aimed_block
function gunivers-lib:entity/id/check_parent
scoreboard players operation @s TargetId = @s Id
execute at @e[tag=ParentIdMatch,tag=AimedBlock,limit=1] unless block ~ ~ ~ air run function gunivers-lib:object/block/block_to_id
execute at @e[tag=ParentIdMatch,tag=AimedBlock,limit=1] unless block ~ ~ ~ air at @s run function gunivers-lib:object/block/id_to_ridding_falling_block/to_ridding_falling_block
execute at @e[tag=ParentIdMatch,tag=AimedBlock,limit=1] unless block ~ ~ ~ air run setblock ~ ~ ~ air
scoreboard players set @s UseCarrot 0