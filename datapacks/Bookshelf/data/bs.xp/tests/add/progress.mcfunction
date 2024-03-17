# Progress is added correctly without overflowing to the next level
# @batch bs.xp
# @dummy

function #bs.xp:add_progress {progress:0.1}
assert data entity @s {XpP:0.1f}

function #bs.xp:add_progress {progress:0.4}
assert data entity @s {XpP:0.5f}

function #bs.xp:add_progress {progress:1.0}
assert data entity @s {XpP:1.0f}
