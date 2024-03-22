# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, theogiraudet
# Contributors:

# Version: 2.2
# Created: ??/??/2019 (1.14)
# Last modification: 20/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/schedule.html#cancel
# Dependencies:
# Note: Only remove the first occurrence.

# CODE ------------------------------------------------------------------------

# Find the last element of the queue with the given data.
$data modify storage bs:ctx _ set from storage bs:data schedule[$(with)]
execute store success score #success bs.data run function bs.schedule:cancel/remove_one with storage bs:ctx _
function #bs.log:info {feature:"schedule.cancel_one", path:"#bs.schedule:cancel_one", message:'["Canceled ",{"score":{"name":"#success","objective":"bs.data"}}," command."]'}
