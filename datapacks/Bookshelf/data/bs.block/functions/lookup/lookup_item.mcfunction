# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, theogiraudet
# Contributors:

# Version: 1.0
# Created: 15/01/2024 (1.20.4)
# Last modification: 27/02/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/block.html#manage-type
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

data modify storage bs:ctx _ set value []
$data modify storage bs:ctx _ append from storage bs:const block[{item:"$(item)"}]
return run data modify storage bs:out block set from storage bs:ctx _[0]
