execute store result score #result bs.data run data get storage bs:ctx x
execute unless score #result bs.data matches 0 run function bs.math:frexp/e_pos/split
execute unless score #result bs.data matches 0 run function bs.math:frexp/e_pos/chunk
execute if score #result bs.data matches 0 run function bs.math:frexp/e_neg
