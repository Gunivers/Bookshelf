execute if data storage bs:data dump[-1].var[] run return run function bs.dump:format/array/array
execute if data storage bs:data dump[-1].var{} run return run function bs.dump:format/compound/compound

data modify storage bs:ctx _ set value [[0b],[0s],[0],[0l],[0f],[0d],[""]]
execute store success score #success bs.data run data modify storage bs:ctx _[] append from storage bs:data dump[-1].var
execute if score #success bs.data matches 1 unless data storage bs:ctx _[-1][1] run return run function bs.dump:format/number with storage bs:const dump
execute if score #success bs.data matches 1 run function bs.dump:format/string/string with storage bs:const dump
