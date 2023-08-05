# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.0.0
# Created: 02/23/2023 (1.19.2)
# Last verification: 02/23/2023 (1.19.2)
# Last modification: 02/23/2023 (1.19.2)

# Original path : bs.vector:max_component
# Documentation : TODO
# Note          :

# CODE ------------------------------------------------------------------------

scoreboard players operation #vector.max_component.abs_x bs.data = @s bs.vector.x
execute if score #vector.max_component.abs_x bs.data matches ..-1 run scoreboard players operation #vector.max_component.abs_x bs.data *= -1 bs.const

scoreboard players operation #vector.max_component.abs_y bs.data = @s bs.vector.y
execute if score #vector.max_component.abs_y bs.data matches ..-1 run scoreboard players operation #vector.max_component.abs_y bs.data *= -1 bs.const

scoreboard players operation #vector.max_component.abs_z bs.data = @s bs.vector.z
execute if score #vector.max_component.abs_z bs.data matches ..-1 run scoreboard players operation #vector.max_component.abs_z bs.data *= -1 bs.const

scoreboard players operation @s bs.out.0 = @s bs.vector.x
execute if score #vector.max_component.abs_y bs.data > #vector.max_component.abs_x bs.data run scoreboard players operation @s bs.out.0 = @s bs.vector.y
execute if score #vector.max_component.abs_z bs.data > #vector.max_component.abs_x bs.data if score #vector.max_component.abs_z bs.data > #vector.max_component.abs_x bs.data run scoreboard players operation @s bs.out.0 = @s bs.vector.z
