scoreboard players remove $bitwise.size bs.out 1
execute store result storage bs:out math.frexp.x double 0.000000002 run data get storage bs:out math.frexp.x 1000000000
execute store result score #math.frexp.normalize bs.data run data get storage bs:out math.frexp.x 2
execute if score #math.frexp.normalize bs.data matches -1..0 run function bs.math:frexp/normalize
