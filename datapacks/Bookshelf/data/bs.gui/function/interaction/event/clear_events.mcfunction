# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 06/12/2023 (1.20.3)
# Last modification: 06/12/2023 (1.20.3)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#looked-entity
# Dependencies:
# Remove all the listened events of the current entity.
# Input:
# - @s a listener

# CODE ------------------------------------------------------------------------

tag @s[tag=bs.gui.hover] remove bs.gui.hover
tag @s[tag=bs.gui.listen_hover] remove bs.gui.listen_hover
tag @s[tag=bs.gui.listen_leave] remove bs.gui.listen_leave
tag @s[tag=bs.gui.listen_leave] remove bs.gui.right_click