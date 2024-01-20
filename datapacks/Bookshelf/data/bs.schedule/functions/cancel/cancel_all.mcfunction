# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, theogiraudet
# Contributors:

# Version: 1.2
# Created: 10/09/2023 (1.20.2)
# Last modification: 20/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/schedule.html#cancel
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$execute store result score #result bs.data run data remove storage bs:data schedule[$(with)]
function #bs.log:info {feature:"schedule.cancel", path:"#bs.schedule:cancel", message:'["Canceled ",{"score":{"name":"#result","objective":"bs.data"}}," command(s)."]'}
