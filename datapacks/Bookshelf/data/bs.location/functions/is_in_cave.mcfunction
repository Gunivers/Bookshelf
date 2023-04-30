# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 2.0
# Created: ??/??/???? (1.12)
# Last verification: 30/04/2023 (1.19.4)
# Last modification: ??/??/???? (1.16.1)

# Original path : bs.location:get
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/location.html#is_in_cave
# Note          : It was excessively more impressive in 1.12...

# CODE ------------------------------------------------------------------------

execute store result score @s bs.out.0 if block ~ ~ ~ cave_air
