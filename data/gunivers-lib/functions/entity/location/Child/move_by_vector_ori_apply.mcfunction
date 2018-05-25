# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/Location/Child/Move-Child

# CHILD OF: Gunivers-Lib:Entity/Location/Move

# CODE:

# X positive

execute at @s run tp @s[scores={Var1=512..}] ^0.512 ^ ^
scoreboard players remove @s[scores={Var1=512..}] Var1 512
execute at @s run tp @s[scores={Var1=256..}] ^0.256 ^ ^
scoreboard players remove @s[scores={Var1=256..}] Var1 256
execute at @s run tp @s[scores={Var1=128..}] ^0.128 ^ ^
scoreboard players remove @s[scores={Var1=128..}] Var1 128
execute at @s run tp @s[scores={Var1=64..}] ^0.064 ^ ^
scoreboard players remove @s[scores={Var1=64..}] Var1 64
execute at @s run tp @s[scores={Var1=32..}] ^0.032 ^ ^
scoreboard players remove @s[scores={Var1=32..}] Var1 32
execute at @s run tp @s[scores={Var1=16..}] ^0.016 ^ ^
scoreboard players remove @s[scores={Var1=16..}] Var1 16
execute at @s run tp @s[scores={Var1=8..}] ^0.008 ^ ^
scoreboard players remove @s[scores={Var1=8..}] Var1 8
execute at @s run tp @s[scores={Var1=4..}] ^0.004 ^ ^
scoreboard players remove @s[scores={Var1=4..}] Var1 4
execute at @s run tp @s[scores={Var1=2..}] ^0.002 ^ ^
scoreboard players remove @s[scores={Var1=2..}] Var1 2
execute at @s run tp @s[scores={Var1=1..}] ^0.001 ^ ^

# Y positive

execute at @s run tp @s[scores={Var2=512..}] ^ ^0.512 ^
scoreboard players remove @s[scores={Var2=512..}] Var2 512
execute at @s run tp @s[scores={Var2=256..}] ^ ^0.256 ^
scoreboard players remove @s[scores={Var2=256..}] Var2 256
execute at @s run tp @s[scores={Var2=128..}] ^ ^0.128 ^
scoreboard players remove @s[scores={Var2=128..}] Var2 128
execute at @s run tp @s[scores={Var2=64..}] ^ ^0.064 ^
scoreboard players remove @s[scores={Var2=64..}] Var2 64
execute at @s run tp @s[scores={Var2=32..}] ^ ^0.032 ^
scoreboard players remove @s[scores={Var2=32..}] Var2 32
execute at @s run tp @s[scores={Var2=16..}] ^ ^0.016 ^
scoreboard players remove @s[scores={Var2=16..}] Var2 16
execute at @s run tp @s[scores={Var2=8..}] ^ ^0.008 ^
scoreboard players remove @s[scores={Var2=8..}] Var2 8
execute at @s run tp @s[scores={Var2=4..}] ^ ^0.004 ^
scoreboard players remove @s[scores={Var2=4..}] Var2 4
execute at @s run tp @s[scores={Var2=2..}] ^ ^0.002 ^
scoreboard players remove @s[scores={Var2=2..}] Var2 2
execute at @s run tp @s[scores={Var2=1..}] ^ ^0.001 ^

# Z positive

execute at @s run tp @s[scores={Var3=512..}] ^ ^ ^0.512
scoreboard players remove @s[scores={Var3=512..}] Var3 512
execute at @s run tp @s[scores={Var3=256..}] ^ ^ ^0.256
scoreboard players remove @s[scores={Var3=256..}] Var3 256
execute at @s run tp @s[scores={Var3=128..}] ^ ^ ^0.128
scoreboard players remove @s[scores={Var3=128..}] Var3 128
execute at @s run tp @s[scores={Var3=64..}] ^ ^ ^0.064
scoreboard players remove @s[scores={Var3=64..}] Var3 64
execute at @s run tp @s[scores={Var3=32..}] ^ ^ ^0.032
scoreboard players remove @s[scores={Var3=32..}] Var3 32
execute at @s run tp @s[scores={Var3=16..}] ^ ^ ^0.016
scoreboard players remove @s[scores={Var3=16..}] Var3 16
execute at @s run tp @s[scores={Var3=8..}] ^ ^ ^0.008
scoreboard players remove @s[scores={Var3=8..}] Var3 8
execute at @s run tp @s[scores={Var3=4..}] ^ ^ ^0.004
scoreboard players remove @s[scores={Var3=4..}] Var3 4
execute at @s run tp @s[scores={Var3=2..}] ^ ^ ^0.002
scoreboard players remove @s[scores={Var3=2..}] Var3 2
execute at @s run tp @s[scores={Var3=1..}] ^ ^ ^0.001

# X negative

execute at @s run tp @s[scores={Var1=..-512}] ^-0.512 ^ ^
scoreboard players add @s[scores={Var1=..-512}] Var1 512
execute at @s run tp @s[scores={Var1=..-256}] ^-0.256 ^ ^
scoreboard players add @s[scores={Var1=..-256}] Var1 256
execute at @s run tp @s[scores={Var1=..-128}] ^-0.128 ^ ^
scoreboard players add @s[scores={Var1=..-128}] Var1 128
execute at @s run tp @s[scores={Var1=..-64}] ^-0.064 ^ ^
scoreboard players add @s[scores={Var1=..-64}] Var1 64
execute at @s run tp @s[scores={Var1=..-32}] ^-0.032 ^ ^
scoreboard players add @s[scores={Var1=..-32}] Var1 32
execute at @s run tp @s[scores={Var1=..-16}] ^-0.016 ^ ^
scoreboard players add @s[scores={Var1=..-16}] Var1 16
execute at @s run tp @s[scores={Var1=..-8}] ^-0.008 ^ ^
scoreboard players add @s[scores={Var1=..-8}] Var1 8
execute at @s run tp @s[scores={Var1=..-4}] ^-0.004 ^ ^
scoreboard players add @s[scores={Var1=..-4}] Var1 4
execute at @s run tp @s[scores={Var1=..-2}] ^-0.002 ^ ^
scoreboard players add @s[scores={Var1=..-2}] Var1 2
execute at @s run tp @s[scores={Var1=..-1}] ^-0.001 ^ ^

# Y negative

execute at @s run tp @s[scores={Var2=..-512}] ^ ^-0.512 ^
scoreboard players add @s[scores={Var2=..-512}] Var2 512
execute at @s run tp @s[scores={Var2=..-256}] ^ ^-0.256 ^
scoreboard players add @s[scores={Var2=..-256}] Var2 256
execute at @s run tp @s[scores={Var2=..-128}] ^ ^-0.128 ^
scoreboard players add @s[scores={Var2=..-128}] Var2 128
execute at @s run tp @s[scores={Var2=..-64}] ^ ^-0.064 ^
scoreboard players add @s[scores={Var2=..-64}] Var2 64
execute at @s run tp @s[scores={Var2=..-32}] ^ ^-0.032 ^
scoreboard players add @s[scores={Var2=..-32}] Var2 32
execute at @s run tp @s[scores={Var2=..-16}] ^ ^-0.016 ^
scoreboard players add @s[scores={Var2=..-16}] Var2 16
execute at @s run tp @s[scores={Var2=..-8}] ^ ^-0.008 ^
scoreboard players add @s[scores={Var2=..-8}] Var2 8
execute at @s run tp @s[scores={Var2=..-4}] ^ ^-0.004 ^
scoreboard players add @s[scores={Var2=..-4}] Var2 4
execute at @s run tp @s[scores={Var2=..-2}] ^ ^-0.002 ^
scoreboard players add @s[scores={Var2=..-2}] Var2 2
execute at @s run tp @s[scores={Var2=..-1}] ^ ^-0.001 ^

# Z negative

execute at @s run tp @s[scores={Var3=..-512}] ^ ^ ^-0.512
scoreboard players add @s[scores={Var3=..-512}] Var3 512
execute at @s run tp @s[scores={Var3=..-256}] ^ ^ ^-0.256
scoreboard players add @s[scores={Var3=..-256}] Var3 256
execute at @s run tp @s[scores={Var3=..-128}] ^ ^ ^-0.128
scoreboard players add @s[scores={Var3=..-128}] Var3 128
execute at @s run tp @s[scores={Var3=..-64}] ^ ^ ^-0.064
scoreboard players add @s[scores={Var3=..-64}] Var3 64
execute at @s run tp @s[scores={Var3=..-32}] ^ ^ ^-0.032
scoreboard players add @s[scores={Var3=..-32}] Var3 32
execute at @s run tp @s[scores={Var3=..-16}] ^ ^ ^-0.016
scoreboard players add @s[scores={Var3=..-16}] Var3 16
execute at @s run tp @s[scores={Var3=..-8}] ^ ^ ^-0.008
scoreboard players add @s[scores={Var3=..-8}] Var3 8
execute at @s run tp @s[scores={Var3=..-4}] ^ ^ ^-0.004
scoreboard players add @s[scores={Var3=..-4}] Var3 4
execute at @s run tp @s[scores={Var3=..-2}] ^ ^ ^-0.002
scoreboard players add @s[scores={Var3=..-2}] Var3 2
execute at @s run tp @s[scores={Var3=..-1}] ^ ^ ^-0.001