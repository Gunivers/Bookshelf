scoreboard players add $id.cuid bs.in 1
execute unless entity @e[predicate=bs.id:cuid_equal,sort=arbitrary,limit=1] run function bs.id:update_cuids/shift
execute if score #size bs.cid < #counter bs.cid run function bs.id:update_cuids/loop
