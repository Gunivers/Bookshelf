# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet
# Contributors:

# Version: 2.0
# Created: ??/??/2019 (1.14)
# Last modification: 09/09/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/schedule#cancel.html
# Dependencies:
# Note: Only remove the first occurrence with the specified ID

# CODE ------------------------------------------------------------------------

$data modify storage bs:data schedule.id set value $(id)

function bs.schedule:utils/init_search
execute if score #size bs.data matches 1.. store result score #result bs.data run function bs.schedule:cancel/remove_id
execute if score #size bs.data matches 1.. run function bs.schedule:utils/rebuild
data modify storage bs:schedule scheduled_commands set from storage bs:data schedule.head
execute if score #result bs.data matches 1 run function #bs.log:info { feature: "schedule.cancel", path: "bs.schedule:cancel/cancel", message: '"Command canceled."'}
execute if score #result bs.data matches 0 run function #bs.log:info { feature: "schedule.cancel", path: "bs.schedule:cancel/cancel", message: '"Command not found."'}
