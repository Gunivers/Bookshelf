# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.1
# Created: 06/12/2023 (1.20.3)
# Last modification: 30/03/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#looked-entity
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute unless predicate bs.view:is_looking_at_entity run return fail
execute if entity @n[tag=bs.view.is_lookable,tag=!bs.view.bi,sort=arbitrary] run function bs.view:looked_entity/setup
tag @n[tag=bs.view.is_lookable,sort=arbitrary,limit=255] add bs.view.selected
execute if score #view.looked_entity bs.data matches 1.. if predicate bs.view:looked_entity/b0 run tag @n[tag=bs.view.selected,tag=!bs.view.b0,sort=arbitrary,limit=255] remove bs.view.selected
execute if score #view.looked_entity bs.data matches 2.. if predicate bs.view:looked_entity/b1 run tag @n[tag=bs.view.selected,tag=!bs.view.b1,sort=arbitrary,limit=255] remove bs.view.selected
execute if score #view.looked_entity bs.data matches 4.. if predicate bs.view:looked_entity/b2 run tag @n[tag=bs.view.selected,tag=!bs.view.b2,sort=arbitrary,limit=255] remove bs.view.selected
execute if score #view.looked_entity bs.data matches 8.. if predicate bs.view:looked_entity/b3 run tag @n[tag=bs.view.selected,tag=!bs.view.b3,sort=arbitrary,limit=255] remove bs.view.selected
execute if score #view.looked_entity bs.data matches 16.. if predicate bs.view:looked_entity/b4 run tag @n[tag=bs.view.selected,tag=!bs.view.b4,sort=arbitrary,limit=255] remove bs.view.selected
execute if score #view.looked_entity bs.data matches 32.. if predicate bs.view:looked_entity/b5 run tag @n[tag=bs.view.selected,tag=!bs.view.b5,sort=arbitrary,limit=255] remove bs.view.selected
execute if score #view.looked_entity bs.data matches 64.. if predicate bs.view:looked_entity/b6 run tag @n[tag=bs.view.selected,tag=!bs.view.b6,sort=arbitrary,limit=255] remove bs.view.selected
execute if score #view.looked_entity bs.data matches 128.. if predicate bs.view:looked_entity/b7 run tag @n[tag=bs.view.selected,tag=!bs.view.b7,sort=arbitrary,limit=255] remove bs.view.selected
$execute at @n[tag=bs.view.is_lookable,tag=bs.view.selected,sort=arbitrary] run return run $(run)
