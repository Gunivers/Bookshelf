execute store result score #math.frexp.x bs.data run data get storage bs:ctx x .000000000000000000000211758236813575084767080625169910490512847900390625
execute unless score #math.frexp.x bs.data matches -8388607..8388607 run return run function bs.math:frexp/e_pos/range_1
execute store result score #math.frexp.x bs.data run data get storage bs:ctx x .0000000000009094947017729282379150390625
execute unless score #math.frexp.x bs.data matches -8388607..8388607 run return run function bs.math:frexp/e_pos/range_2
execute store result score #math.frexp.x bs.data run data get storage bs:ctx x .00390625
execute unless score #math.frexp.x bs.data matches -8388607..8388607 run return run function bs.math:frexp/e_pos/range_3
function bs.math:frexp/e_pos/range_4
