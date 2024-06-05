scoreboard players remove #counter bs.cid 1
scoreboard players remove @n[predicate=bs.id:cuid_upper,sort=arbitrary,limit=2147483647] bs.cid 1
execute if score #size bs.cid < #counter bs.cid unless entity @n[predicate=bs.id:cuid_equal,sort=arbitrary] run function bs.id:update_cuids/shift
