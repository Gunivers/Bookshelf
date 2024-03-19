# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.1
# Created: 23/10/2023 (1.20.2)
# Last modification: 19/03/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/health.html#get
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store success score #success bs.data run attribute @s minecraft:generic.max_health modifier value get 68f0b501-5dca-4abb-8b69-057945a9583d
execute if score #success bs.data matches 1 store result storage bs:out health.get_health double 0.00001 run attribute @s minecraft:generic.max_health get 100000
execute if score #success bs.data matches 0 run data modify storage bs:out health.get_health set from entity @s Health
$return run data get storage bs:out health.get_health $(scale)
