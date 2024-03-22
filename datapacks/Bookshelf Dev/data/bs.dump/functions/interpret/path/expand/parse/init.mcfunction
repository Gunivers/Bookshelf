execute store result storage bs:ctx x int 1 run scoreboard players set #dump.cursor bs.data -2
execute store result storage bs:ctx y int 1 run scoreboard players set #dump.cursor bs.data -1
function bs.dump:interpret/path/expand/parse/next with storage bs:ctx
