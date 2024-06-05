$data modify storage bs:ctx _ set string storage bs:data dump[-1].key $(x) $(y)
execute store result storage bs:ctx x int 1 run scoreboard players get #dump.cursor bs.data
execute store result storage bs:ctx y int 1 run scoreboard players add #dump.cursor bs.data 1
execute unless score #dump.escape bs.data matches 1 if data storage bs:ctx {_:'"'} run return run function bs.dump:key/parse/terminate with storage bs:ctx
execute store result score #dump.escape bs.data if data storage bs:ctx {_:"\\"}
function bs.dump:key/parse/quoted/double with storage bs:ctx
