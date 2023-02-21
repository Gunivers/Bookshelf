# This function use the following approximation: artcan(x) ~= [ pi/2 * sign(x) - 4*x / (4*x² + 1) ] * 180/pi
# Found on https://math.stackexchange.com/questions/982838/asymptotic-approximation-of-the-arctangent

# Denominator (4x² + 1)
scoreboard players operation #math.arctan.denominator bs.data = 4 bs.const
scoreboard players operation #math.arctan.denominator bs.data *= #math.arctan.x bs.data
scoreboard players operation #math.arctan.denominator bs.data *= #math.arctan.x bs.data
scoreboard players operation #math.arctan.denominator bs.data /= 1000 bs.const
scoreboard players operation #math.arctan.denominator bs.data += 1000 bs.const

# Numerator (4x * 180/pi)
scoreboard players operation #math.arctan.numerator bs.data = 4 bs.const
scoreboard players operation #math.arctan.numerator bs.data *= #math.arctan.x bs.data
scoreboard players operation #math.arctan.numerator bs.data *= 180000 bs.const
scoreboard players operation #math.arctan.numerator bs.data /= Pi3 bs.const

# Offset (pi/2 * sign(x) * 180/pi)
scoreboard players operation #math.arctan.offset bs.data = 180 bs.const
scoreboard players operation #math.arctan.offset bs.data /= 2 bs.const
execute if score #math.arctan.x bs.data matches ..-1 run scoreboard players operation #math.arctan.offset bs.data *= -1 bs.const


# Result (offset - numerator / denominator)
scoreboard players operation @s bs.out.0 = #math.arctan.numerator bs.data
scoreboard players operation @s bs.out.0 /= #math.arctan.denominator bs.data
scoreboard players operation @s bs.out.0 *= -1 bs.const
scoreboard players operation @s bs.out.0 += #math.arctan.offset bs.data
