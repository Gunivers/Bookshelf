# NAME: Clear Queue
# PATH: bs.schedule:clear_queue

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Clear the schedule queue.

# CODE:
function bs.cache:select_jukebox
execute at @e[tag=Glib_Cache_Head] run data modify block ~ ~ ~ RecordItem.tag.ScheduleCommands set value []