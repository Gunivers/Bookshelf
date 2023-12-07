# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.1
# Created: 18/08/2023 (23w32a)
# Last modification: 07/12/2023 (1.20.3)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/sidebar.html#refresh
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:ctx _ set from storage bs:data sidebar[{id:'$(objective)'}]

data modify storage bs:ctx _.cmd set from storage bs:ctx _.dyn[0].cmd
data modify entity B5-0-0-0-2 text set from storage bs:ctx _.dyn[0].text
data modify storage bs:ctx _.text set from entity B5-0-0-0-2 text

return run function bs.sidebar:refresh/loop with storage bs:ctx _
