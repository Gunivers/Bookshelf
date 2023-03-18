# Taylor expansion
# arctan(x) ~= x - x^3/3 + x^5/5

# Backup
scoreboard players operation #math.arctan.backup.var0 bs.data = @s bs.in.0
scoreboard players operation #math.arctan.backup.var1 bs.data = @s bs.in.1

# Order 1
scoreboard players operation #math.arctan.order1 bs.data = #math.arctan.x bs.data

# Order 2
scoreboard players operation @s bs.in.0 = #math.arctan.x bs.data
scoreboard players set @s bs.in.1 3
function bs.math:pow/scale/3
scoreboard players operation #math.arctan.order2 bs.data = @s bs.out.0
scoreboard players operation #math.arctan.order2 bs.data /= 3 bs.const

# Order 2
scoreboard players operation @s bs.in.0 = #math.arctan.x bs.data
scoreboard players set @s bs.in.1 5
function bs.math:pow/scale/3
scoreboard players operation #math.arctan.order3 bs.data = @s bs.out.0
scoreboard players operation #math.arctan.order3 bs.data /= 5 bs.const

# Result
scoreboard players operation @s bs.out.0 = #math.arctan.order1 bs.data
scoreboard players operation @s bs.out.0 -= #math.arctan.order2 bs.data
scoreboard players operation @s bs.out.0 += #math.arctan.order3 bs.data

# To degree
scoreboard players operation @s bs.out.0 *= 180 bs.const
scoreboard players operation @s bs.out.0 /= Pi3 bs.const

# Backup restoration
scoreboard players operation @s bs.in.0 = #math.arctan.backup.var0 bs.data
scoreboard players operation @s bs.in.1 = #math.arctan.backup.var1 bs.data
