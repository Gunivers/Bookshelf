# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet, Aksiome
# Contributors:

# Version: 2.0
# Created: ??/??/2019 (1.14)
# Last modification: 10/09/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/schedule.html#cancel
# Dependencies:
# Note: Only remove the first occurrence with the specified ID.

# CODE ------------------------------------------------------------------------

# Find the first element of the stack with the given id.
$data modify storage bs:data schedule.cancel set from storage bs:data schedule.commands[{id:'$(id)'}]

function bs.schedule:cancel/remove with storage bs:data schedule.cancel
function #bs.log:info {feature:"schedule.cancel", path:"bs.schedule:cancel/cancel", message:'["Canceled ",{"score":{"name":"#schedule.result","objective":"bs.data"}}," command."]'}

execute store result score #schedule.next_time bs.data run data get storage bs:data schedule.commands[-1].time
