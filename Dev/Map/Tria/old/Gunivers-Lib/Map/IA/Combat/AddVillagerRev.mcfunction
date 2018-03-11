execute @s ~ ~ ~ summon villager ~ ~2.5 ~ {NoAI:1,Tags:["JustSpawned","TargetIA","Invisible","CanBeAlive","Invincible","ImportantTarget","StayOnReached","VillagerRev"],Silent:1}
scoreboard players operation @e[tag=JustSpawned] DynamicId = @s DynamicId
scoreboard players tag @e remove JustSpawned