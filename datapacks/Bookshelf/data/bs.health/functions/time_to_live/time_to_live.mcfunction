# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 15/09/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/health.html#time-to-live
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute if data storage bs:data health.ttl.time store result score @s bs.ttl run data get storage bs:data health.ttl.time
data remove storage bs:data health.ttl.time
