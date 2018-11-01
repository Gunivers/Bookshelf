#System: Projectile Manager

#Author: KubbyDev
#Contributors:
# - A~Z

# Projectiles / Move

# Moves lauches the movement function until no projectile needs to move anymore
# (If the fastest projectile has 2 blocks/tick speed, then the function will be executed 4 times)

scoreboard players remove @e[tag=Projectile] Var2 1
function gunivers-lib:manager/projectile/move_halfblock

execute if entity @e[tag=Projectile,scores={Var2=1..}] run function gunivers-lib:manager/projectile/move