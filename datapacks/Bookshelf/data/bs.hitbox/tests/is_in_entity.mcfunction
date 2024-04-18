# is_in_entity works with all kind of hitboxes
# @batch bs.hitbox
# @dummy

execute positioned ~.5 ~2 ~.5 if function #bs.hitbox:is_in_entity run fail "Should not be inside the entity"
execute positioned ~.5 ~1.5 ~.5 unless function #bs.hitbox:is_in_entity run fail "Should be inside the entity"
execute positioned ~.5 ~ ~.5 unless function #bs.hitbox:is_in_entity run fail "Should be inside the entity"
