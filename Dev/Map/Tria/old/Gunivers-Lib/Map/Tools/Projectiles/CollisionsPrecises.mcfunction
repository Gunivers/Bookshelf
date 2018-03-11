
scoreboard players tag @e[tag=HasCollisions] add Collide

function Gunivers-Lib:Map/Tools/Projectiles/TestCollisions

tp @e[tag=HasCollisions,score_Tmp_min=500] ~1 ~ ~
execute @e[tag=HasCollisions,score_Tmp_min=500] ~ ~ ~ function Gunivers-Lib:Map/Tools/Projectiles/TestCollisions
tp @e[tag=HasCollisions,score_Tmp_min=500] ~-1 ~ ~

tp @e[tag=HasCollisions,score_Tmp=-500] ~-1 ~ ~
execute @e[tag=HasCollisions,score_Tmp=-500] ~ ~ ~ function Gunivers-Lib:Map/Tools/Projectiles/TestCollisions
tp @e[tag=HasCollisions,score_Tmp=-500] ~1 ~ ~

tp @e[tag=HasCollisions,score_Tmp2_min=500] ~ ~1 ~
execute @e[tag=HasCollisions,score_Tmp2_min=500] ~ ~ ~ function Gunivers-Lib:Map/Tools/Projectiles/TestCollisions
tp @e[tag=HasCollisions,score_Tmp2_min=500] ~ ~-1 ~

tp @e[tag=HasCollisions,score_Tmp2=-500] ~ ~1 ~
execute @e[tag=HasCollisions,score_Tmp2=-500] ~ ~ ~ function Gunivers-Lib:Map/Tools/Projectiles/TestCollisions
tp @e[tag=HasCollisions,score_Tmp2=-500] ~ ~-1 ~

tp @e[tag=HasCollisions,score_Tmp3_min=500] ~ ~ ~1
execute @e[tag=HasCollisions,score_Tmp3_min=500] ~ ~ ~ function Gunivers-Lib:Map/Tools/Projectiles/TestCollisions
tp @e[tag=HasCollisions,score_Tmp3_min=500] ~ ~ ~-1

tp @e[tag=HasCollisions,score_Tmp3=-500] ~ ~ ~-1
execute @e[tag=HasCollisions,score_Tmp3=-500] ~ ~ ~ function Gunivers-Lib:Map/Tools/Projectiles/TestCollisions
tp @e[tag=HasCollisions,score_Tmp3=-500] ~ ~ ~1

scoreboard players tag @e[tag=CollideGlass] remove CollideBlock
scoreboard players tag @e[tag=CollideBars] remove CollideBlock
scoreboard players tag @e[tag=NoBarsColl] remove CollideBars
scoreboard players tag @e[tag=NoGlassColl] remove CollideGlass

execute @e[tag=CollideGlass] ~ ~ ~ function Gunivers-Lib:Map/Tools/Projectiles/CollideGlass
execute @e[tag=CollideBars] ~ ~ ~ function Gunivers-Lib:Map/Tools/Projectiles/CollideBars
execute @e[tag=CollideBlock] ~ ~ ~ function Gunivers-Lib:Map/Tools/Projectiles/Collide


