data modify entity B5-0-0-0-2 text set value '{"storage":"bs:ctx","nbt":"_[-1]"}'
data modify storage bs:data dump[-1].var set string entity B5-0-0-0-2 text
function bs.dump:format/string/unquote with storage bs:data dump[-1]
data modify storage bs:data dump[-1]._ set string storage bs:data dump[-1].var -2 -1
data modify storage bs:data dump[-1].var set string storage bs:data dump[-1].var 5 -2
$data modify entity B5-0-0-0-2 text set value '[{"storage":"bs:data","nbt":"dump[-1]._"},{"storage":"bs:data","nbt":"dump[-1].var","color":"$(string)"},{"storage":"bs:data","nbt":"dump[-1]._"}]'
data modify storage bs:out dump append from entity B5-0-0-0-2 text
