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

data modify storage bs:out time.string set string block -30000000 0 1605 LastOutput 44 52
data modify storage bs:out time.hours set string storage bs:out time.string 0 2
data modify storage bs:out time.minutes set string storage bs:out time.string 3 5
data modify storage bs:out time.seconds set string storage bs:out time.string 6 8

function bs.time:get/cast with storage bs:out time

execute store result score $time.hours bs.out run data get storage bs:out time.hours
execute store result score $time.minutes bs.out run data get storage bs:out time.minutes
execute store result score $time.seconds bs.out run data get storage bs:out time.seconds
