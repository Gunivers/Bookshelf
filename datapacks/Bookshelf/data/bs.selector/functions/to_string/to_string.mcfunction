data remove storage bs:out selector
execute unless entity @s run return fail
execute store success score #success bs.data run function bs.selector:to_string/cache/get with entity @s
execute if score #success bs.data matches 0 run function bs.selector:to_string/generate
