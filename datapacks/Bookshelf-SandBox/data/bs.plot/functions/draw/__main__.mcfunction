
scoreboard players operation #plot.o_min bs.data < @e[tag=bs.plot.new] bs.plot.y
scoreboard players operation #plot.o_max bs.data > @e[tag=bs.plot.new] bs.plot.y

# Interpolate y_ position from o_utput ------------------------------------------
## y = A * o + B
## with
## A = (y_max - y_min) / (o_max - o_min)
## B = (y_min - A * o_min)

scoreboard players operation #plot.y_min bs.data = #plot.origin_y bs.data
scoreboard players operation #plot.y_max-y_min bs.data = #plot.size_y bs.data

scoreboard players operation #plot.o_max-o_min bs.data = #plot.o_max bs.data
scoreboard players operation #plot.o_max-o_min bs.data -= #plot.o_min bs.data

scoreboard players operation #plot.A bs.data = #plot.y_max-y_min bs.data
scoreboard players operation #plot.A bs.data /= #plot.o_max-o_min bs.data

scoreboard players operation #plot.B bs.data = #plot.A bs.data
scoreboard players operation #plot.B bs.data *= #plot.o_min bs.data
scoreboard players operation #plot.B bs.data *= -1 bs.const
scoreboard players operation #plot.B bs.data -= #plot.y_min bs.data

execute as @e[tag=bs.plot.new] run scoreboard players operation @s bs.loc.y = @s bs.plot.y
execute as @e[tag=bs.plot.new] run scoreboard players operation @s bs.loc.y *= #plot.A bs.data
execute as @e[tag=bs.plot.new] run scoreboard players operation @s bs.loc.y += #plot.B bs.data

# Place entity at the right y_ position ----------------------------------------

execute as @e[tag=bs.plot.new] run function bs.location.set/y/scale/3
