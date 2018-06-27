# NAME: Init G-Lib
# PATH: gunivers-lib:init

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:

# INPUT:

# OUTPUT:


# NOTE:

# CONFIGURATION:


# CODE:
execute if entity @s[tag=Glib_Init_Imports_Page_2] run function gunivers-lib:utils/init/imports_page_2
execute if entity @s[tag=!Glib_Init_Imports_Page_2] run function gunivers-lib:utils/init/imports_page_1