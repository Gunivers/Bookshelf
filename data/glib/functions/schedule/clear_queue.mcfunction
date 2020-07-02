# NAME: Clear Queue
# PATH: glib:schedule/clear_queue

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Clear the schedule queue.

# CODE:
function glib:cache/select_jukebox
execute at @e[tag=Glib_Cache_Head] run data modify block ~ ~ ~ RecordItem.tag.ScheduleCommands set value []