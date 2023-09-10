# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet, Aksiome
# Contributors:

# Version: 2.0
# Created: 10/09/2023 (1.20.2)
# Last modification: 10/09/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/schedule.html#cancel
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$execute store result score #schedule.result bs.data run data remove storage bs:data schedule.commands[{id:'$(id)'}]
function #bs.log:info {feature:"schedule.cancel_all", path:"bs.schedule:cancel_all", message:'["Canceled ",{"score":{"name":"#schedule.result","objective":"bs.data"}}," command(s)."]'}

execute store result score #schedule.next_time bs.data run data get storage bs:data schedule.commands[-1].time
