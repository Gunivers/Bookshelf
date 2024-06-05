$data modify storage bs:ctx _ set string storage bs:data dump[-1].var $(y)
$data modify storage bs:data dump[-1].var set string storage bs:data dump[-1].var 0 $(x)
function bs.dump:interpret/path/expand/cast with storage bs:ctx
