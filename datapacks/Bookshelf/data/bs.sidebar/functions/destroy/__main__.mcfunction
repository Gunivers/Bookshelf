# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 18/08/2023 (23w32a)
# Last modification: 18/08/2023 (23w32a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/sidebar.html#destroy
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:sidebar do.id set value $(id)

function bs.sidebar:destroy/do with storage bs:sidebar do
