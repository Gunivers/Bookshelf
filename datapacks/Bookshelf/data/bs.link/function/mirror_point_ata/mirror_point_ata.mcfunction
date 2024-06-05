# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 11/09/2023 (1.20.2)
# Last modification: 11/09/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/link.html#mirror-point
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation $id.suid bs.in = @s bs.link.to
execute as @n[predicate=bs.id:suid_equal,sort=arbitrary] run function bs.link:mirror_point_ata/as_origin
execute facing entity @n[predicate=bs.id:suid_equal,sort=arbitrary] feet run function bs.link:mirror_point_ata/apply with storage bs:ctx
