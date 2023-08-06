# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.0
# Created: ??/??/???? (1.13)
# Last verification: ??/??/???? (1.13)
# Last modification: ??/??/???? (1.13)

# Original path : bs.vector:length
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#get-length
# Note          :

# CODE ------------------------------------------------------------------------

# Backup of bs.in.0
scoreboard players operation vector.length.var0 bs.data = @s bs.in.0

# Get lenght^2
function bs.vector:length_squared

# sqrt(legnth^2)
scoreboard players operation @s bs.in.0 = @s bs.out.0
scoreboard players operation @s bs.in.0 *= 1000 bs.const
function bs.math:sqrt

# Restoring bs.in.0
scoreboard players operation @s bs.in.0 = vector.length.var0 bs
