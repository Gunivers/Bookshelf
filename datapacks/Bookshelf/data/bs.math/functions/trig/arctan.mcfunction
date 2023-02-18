# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 2.0
# Created: 18/01/2023 (1.19.2)
# Last modification: 18/01/2023 (1.19.2)
# Last verification: 18/01/2023 (1.19.2)

# Original path : bs.math:trig/arctan
# Documentation : https://bookshelf.docs.gunivers.net/en/bookshelf/math.html#arctangent
# Note:

# INIT ------------------------------------------------------------------------

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

scoreboard players operation #math.arctan.x bs.data = @s bs.var0

execute if score #math.arctan.x bs.data matches -718..718 run function bs.math:trig/arctan/child/below_718
execute unless score #math.arctan.x bs.data matches -718..718 run function bs.math:trig/arctan/child/above_718