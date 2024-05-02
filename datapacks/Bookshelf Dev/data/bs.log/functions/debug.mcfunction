# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: theogiraudet
# Contributors: Aksiome

# Version: 1.0
# Created: 05/08/2023 (23w31a)
# Last modification: 06/08/2023 (23w31a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/log.html#debug
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:in log set value {path: $(path), message: $(message), namespace: $(namespace), tag: $(tag)}
# Output on bs:in log
function bs.log:time/get

data modify storage bs:ctx _ set from storage bs:const log.messages.default.debug
$data modify storage bs:ctx _ set from storage bs:const log.messages."$(namespace)".debug

$execute at @a unless entity @p[distance=0, \
    tag=!$(namespace).log.$(tag).debug, \
    tag=!$(namespace).log._.debug, \
    tag=!$(namespace).log._._, \
    tag=!$(namespace).log.$(tag)._, \
    tag=!_.log.$(tag).debug, \
    tag=!_.log._.debug, \
    tag=!_.log.$(tag)._, \
    tag=!_.log._._ \
] run tellraw @p {"nbt": "_", "storage": "bs:ctx", "interpret": true}
