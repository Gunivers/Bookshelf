$data modify storage bs:ctx _ set string storage bs:data dump[-1].key $(x) $(y)
execute if data storage bs:ctx {_:":"} run return run function bs.dump:key/parse/terminate with storage bs:ctx
execute store result storage bs:ctx x int 1 run scoreboard players get #dump.cursor bs.data
execute store result storage bs:ctx y int 1 run scoreboard players add #dump.cursor bs.data 1
function bs.dump:key/parse/unquoted with storage bs:ctx
