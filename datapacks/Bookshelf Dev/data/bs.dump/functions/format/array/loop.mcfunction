data modify storage bs:out dump append value '"\\n"'
data modify storage bs:out dump append from storage bs:data dump[].indent

data modify storage bs:data dump append from storage bs:data dump[-1]
data modify storage bs:data dump[-1].var set from storage bs:data dump[-1].var[0]
execute store result storage bs:data dump[-1].expand int .99999999 run data get storage bs:data dump[-1].expand
function bs.dump:format/any
data remove storage bs:data dump[-1]
data remove storage bs:data dump[-1].var[0]

execute if data storage bs:data dump[-1].var[0] run data modify storage bs:out dump append value '", "'
execute if data storage bs:data dump[-1].var[0] run function bs.dump:format/array/loop
