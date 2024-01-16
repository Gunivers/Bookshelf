# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet, Aksiome
# Contributors:

# Version: 2.1
# Created: ??/??/2019 (1.14)
# Last modification: 19/11/2023 (23w46a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/schedule.html#cancel
# Dependencies:
# Note: Only remove the first occurrence.

# CODE ------------------------------------------------------------------------

# Find the first element of the stack with the given data.
$data modify storage bs:ctx _ set from storage bs:data schedule.commands[$(with)]
function bs.schedule:cancel/remove with storage bs:ctx

function #bs.log:info {feature:"schedule.cancel_one", path:"#bs.schedule:cancel_one", message:'["Canceled ",{"score":{"name":"#schedule.result","objective":"bs.data"}}," command."]'}
execute store result score #schedule.next_time bs.data run data get storage bs:data schedule.commands[-1].time
