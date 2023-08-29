scoreboard players remove #counter bs.cid 1
scoreboard players remove @e[predicate=bs.id:cuid_upper,sort=arbitrary] bs.cid 1
execute if score #size bs.cid < #counter bs.cid unless entity @e[predicate=bs.id:cuid_match,sort=arbitrary,limit=1] run function bs.id:update_cuids/shift
