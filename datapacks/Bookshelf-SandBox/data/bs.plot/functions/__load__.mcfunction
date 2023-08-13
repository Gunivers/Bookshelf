# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

# Scoreboard declaration
scoreboard objectives add bs.plot.n dummy
scoreboard objectives add bs.plot.x dummy
scoreboard objectives add bs.plot.y dummy

# Default windows
scoreboard players set #plot.x_min bs.data 0
scoreboard players set #plot.x_max bs.data 100

# Special constants
scoreboard players set #plot.resolution bs.data 200
scoreboard players set #plot.origin_x bs.data 3000
scoreboard players set #plot.origin_y bs.data 111000
scoreboard players set #plot.origin_z bs.data 25500
scoreboard players set #plot.size_x bs.data 24000
scoreboard players set #plot.size_y bs.data 12000
scoreboard players set #plot.size_z bs.data 0
# Note: every value is a position shifted by 3 digits to have a miliblock accuracy

# Compute other usefull constants
scoreboard players operation #plot.limit_x bs.data = #plot.origin_x bs.data
scoreboard players operation #plot.limit_x bs.data += #plot.size_x bs.data
scoreboard players operation #plot.limit_y bs.data = #plot.origin_y bs.data
scoreboard players operation #plot.limit_y bs.data += #plot.size_y bs.data
scoreboard players operation #plot.limit_z bs.data = #plot.origin_z bs.data
scoreboard players operation #plot.limit_z bs.data += #plot.size_z bs.data

scoreboard players operation #plot.half_size_x bs.data = #plot.size_x bs.data
scoreboard players operation #plot.half_size_x bs.data /= 2 bs.const
scoreboard players operation #plot.half_size_y bs.data = #plot.size_y bs.data
scoreboard players operation #plot.half_size_y bs.data /= 2 bs.const
scoreboard players operation #plot.half_size_z bs.data = #plot.size_z bs.data
scoreboard players operation #plot.half_size_z bs.data /= 2 bs.const

scoreboard players operation #plot.N bs.data = #plot.resolution bs.data
scoreboard players operation #plot.N-1 bs.data = #plot.N bs.data
scoreboard players remove #plot.N-1 bs.data 1

scoreboard players operation #plot.step_x bs.data = #plot.size_x bs.data
scoreboard players operation #plot.step_x bs.data /= #plot.N-1 bs.data
scoreboard players operation #plot.step_z bs.data = #plot.size_z bs.data
scoreboard players operation #plot.step_z bs.data /= #plot.N-1 bs.data

# Team declaration
team add bs.plot.new