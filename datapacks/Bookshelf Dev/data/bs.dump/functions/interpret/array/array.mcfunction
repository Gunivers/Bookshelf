execute store result score #dump.count bs.data if data storage bs:data dump[-1].var[]

execute if score #dump.count bs.data matches 0 run return run function bs.dump:format/array/empty
execute if score #dump.count bs.data matches ..3 \
  unless data storage bs:data dump[-1].var[][] \
  unless data storage bs:data dump[-1].var[{}] \
  run return run function bs.dump:interpret/array/compact/compact

function bs.dump:format/bracket/open with storage bs:const dump
function bs.dump:interpret/array/loop
data modify storage bs:out dump append value '"\\n"'
data modify storage bs:out dump append from storage bs:data dump[].indent
data remove storage bs:out dump[-1]
function bs.dump:format/bracket/close with storage bs:const dump
