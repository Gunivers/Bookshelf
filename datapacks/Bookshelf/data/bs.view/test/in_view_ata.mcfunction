# Check multiple vision angles
# @batch bs.view
# @dummy

execute at @s anchored eyes positioned ^1 ^ ^1 store result score #success bs.data run function #bs.view:in_view_ata {angle:90}
execute if score #success bs.data matches 1 run fail "Position must not be within the 90-degree viewing angle"

execute at @s anchored eyes positioned ^.99 ^ ^1 store result score #success bs.data run function #bs.view:in_view_ata {angle:90}
execute if score #success bs.data matches 0 run fail "Position must be within the 90-degree viewing angle"
