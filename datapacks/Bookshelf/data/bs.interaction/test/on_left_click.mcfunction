# @batch bs.interaction

# Init
data remove storage bs:data interaction
summon minecraft:interaction 0.0 0.0 0.0 {UUID: [I;181, 0, 0, 101], Tags: ["bs.packtest"], width: 1.0, height: 2.0}

# Corner case: the current entity is not a listener
execute store success score _ bs.ctx as @n[tag=bs.packtest] run function #bs.interaction:event/listen_left_click { callback: "", executor: "source" }
assert score _ bs.ctx matches 0

# Init next
execute as @n[tag=bs.packtest] run function #bs.interaction:set_as_listener
summon minecraft:armor_stand 0.0 0.0 0.0 {UUID: [I;181, 0, 0, 102], Tags: ["bs.packtest.2"]}

## === EXPECTED INPUT ===

# Executor to "source"
execute as @n[tag=bs.packtest] run function #bs.interaction:event/listen_left_click { callback: "", executor: "source" }
assert data storage bs:data interaction.listener.0.left_click[{ callback: "", executor: "source", interpreted: 0 }]
data remove storage bs:data interaction
data remove storage bs:ctx _

# Executor to "target"
execute as @n[tag=bs.packtest] run function #bs.interaction:event/listen_left_click { callback: "", executor: "target" }
assert data storage bs:data interaction.listener.0.left_click[{ callback: "", executor: "target", interpreted: 0 }]
data remove storage bs:data interaction
data remove storage bs:ctx _

# Executor to lazy selector
execute as @n[tag=bs.packtest] run function #bs.interaction:event/listen_left_click { callback: "", executor: { selector: "@n[tag=bs.packtest.2]", lazy: true }}
assert data storage bs:data interaction.listener.0.left_click[{ callback: "", executor: "@n[tag=bs.packtest]", interpreted: 0 }]
data remove storage bs:data interaction
data remove storage bs:ctx _

# Executor to non lazy selector
execute as @n[tag=bs.packtest] run function #bs.interaction:event/listen_left_click { callback: "", executor: { selector: "@n[tag=bs.packtest.2]", lazy: false }}
assert data storage bs:data interaction.listener.0.left_click[{ callback: "", executor: "[I;181, 0, 0, 102]", interpreted: 1 }]
data remove storage bs:data interaction
data remove storage bs:ctx _

# Executor is a player name
dummy Alice spawn
execute as @n[tag=bs.packtest] run function #bs.interaction:event/listen_left_click { callback: "", executor: "Alice"}
assert data storage bs:data interaction.listener.0.left_click[{ callback: "", interpreted: 1 }]
data remove storage bs:data interaction
data remove storage bs:ctx _
dummy Alice leave

# Executor is entity UUID
execute as @n[tag=bs.packtest] run function #bs.interaction:event/listen_left_click { callback: "", executor: "[I;181, 0, 0, 102]"}
assert data storage bs:data interaction.listener.0.left_click[{ callback: "", executor: "[I;181, 0, 0, 102]", interpreted: 1 }]
data remove storage bs:data interaction
data remove storage bs:ctx _

## === CORNER CASE INPUT ===

# Object executor with source as selector
execute as @n[tag=bs.packtest] store success score _ bs.ctx run function #bs.interaction:event/listen_left_click { callback: "", executor: { "selector": "source", "lazy": true }}
assert data storage bs:data interaction.listener.0.left_click[{ callback: "", executor: "source", interpreted: 0 }]
data remove storage bs:data interaction
data remove storage bs:ctx _

## === NON EXPECTED INPUT THAT SHOULD RETURN AN ERROR ===

# Executor to non selector in object
execute as @n[tag=bs.packtest] store success score _ bs.ctx run function #bs.interaction:event/listen_left_click { callback: "", executor: "@n[tag=bs.packtest.2"}
assert score _ bs.ctx matches 0
data remove storage bs:ctx _

# Non lazy selector pointing to no entity
execute as @n[tag=bs.packtest] store success score _ bs.ctx run function #bs.interaction:event/listen_left_click { callback: "", executor: "@n[tag=bs.packtest.3]"}
assert score _ bs.ctx matches 0
data remove storage bs:ctx _

# Using source as non lazy selector
execute as @n[tag=bs.packtest] store success score _ bs.ctx run function #bs.interaction:event/listen_left_click { callback: "", executor: { "selector": "source", "lazy": false }}
assert score _ bs.ctx matches 0
data remove storage bs:ctx _
