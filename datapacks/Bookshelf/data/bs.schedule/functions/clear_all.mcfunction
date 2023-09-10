# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet, Aksiome
# Contributors:

# Version: 2.0
# Created: ??/??/2019 (1.14)
# Last modification: 10/09/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/schedule.html#clear-all
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players set #schedule.suid bs.data 0
scoreboard players set #schedule.next_time bs.data 0
data modify storage bs:data schedule.commands set value []
