# @batch bs.hitbox
# @dummy

await entity B5-0-0-0-1

## |TEST CASE|: Player should not be inside the entity
execute positioned ~.5 ~2 ~.5 if function #bs.hitbox:is_in_entity run fail "Should not be inside the entity"

## |TEST CASE|: Player should be inside the entity at various positions
execute positioned ~.5 ~1.5 ~.5 unless function #bs.hitbox:is_in_entity run fail "Should be inside the entity"
execute positioned ~.5 ~ ~.5 unless function #bs.hitbox:is_in_entity run fail "Should be inside the entity"

dummy @s leave
