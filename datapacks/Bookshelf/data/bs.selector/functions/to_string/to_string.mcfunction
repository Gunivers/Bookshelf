# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 20/01/2024 (1.20.4)
# Last modification: 20/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/selector.html#to-string
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

data remove storage bs:out selector
execute unless entity @s run return fail
execute store success score #success bs.data run function bs.selector:to_string/cache/get with entity @s
execute if score #success bs.data matches 0 run function bs.selector:to_string/generate
