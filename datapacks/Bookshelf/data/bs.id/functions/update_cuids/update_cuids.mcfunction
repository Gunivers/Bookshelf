# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: KubbyDev, Aksiome
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 28/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/id.html#update-chain-unique-id
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result score #size bs.cid if entity @e[scores={bs.cid=1..}]
execute if score #size bs.cid < #counter bs.cid run scoreboard players set $id.cuid.check bs.in 0
execute if score #size bs.cid < #counter bs.cid run function bs.id:update_cuids/loop
