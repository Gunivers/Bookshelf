scoreboard players tag @e[tag=HasCollisions] add Collide

execute @e[tag=HasCollisions] ~ ~ ~ function Gunivers-Lib:Map/Tools/Projectiles/TestCollisions

scoreboard players tag @e[tag=CollideGlass] remove Collide
scoreboard players tag @e[tag=CollideBars] remove Collide
scoreboard players tag @e[tag=NoBarsColl] remove CollideBars
scoreboard players tag @e[tag=NoGlassColl] remove CollideGlass

execute @e[tag=CollideGlass] ~ ~ ~ function Gunivers-Lib:Map/Tools/Projectiles/CollideGlass
execute @e[tag=CollideBars] ~ ~ ~ function Gunivers-Lib:Map/Tools/Projectiles/CollideBars
execute @e[tag=Collide] ~ ~ ~ function Gunivers-Lib:Map/Tools/Projectiles/Collide