data modify storage bs:out dump set value ['{"text":"","color":"#cccccc"}']
$data modify storage bs:data dump set value [{var:$(var),indent:'"\\u2000"',expand:1}]
function bs.dump:format/any
tellraw @s [{"type":"nbt","storage":"bs:out","nbt":"dump[]","separator":"","interpret":true}]
