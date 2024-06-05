execute if data storage bs:data dump[-1].var[] run return run function bs.dump:interpret/array/array
execute if data storage bs:data dump[-1].var{} run return run function bs.dump:interpret/compound/compound

execute store success score #success bs.data run function bs.dump:interpret/path/path with storage bs:data dump[-1]
execute if score #success bs.data matches 0 run function bs.dump:interpret/score with storage bs:data dump[-1]
