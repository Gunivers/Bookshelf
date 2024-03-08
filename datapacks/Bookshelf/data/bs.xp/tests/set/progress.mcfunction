# Progress is set correctly without overflowing to the next level
# @batch bs.xp
# @dummy

function #bs.xp:set_progress {progress:0.5}
assert data entity @s {XpP:0.5f}

function #bs.xp:set_progress {progress:0.1}
assert data entity @s {XpP:0.1f}

function #bs.xp:set_progress {progress:2.0}
assert data entity @s {XpP:1.0f}
