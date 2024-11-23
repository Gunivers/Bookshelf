# @batch bs.interaction
# @dummy

## === SETUP ===
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:barrier
summon minecraft:interaction ~.5 ~ ~1.5 {Tags: ["bs.packtest"], width: 1.0, height: 2.0}
execute as @n[type=minecraft:interaction,tag=bs.packtest,distance=..2] run function #bs.interaction:on_hover_enter { run: "scoreboard players add #packtest.interaction_hover_count bs.data 1", executor: "target" }
execute as @n[type=minecraft:interaction,tag=bs.packtest,distance=..2] run function #bs.interaction:on_hover_leave { run: "scoreboard players remove #packtest.interaction_hover_count bs.data 1", executor: "target" }
scoreboard players set #packtest.interaction_hover_count bs.data 0

## === EXPECTED BEHAVIORS ===

execute positioned ~.5 ~ ~.5 run dummy on_hover_logout spawn
await delay 2t
assert score #packtest.interaction_hover_count bs.data matches 2
dummy on_hover_logout leave
await delay 1t
assert score #packtest.interaction_hover_count bs.data matches 1
