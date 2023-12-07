# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.1
# Created: 18/08/2023 (23w32a)
# Last modification: 07/12/2023 (1.20.3)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/sidebar.html#create
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:ctx _ set value {id:'$(objective)',name:'$(name)',contents:$(contents)}

# check that the objective format is valid
execute store success score #success bs.data run function bs.sidebar:create/check/objective with storage bs:ctx _
execute unless score #success bs.data matches 1 run return run function #bs.log:error { \
  path: "#bs.sidebar:create", \
  feature: "sidebar.create", \
  message: '[{"text":"The objective \'","color":"red"},{"storage":"bs:ctx","nbt":"_.id"},{"text":"\' contain invalid characters"}]', \
}

# check that the name format is valid
execute store success score #success bs.data run function bs.sidebar:create/check/name with storage bs:ctx _
execute unless score #success bs.data matches 1 run return run function #bs.log:error { \
  path: "#bs.sidebar:create", \
  feature: "sidebar.create", \
  message: '[{"text":"The name \'","color":"red"},{"storage":"bs:ctx","nbt":"_.name"},{"text":"\' must be a valid JSON text component."}]', \
}

# check that the contents have between 1 and 15 entries
execute store result score #sidebar.lines bs.data if data storage bs:ctx _.contents[]
execute unless score #sidebar.lines bs.data matches 1..15 run return run function #bs.log:error { \
  path: "#bs.sidebar:create", \
  feature: "sidebar.create", \
  message: '[{"text":"The contents must have between 1 and 15 lines (","color":"red"},{"score":{"name":"#sidebar.lines","objective":"bs.data"}},{"text":" given)."}]', \
}

# start the recursion to create each line abort if a line failed
execute as B5-0-0-0-2 run function bs.sidebar:create/recurse/start with storage bs:ctx _
data modify entity @s CustomName set value '[{"text":"BS ","color":"dark_gray"},{"text":"Text Display","color":"aqua"}]'
execute if score #sidebar.lines bs.data = #sidebar.line bs.data run return 1
return run function bs.sidebar:create/recurse/abort with storage bs:ctx _
