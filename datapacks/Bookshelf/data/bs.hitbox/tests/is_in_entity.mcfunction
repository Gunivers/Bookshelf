# is_in_entity works with all kind of hitboxes
# @batch bs.hitbox
# @dummy 0.5 0.5 0.5

execute positioned 0.5 2 0.5 if function #bs.hitbox:is_in_entity run fail "Should not be inside the entity"
execute positioned 0.5 1.5 0.5 unless function #bs.hitbox:is_in_entity run fail "Should be inside the entity"
execute positioned 0.5 0 0.5 unless function #bs.hitbox:is_in_entity run fail "Should be inside the entity"
