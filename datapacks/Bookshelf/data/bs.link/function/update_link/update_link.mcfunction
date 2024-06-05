# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Leirof, Aksiome
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 20/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/link.html#update-link
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation $id.suid bs.in = @s bs.link.to
execute at @n[predicate=bs.id:suid_equal,sort=arbitrary] run function bs.link:update_link/at_parent
