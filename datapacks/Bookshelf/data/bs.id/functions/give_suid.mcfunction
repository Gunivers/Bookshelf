# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: KubbyDev, Aksiome
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 28/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/id.html#give-simple-unique-id
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute if entity @s store result score @s bs.id run scoreboard players add #counter bs.id 1
