scoreboard players operation @s bs.out.0 = @s bs.in.0

scoreboard players operation @s bs.out.0 -= sandbox.plot.center.z bs.const
scoreboard players operation @s bs.out.0 *= 1000 bs.const
scoreboard players operation @s bs.out.0 /= sandbox.plot.size.z bs.const
scoreboard players operation @s bs.out.0 *= -1 bs.const
