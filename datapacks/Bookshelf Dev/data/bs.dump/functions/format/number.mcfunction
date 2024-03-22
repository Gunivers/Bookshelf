execute unless data storage bs:ctx _[2][1] run data modify storage bs:data dump[-1]._ set string storage bs:data dump[-1].var -1
execute unless data storage bs:ctx _[2][1] run data modify storage bs:data dump[-1].var set string storage bs:data dump[-1].var 0 -1
$data modify entity B5-0-0-0-2 text set value '[{"storage":"bs:data","nbt":"dump[-1].var","color":"$(number)"},{"storage":"bs:data","nbt":"dump[-1]._","color":"$(type)"}]'
data modify storage bs:out dump append from entity B5-0-0-0-2 text
