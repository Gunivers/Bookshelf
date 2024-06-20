# Setup plot
scoreboard players set #plot.x_min bs.data 0
scoreboard players set #plot.x_max bs.data 10000
function #bs.plot:setup

# Compute function
execute as @e[tag=bs.plot.new] run scoreboard players operation @s bs.in.0 = @s bs.plot.x
execute as @e[tag=bs.plot.new] run function #bs.math:sqrt
execute as @e[tag=bs.plot.new] run scoreboard players operation @s bs.plot.y = @s bs.out.0

# Draw it
function #bs.plot:draw
# function #bs.plot:set_labels { \
#     Title:"y = sqrt(x)", \
#     Xmin:0, \
#     Xmax:100, \
#     Ymin:0, \
#     Ymax:10 \
# }
