# Determines the mapping set used for block conversion based on the player's active advancement.
execute if entity @s[advancements={bs.example.painter:use_brush={color=true}}] run data modify storage bs:example painter set value { mapping_set: "bs.colors" }
execute if entity @s[advancements={bs.example.painter:use_brush={magic=true}}] run data modify storage bs:example painter set value { mapping_set: "bs.shapes" }

# Gets the ID of the item in the player's offhand, assuming it matches a block ID. If no ID is found, return early.
execute store success score #success bs.data run data modify storage bs:example painter.type set from entity @s Inventory[{Slot:-106b}].id
execute if score #success bs.data matches 0 run return fail

# Gets all data related to the block at the current location, including its state and NBTs.
function #bs.block:get_block

# Replaces the block type with the mapped type from the mapping_set. For example, if the mapping_set is "color",
# the item is "orange_wool", and the block in the world is "white_carpet", the resulting block will be "orange_carpet".
function #bs.block:replace_mapped_type with storage bs:example painter

# Sets the newly replaced block into the world at the current location.
data modify storage bs:in block.set_block set from storage bs:out block
function #bs.block:set_block
