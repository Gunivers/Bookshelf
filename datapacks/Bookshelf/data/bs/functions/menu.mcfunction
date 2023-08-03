# SCORES ----------------------------------------------------------------------

scoreboard objectives add bs.menu.page dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Menu Page","color":"aqua"}]

# METADATA --------------------------------------------------------------------

scoreboard players set module.bs bs.metadata 1

# FUNCTIONS -------------------------------------------------------------------

gamerule commandBlockOutput false
tag @s add bs.menu
execute as @s[tag=bs.menu] at @s run function bs:menu/main
