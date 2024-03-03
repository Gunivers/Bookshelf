execute store result score #dump.depth bs.data if data storage bs:data dump[]
scoreboard players operation #dump.depth bs.data %= 3 bs.const

$execute if score #dump.depth bs.data matches 0 run data modify storage bs:out dump append value '{"text":"}","color":"$(bracket_1)"}'
$execute if score #dump.depth bs.data matches 1 run data modify storage bs:out dump append value '{"text":"}","color":"$(bracket_2)"}'
$execute if score #dump.depth bs.data matches 2 run data modify storage bs:out dump append value '{"text":"}","color":"$(bracket_3)"}'
