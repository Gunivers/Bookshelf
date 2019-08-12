# NAME: Color Convertor - Initialization
# PATH: gunivers-lib:utils/color/init

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE:
# Initialize Color Convertor system.

# CODE:
scoreboard objectives add R dummy
scoreboard objectives add G dummy
scoreboard objectives add B dummy
scoreboard objectives add Output dummy
scoreboard objectives add Var1 dummy

scoreboard players set 65536 Constant 65536
scoreboard players set 256 Constant 256