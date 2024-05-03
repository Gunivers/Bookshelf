# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: theogiraudet
# Contributors: Aksiome

# Version: 1.0
# Created: 05/08/2023 (23w31a)
# Last modification: 06/08/2023 (23w31a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/log.html#error
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:in log set value {path: "$(path)", message: '$(message)', namespace: "$(namespace)", tag: "$(tag)"}
# Output on bs:in log
function bs.log:time/get

data modify storage bs:data log.ctx set from storage bs:const log.messages.default.error
$data modify storage bs:data log.ctx set from storage bs:const log.messages."$(namespace)".error

$execute at @a unless entity @p[distance=0, \
    tag=!$(namespace).log.$(tag).debug, \
    tag=!$(namespace).log.$(tag).info, \
    tag=!$(namespace).log.$(tag).warn, \
    tag=!$(namespace).log.$(tag).error, \
    tag=!$(namespace).log._.debug, \
    tag=!$(namespace).log._.info, \
    tag=!$(namespace).log._.warn, \
    tag=!$(namespace).log._.error, \
    tag=!$(namespace).log._._, \
    tag=!$(namespace).log.$(tag)._, \
    tag=!_.log.$(tag).debug, \
    tag=!_.log.$(tag).info, \
    tag=!_.log.$(tag).warn, \
    tag=!_.log.$(tag).error, \
    tag=!_.log._.debug, \
    tag=!_.log._.info, \
    tag=!_.log._.warn, \
    tag=!_.log._.error, \
    tag=!_.log.$(tag)._, \
    tag=!_.log._._ \
] run tellraw @p {"nbt": "log.ctx", "storage": "bs:data", "interpret": true}
