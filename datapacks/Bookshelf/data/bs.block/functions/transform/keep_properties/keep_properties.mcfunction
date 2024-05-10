# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, theogiraudet
# Contributors:

# Version: 1.0
# Created: 15/01/2024 (1.20.4)
# Last modification: 15/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/block.html#manage-state
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:ctx _ set value $(properties)

# use _ to prevent populating options with dummy data when searching for selected values
data modify storage bs:out block._[].o[]._ set value 0b
function bs.block:transform/keep_properties/loop with storage bs:ctx _[-1]
# we only need to remove, not set, which mitigates the above issue
data remove storage bs:out block._[].o[{_:0b}].c
data remove storage bs:out block._[].o[]._
