# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, theogiraudet
# Contributors:

# Version: 2.2
# Created: ??/??/2019 (1.14)
# Last modification: 20/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/schedule.html#clear
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players set #schedule.suid bs.data 0
data modify storage bs:data schedule set value []
schedule clear bs.schedule:execute/callback
