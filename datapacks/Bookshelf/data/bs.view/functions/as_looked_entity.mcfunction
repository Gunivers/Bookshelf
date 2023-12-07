# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 06/12/2023 (1.20.3)
# Last modification: 06/12/2023 (1.20.3)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#looked-entity
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute if entity @e[tag=bs.view.is_lookable,tag=!bs.view.bi,sort=arbitrary,limit=1] run function bs.view:looked_entity/setup
execute if score #view.looked_entity bs.data matches 1.. unless predicate bs.view:looked_entity/b0 run tag @e[tag=bs.view.b0] remove bs.view.bi
execute if score #view.looked_entity bs.data matches 2.. unless predicate bs.view:looked_entity/b1 run tag @e[tag=bs.view.b1] remove bs.view.bi
execute if score #view.looked_entity bs.data matches 4.. unless predicate bs.view:looked_entity/b2 run tag @e[tag=bs.view.b2] remove bs.view.bi
execute if score #view.looked_entity bs.data matches 8.. unless predicate bs.view:looked_entity/b3 run tag @e[tag=bs.view.b3] remove bs.view.bi
execute if score #view.looked_entity bs.data matches 16.. unless predicate bs.view:looked_entity/b4 run tag @e[tag=bs.view.b4] remove bs.view.bi
execute if score #view.looked_entity bs.data matches 32.. unless predicate bs.view:looked_entity/b5 run tag @e[tag=bs.view.b5] remove bs.view.bi
execute if score #view.looked_entity bs.data matches 64.. unless predicate bs.view:looked_entity/b6 run tag @e[tag=bs.view.b6] remove bs.view.bi
execute if score #view.looked_entity bs.data matches 128.. unless predicate bs.view:looked_entity/b7 run tag @e[tag=bs.view.b7] remove bs.view.bi
$execute as @e[tag=bs.view.is_lookable,tag=bs.view.bi,sort=arbitrary,limit=1] run $(run)
tag @e[tag=bs.view.is_lookable,sort=arbitrary] add bs.view.bi
