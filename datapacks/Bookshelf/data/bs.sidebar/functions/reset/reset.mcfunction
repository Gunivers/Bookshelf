# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 18/08/2023 (23w32a)
# Last modification: 18/08/2023 (23w32a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/sidebar.html#reset
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

data remove storage bs:sidebar do
data modify storage bs:sidebar do.score set value "‌"

execute if data storage bs:sidebar registry[0] run function bs.sidebar:reset/loop
data remove storage bs:sidebar registry
