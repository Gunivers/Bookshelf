# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 27/02/2024 (1.20.4)
# Last modification: 27/02/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/bitwise.html#bit-count
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players set $bitwise.bit_count bs.out 0
scoreboard players operation #bitwise.bit_count bs.data = $bitwise.bit_count.n bs.in
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
scoreboard players operation #bitwise.bit_count bs.data *= 2 bs.const
execute if score #bitwise.bit_count bs.data matches ..-1 run scoreboard players add $bitwise.bit_count bs.out 1
return run scoreboard players get $bitwise.bit_count bs.out
