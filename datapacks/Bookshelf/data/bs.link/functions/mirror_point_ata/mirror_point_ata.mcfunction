# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 11/09/2023 (1.20.2)
# Last modification: 11/09/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/link.html#mirror-point
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation $id.suid.check bs.in = @s bs.link.to
execute as @e[predicate=bs.id:suid_match,sort=arbitrary,limit=1] run function bs.link:mirror_point_ata/as_origin
execute facing entity @e[predicate=bs.id:suid_match,sort=arbitrary,limit=1] feet run function bs.link:mirror_point_ata/apply with storage bs:ctx
