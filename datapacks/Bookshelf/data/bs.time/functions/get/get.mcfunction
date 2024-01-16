# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors: RedCoal & Awhikax

# Version: 2.0
# Created: ??/??/???? (?.??)
# Last modification: 30/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/time.html
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

data modify storage bs:data time.full set string block -30000000 0 1605 LastOutput 10 18
data modify storage bs:data time.hours set string storage bs:data time.full 0 2
data modify storage bs:data time.minutes set string storage bs:data time.full 3 5
data modify storage bs:data time.seconds set string storage bs:data time.full 6 8

function bs.time:get/cast with storage bs:data time
