# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet
# Contributors: Aksiome

# Version: 1.0
# Created: 05/08/2023 (23w31a)
# Last modification: 06/08/2023 (23w31a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/log.html#debug
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$execute as @a unless entity @s[ \
    tag=!bs.log.$(feature).debug, \
    tag=!bs.log._.debug, \
    tag=!bs.log._._, \
    tag=!bs.log.$(feature)._\
] run tag @s add bs.log.catch_log

$tellraw @a[tag=catch_log] ["",{"text":"BS","color":"aqua"},{"text":" [DEBUG]","color":"#CCCCCC"},{"text":" $(path)","color":"dark_aqua"},{"text":" > ","color":"gray"}, $(message)]

tag @a remove bs.log.catch_log
