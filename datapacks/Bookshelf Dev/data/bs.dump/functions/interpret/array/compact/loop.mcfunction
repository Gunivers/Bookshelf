data modify storage bs:data dump append from storage bs:data dump[-1]
data modify storage bs:data dump[-1].var set from storage bs:data dump[-1].var[0]
function bs.dump:interpret/any
data remove storage bs:data dump[-1]
data remove storage bs:data dump[-1].var[0]

execute if data storage bs:data dump[-1].var[0] run data modify storage bs:out dump append value '", "'
execute if data storage bs:data dump[-1].var[0] run function bs.dump:interpret/array/compact/loop
