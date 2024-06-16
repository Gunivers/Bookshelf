# Levels are set correctly
# @batch bs.xp
# @dummy

function #bs.xp:set_levels {levels:42}
assert entity @s[level=42]

function #bs.xp:set_levels {levels:22}
assert entity @s[level=22]
