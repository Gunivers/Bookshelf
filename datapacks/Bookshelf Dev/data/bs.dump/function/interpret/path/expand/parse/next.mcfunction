$data modify storage bs:ctx _ set string storage bs:data dump[-1].var $(x) $(y)
execute if data storage bs:ctx {_:" "} run return run function bs.dump:interpret/path/expand/parse/terminate with storage bs:ctx
execute store result storage bs:ctx y int 1 run scoreboard players get #dump.cursor bs.data
execute store result storage bs:ctx x int 1 run scoreboard players remove #dump.cursor bs.data 1
function bs.dump:interpret/path/expand/parse/next with storage bs:ctx
