# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 18/08/2023 (23w32a)
# Last modification: 18/08/2023 (23w32a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/sidebar.html#refresh
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:sidebar do.id set value '$(id)'

execute as B5-0-0-0-2 run function bs.sidebar:refresh/do with storage bs:sidebar do
