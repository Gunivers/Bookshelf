data modify storage bs:out dump append value '"\\n"'
data modify storage bs:out dump append from storage bs:data dump[].indent

data modify storage bs:data dump append from storage bs:data dump[-1]
$data modify storage bs:data dump[-1].var set from storage bs:data dump[-1].var.$(key)
function bs.dump:format/compound/key with storage bs:const dump
function bs.dump:interpret/any
data remove storage bs:data dump[-1]
$data remove storage bs:data dump[-1].var.$(key)

execute store result score #dump.count bs.data run data get storage bs:data dump[-1].var
execute if score #dump.count bs.data matches 1.. run data modify storage bs:out dump append value '", "'
execute if score #dump.count bs.data matches 1.. run function bs.dump:key/get
execute if score #dump.count bs.data matches 1.. run function bs.dump:interpret/compound/loop with storage bs:data dump[-1]
