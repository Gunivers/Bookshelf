execute store result score #dump.count bs.data run data get storage bs:data dump[-1].var
execute if score #dump.count bs.data matches 0 run return run function bs.dump:format/compound/empty

function bs.dump:format/brace/open with storage bs:const dump
function bs.dump:key/get
function bs.dump:interpret/compound/loop with storage bs:data dump[-1]
data modify storage bs:out dump append value '"\\n"'
data modify storage bs:out dump append from storage bs:data dump[].indent
data remove storage bs:out dump[-1]
function bs.dump:format/brace/close with storage bs:const dump
