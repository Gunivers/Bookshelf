execute unless data storage bs:ctx {_:":"} run data modify storage bs:data dump[-1].key set string storage bs:data dump[-1].key 1 -1
$execute unless data storage bs:ctx {_:":"} run data modify entity B5-0-0-0-2 text set value '[{"storage":"bs:ctx","nbt":"_"},{"storage":"bs:data","nbt":"dump[-1].key","color":"$(key)"},{"storage":"bs:ctx","nbt":"_"},{"text":": "}]'
$execute if data storage bs:ctx {_:":"} run data modify entity B5-0-0-0-2 text set value '[{"storage":"bs:data","nbt":"dump[-1].key","color":"$(key)"},{"text":": "}]'
data modify storage bs:out dump append from entity B5-0-0-0-2 text
