# NAME: Clear Queue
# PATH: gunivers-lib:utils/schedule/clear_queue

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Clear the schedule queue.

# CODE:
function gunivers-lib:utils/cache/select_jukebox
execute at @e[tag=HeadGlibCache] run data modify block ~ ~ ~ RecordItem.tag.ScheduleCommands set value []