# Emit block particles
# @batch bs.block

data modify storage bs:in block.emit_block_particles.type set value "minecraft:bookshelf"
data modify storage bs:in block.emit_block_particles merge value { delta: "0 0 0", speed: 5, count: 30, properties: {}}

function #bs.block:emit_block_particles
