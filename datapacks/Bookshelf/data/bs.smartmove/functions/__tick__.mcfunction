# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: (1.0)
# Created: 03/08/2023 (1.20.1)
# Last verification: 03/08/2023 (1.20.1)
# Last modification: 03/08/2023 (1.20.1)

# Execution     : Do not execute this function. It is automatically executed via the minecraft "tick" tag.
# Original path : bs.smartmove:__tick__
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/smartmove.html
# Note          : 

# CODE ------------------------------------------------------------------------

execute if entity @a[tag=bs.smartmove.is_sliding] run function bs.smartmove:slide/child/animation