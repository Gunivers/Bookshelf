
function Glib:Entity/Id/Check

execute @s ~ ~ ~ /function glib:Entity/Location/Get

execute @e[tag=IdMatch,c=1] ~ ~ ~ /function glib:Entity/Location/Get

execute @s ~ ~ ~ /function glib:Entity/Location/RelativeToTargetID