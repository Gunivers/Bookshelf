# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2024 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/Gunivers/Bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
#
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/generate.html#shape-2d
# ------------------------------------------------------------------------------------------------------------

data modify storage bs:data generate._ set value { \
  direction: "xz", \
  spacing: 1, \
  size: 32, \
  limit: 256, \
}

$data modify storage bs:data generate._ merge value $(with)
$data modify storage bs:data generate._ merge value {impl:"simplex_noise_2d",cb:'$(run)',w:$(width),h:$(height),x:0,y:0,oy:"~",oz:"~"}

scoreboard players set #generate.k bs.data 1000000
execute store result score #c bs.ctx run data get storage bs:data generate._.size
execute store result storage bs:data generate._.k int .001 run scoreboard players operation #generate.k bs.data /= #c bs.ctx
execute unless data storage bs:data generate._.seed store result storage bs:data generate._.seed int 1 run random value 1.. bs.generate:simplex_shape_2d

execute align xyz as B5-0-0-0-1 positioned ~.5 ~.5 ~.5 run function bs.generate:shape_2d/recurse/init with storage bs:data generate._
