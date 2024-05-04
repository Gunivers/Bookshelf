# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# CODE ------------------------------------------------------------------------

execute store success score #success bs.data run data modify storage bs:data log.time.full_time set string block -30000000 0 1605 LastOutput 10 18
execute if score #success bs.data matches 1 store result score #log.gametime bs.data run time query gametime
