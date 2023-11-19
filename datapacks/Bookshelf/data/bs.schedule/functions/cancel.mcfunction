# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet, Aksiome
# Contributors:

# Version: 1.1
# Created: 10/09/2023 (1.20.2)
# Last modification: 19/11/2023 (23w46a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/schedule.html#cancel
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$execute store result score #schedule.result bs.data run data remove storage bs:data schedule.commands[$(with)]

function #bs.log:info {feature:"schedule.cancel", path:"#bs.schedule:cancel", message:'["Canceled ",{"score":{"name":"#schedule.result","objective":"bs.data"}}," command(s)."]'}
execute store result score #schedule.next_time bs.data run data get storage bs:data schedule.commands[-1].time
