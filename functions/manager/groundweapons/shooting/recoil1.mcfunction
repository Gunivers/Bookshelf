# Ground Weapons / Recoil 1
# Recoil of the main weapon

execute as @a[scores={1stRecoil=10}] at @s run tp @s ~ ~ ~ ~ ~-1
execute as @a[scores={1stRecoil=100}] at @s run tp @s ~ ~ ~ ~ ~-10


# Old fancy system:
# Doesn't handle correclty the recoil when the player is moving :/

# Summons an armor_stand with the orientation of the player
#execute as @a[tag=Recoil1] at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Marker:1,Tags:["RecoilAS"]}
#execute as @e[tag=RecoilAS] at @s run tp @s @p[distance=..0.1,tag=Recoil1]

# Adds the recoil of the current weapon
#execute as @e[tag=RecoilAS] store result score @s Var1 run data get entity @s Rotation[1] 10
#execute as @e[tag=RecoilAS] at @s run scoreboard players operation @s Var1 -= @p[distance=..0.1,tag=Recoil1] 1stRecoil
#execute as @e[tag=RecoilAS] store result entity @s Rotation[1] float 0.1 run scoreboard players get @s Var1

# Teleports the player his new orientation
#execute as @e[tag=RecoilAS] at @s at @p[distance=..0.1,tag=Recoil1] rotated as @s run teleport @p[distance=..0.1,tag=Recoil1] ~ ~ ~ facing ^ ^ ^1