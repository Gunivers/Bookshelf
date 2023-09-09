# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet
# Contributors:

# Version: 2.0
# Created: ??/??/2019 (1.14)
# Last modification: 09/09/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/schedule#schedule.html
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:data schedule.command set value { id: "$(id)", command: "$(command)", time: $(time), unit: "$(unit)" }

scoreboard players set #result bs.data -1
execute store result score #result bs.data run function bs.schedule:schedule/convert_unit
# If we succeed to convert the time from the specified unit to tick, we schedule the command
execute if score #result bs.data matches 1 run function bs.schedule:schedule/schedule_if_valid
