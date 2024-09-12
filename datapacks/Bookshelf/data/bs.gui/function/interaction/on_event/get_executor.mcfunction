# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: theogiraudet
# Contributors:

# Version: 1.0
# Created: 30/03/2024 (24w13a)
# Last modification: 30/03/2024 (24w14a)

# Documentation: 
# Dependencies:
# Note: 
#
#  Place the tag bs.gui.executor on the entity that will execute the function.
#  
#  Input:
#   - storage bs:in gui.callback.executor

# CODE ------------------------------------------------------------------------


# The executor is the source player
execute if data storage bs:in gui.callback{executor: "source"} run return run tag @a[tag=bs.gui.source] add bs.gui.executor

execute unless data storage bs:in gui.callback{executor: "target"} run function #bs.log:error { path: "bs.gui:interaction/on_event/get_executor", feature: "interaction.on_event", message: '["","The executor \'",{"nbt":"_","storage":"bs:ctx"},"\' is not valid (valid: source, target)."]' }
execute unless data storage bs:in gui.callback{executor: "target"} run return fail

scoreboard players operation $id.suid bs.in = @e[tag=bs.gui.target, limit=1] bs.id

# The executor is the listener's icon
execute store success score #result bs.data run tag @e[predicate=bs.id:suid_equal, type=!interaction, limit=1] add bs.gui.executor

# The executor is the listener if there is no icon linked to it
execute if score #result bs.data matches 0 unless entity @e[tag=bs.gui.executor] run tag @e[tag=bs.gui.target] add bs.gui.executor