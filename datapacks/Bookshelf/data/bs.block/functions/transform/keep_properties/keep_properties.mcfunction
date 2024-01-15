# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, theogiraudet
# Contributors:

# Version: 1.0
# Created: 15/01/2024 (1.20.4)
# Last modification: 15/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/block.html#keep-properties
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:ctx _ set value $(properties)

# use _ to prevent populating options with dummy data when searching for selected values
data modify storage bs:out block.iterable_properties[].options[]._ set value 0b
function bs.block:transform/keep_properties/loop with storage bs:ctx _[-1]
# we only need to remove, not set, which mitigates the above issue
data remove storage bs:out block.iterable_properties[].options[{_:0b}].selected
data remove storage bs:out block.iterable_properties[].options[]._
