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

$data modify storage bs:data sidebar.do.id set value '$(id)'

execute as c9337257-2804-47d4-90bf-3eb772a4c30c run function bs.sidebar:refresh/do with storage bs:data sidebar.do
