# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.2
# Created: ??/??/???? (1.13)
# Last modification: 20/04/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#in-view-as-to-at
# Dependencies:
# - bs.math
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:ctx _ set value $(angle)
execute as B5-0-0-0-1 run function bs.view:in_view_ata/angle
execute facing entity @s eyes positioned as @s positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 run \
  return run function bs.view:in_view_ata/check with storage bs:ctx
