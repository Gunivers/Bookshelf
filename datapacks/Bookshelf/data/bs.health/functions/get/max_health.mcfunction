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

execute store result score #health.max bs.data run attribute @s minecraft:generic.max_health get 100000
execute store result score #health.mod bs.data run attribute @s minecraft:generic.max_health modifier value get 68f0b501-5dca-4abb-8b69-057945a9583d 100000
execute store result storage bs:out health.get_max_health double 0.00001 run scoreboard players operation #health.max bs.data -= #health.mod bs.data
$return run data get storage bs:out health.get_max_health $(scale)
