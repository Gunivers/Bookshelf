# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 18/08/2023 (23w32a)
# Last modification: 18/08/2023 (23w32a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/sidebar.html#create
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:sidebar do merge value {id:'$(id)',name:'$(name)',contents:$(contents)}

# Check that the id is not already in use
$execute store result score #sidebar.valid bs.data unless data storage bs:sidebar registry[{id:'$(id)'}]
execute unless score #sidebar.valid bs.data matches 1 run function #bs.log:error { \
  path: "#bs.sidebar:create", \
  feature: "sidebar.create", \
  message: '[{"text":"The id \'","color":"red"},{"storage":"bs:sidebar","nbt":"do.id"},{"text":"\' is already in use."}]', \
}
execute unless score #sidebar.valid bs.data matches 1 run return 0

# Check that the id format is valid
execute store result score #sidebar.valid bs.data run function bs.sidebar:create/constraints/id with storage bs:sidebar do
execute unless score #sidebar.valid bs.data matches 1 run function #bs.log:error { \
  path: "#bs.sidebar:create", \
  feature: "sidebar.create", \
  message: '[{"text":"The id \'","color":"red"},{"storage":"bs:sidebar","nbt":"do.id"},{"text":"\' must only contain lowercase letters, numbers, dashes, underscores or dots."}]', \
}
execute unless score #sidebar.valid bs.data matches 1 run return 0

# Check that the name format is valid
execute store result score #sidebar.valid bs.data run function bs.sidebar:create/constraints/name with storage bs:sidebar do
execute unless score #sidebar.valid bs.data matches 1 run function #bs.log:error { \
  path: "#bs.sidebar:create", \
  feature: "sidebar.create", \
  message: '[{"text":"The name \'","color":"red"},{"storage":"bs:sidebar","nbt":"do.name"},{"text":"\' must be a valid JSON text component."}]', \
}
execute unless score #sidebar.valid bs.data matches 1 run return 0

# Check that the contents have between 1 and 15 entries
execute store result score #sidebar.lines bs.data if data storage bs:sidebar do.contents[]
execute unless score #sidebar.lines bs.data matches 1..15 run function #bs.log:error { \
  path: "#bs.sidebar:create", \
  feature: "sidebar.create", \
  message: '[{"text":"The contents must have between 1 and 15 lines (","color":"red"},{"score":{"name":"#sidebar.lines","objective":"bs.data"}},{"text":" given)."}]', \
}
execute unless score #sidebar.lines bs.data matches 1..15 run return 0

# Start creating each line
execute as c9337257-2804-47d4-90bf-3eb772a4c30c run function bs.sidebar:create/do with storage bs:sidebar do

# If last line is less than the total line count, an error concerning the format of the line occured
scoreboard players operation #sidebar.lines bs.data -= #sidebar.line bs.data
execute if score #sidebar.lines bs.data matches 1.. run function #bs.log:error { \
  path: "#bs.sidebar:create", \
  feature: "sidebar.create", \
  message: '[{"text":"The line at position ","color":"red"},{"score":{"name":"#sidebar.line","objective":"bs.data"}},{"text":" \'"},{"storage":"bs:sidebar","nbt":"do.guard"},{"text":"\' must be a valid JSON text component."}]', \
}
execute if score #sidebar.lines bs.data matches 1.. run function #bs.sidebar:destroy with storage bs:sidebar do
execute if score #sidebar.lines bs.data matches 1.. run return 0
