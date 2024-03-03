function bs.dump:format/bracket/open with storage bs:const dump
execute if score #dump.count bs.data matches 1.. run function bs.dump:interpret/array/compact/loop
function bs.dump:format/bracket/close with storage bs:const dump
