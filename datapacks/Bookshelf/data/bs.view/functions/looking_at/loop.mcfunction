scoreboard players operation #view.looking_at.mid bs.data = #view.looking_at.min bs.data
scoreboard players operation #view.looking_at.mid bs.data += #view.looking_at.max bs.data
scoreboard players operation #view.looking_at.mid bs.data /= 2 bs.const

tag @e[predicate=bs.view:looking_at/slice] add bs.view.looking_at.check
execute if predicate bs.view:looking_at/check run scoreboard players operation #view.looking_at.max bs.data = #view.looking_at.mid bs.data
execute unless score #view.looking_at.max bs.data = #view.looking_at.mid bs.data store result score #view.looking_at.min bs.data run scoreboard players add #view.looking_at.mid bs.data 1
tag @e[tag=bs.view.looking_at.check] remove bs.view.looking_at.check

execute unless score #view.looking_at.min bs.data = #view.looking_at.max bs.data run function bs.view:looking_at/loop
