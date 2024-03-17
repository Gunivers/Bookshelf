execute store success score #success bs.data run function bs.dump:interpret/path/expand/guard with storage bs:data dump[-1]
execute if score #success bs.data matches 0 run function bs.dump:interpret/path/expand/parse/init with storage bs:ctx
execute if score #success bs.data matches 1 run data modify storage bs:data dump[-1].expand set value 2

function bs.dump:interpret/path/populate with storage bs:data dump[-1]
return run function bs.dump:format/any

$data get $(var)
