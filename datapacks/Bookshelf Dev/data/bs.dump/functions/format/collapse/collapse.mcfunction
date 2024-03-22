data modify entity B5-0-0-0-2 text set value '{"storage":"bs:data","nbt":"dump[-1].var"}'
data modify entity B5-0-0-0-2 text set value '{"entity":"B5-0-0-0-2","nbt":"text"}'
data modify storage bs:data dump[-1].var set from entity B5-0-0-0-2 text
data modify storage bs:data dump[-1].var set string storage bs:data dump[-1].var 3 -3
function bs.dump:format/collapse/event with storage bs:data dump[-1]
