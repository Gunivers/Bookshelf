# Check multiple vision angles
# @batch bs.view
# @dummy

data modify storage bs:in view.in_view_ata.angle set value 90
execute at @s anchored eyes positioned ^1 ^ ^1 if function #bs.view:in_view_ata run fail "Position must not be within the 90-degree viewing angle"
execute at @s anchored eyes positioned ^.99 ^ ^1 unless function #bs.view:in_view_ata run fail "Position must be within the 90-degree viewing angle"
