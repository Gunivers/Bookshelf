# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 02/03/2024 (1.20.4)
# Last modification: 02/03/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/dump.html
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

data modify storage bs:out dump set value ['[{"text":"[","color":"#cccccc"},{"selector":"@s"},"] ⇒ "]']
$data modify storage bs:data dump set value [{var:$(var),indent:'"\\u2000"'}]
function bs.dump:interpret/any
tellraw @a {"type":"nbt","storage":"bs:out","nbt":"dump[]","separator":"","interpret":true}
