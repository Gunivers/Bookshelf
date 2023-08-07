# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

# Scoreboard declaration
scoreboard objectives add bs.plot.i dummy
scoreboard objectives add bs.plot.n dummy
scoreboard objectives add bs.plot.x dummy
scoreboard objectives add bs.plot.y dummy

# Special constants
scoreboard players set $plot.resolution bs.const 200
scoreboard players set $plot.origin_x bs.const 27000
scoreboard players set $plot.origin_y bs.const 110000
scoreboard players set $plot.origin_z bs.const 25500
scoreboard players set $plot.size_x bs.const -24000
scoreboard players set $plot.size_y bs.const 12000
scoreboard players set $plot.size_z bs.const 0
# Note: every value is a position shifted by 3 digits to have a miliblock accuracy

scoreboard players operation $plot.half_size_x bs.const = $plot.size_x bs.const
scoreboard players operation $plot.half_size_x bs.const /= 2 bs.const
scoreboard players operation $plot.half_size_y bs.const = $plot.size_y bs.const
scoreboard players operation $plot.half_size_y bs.const /= 2 bs.const
scoreboard players operation $plot.half_size_z bs.const = $plot.size_z bs.const
scoreboard players operation $plot.half_size_z bs.const /= 2 bs.const

scoreboard players operation $plot.step_x bs.const = $plot.size_x bs.const
scoreboard players operation $plot.step_x bs.const /= $plot.resolution bs.const
scoreboard players operation $plot.step_z bs.const = $plot.size_z bs.const
scoreboard players operation $plot.step_z bs.const /= $plot.resolution bs.const

# Team declaration
team add bs.plot.new