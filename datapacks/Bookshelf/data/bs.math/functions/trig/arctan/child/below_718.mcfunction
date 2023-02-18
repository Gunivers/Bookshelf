# Taylor expansion
# arctan(x) ~= x - x^3/3 + x^5/5

# Backup
scoreboard players operation #math.arctan.backup.var0 bs.data = @s bs.var0
scoreboard players operation #math.arctan.backup.var1 bs.data = @s bs.var1

# Order 1
scoreboard players operation #math.arctan.order1 bs.data = #math.arctan.x bs.data

# Order 2
scoreboard players operation @s bs.var0 = #math.arctan.x bs.data
scoreboard players set @s bs.var1 3
function bs.math:common/pow/scale/3
scoreboard players operation #math.arctan.order2 bs.data = @s bs.res0
scoreboard players operation #math.arctan.order2 bs.data /= 3 bs.const

# Order 2
scoreboard players operation @s bs.var0 = #math.arctan.x bs.data
scoreboard players set @s bs.var1 5
function bs.math:common/pow/scale/3
scoreboard players operation #math.arctan.order3 bs.data = @s bs.res0
scoreboard players operation #math.arctan.order3 bs.data /= 5 bs.const

# Result
scoreboard players operation @s bs.res0 = #math.arctan.order1 bs.data
scoreboard players operation @s bs.res0 -= #math.arctan.order2 bs.data
scoreboard players operation @s bs.res0 += #math.arctan.order3 bs.data

# To degree
scoreboard players operation @s bs.res0 *= 180 bs.const
scoreboard players operation @s bs.res0 /= Pi3 bs.const

# Backup restoration
scoreboard players operation @s bs.var0 = #math.arctan.backup.var0 bs.data
scoreboard players operation @s bs.var1 = #math.arctan.backup.var1 bs.data
