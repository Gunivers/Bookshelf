# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 2.0
# Created: 18/01/2023 (1.19.2)
# Last modification: 18/01/2023 (1.19.2)
# Last verification: 18/01/2023 (1.19.2)

# Original path : bs.math:arctan
# Documentation : https://bookshelf.docs.gunivers.net/en/bookshelf/math.html#arctangent
# Note:

# INIT ------------------------------------------------------------------------

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

scoreboard players operation #math.arctan.x bs.data = @s bs.in.0

execute if score #math.arctan.x bs.data matches -718..718 run function bs.math:arctan/child/below_718
execute unless score #math.arctan.x bs.data matches -718..718 run function bs.math:arctan/child/above_718