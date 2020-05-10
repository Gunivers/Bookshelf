
function Glib:Entity/Id/Check

execute @s ~ ~ ~ /function glib:Entity/Orientation/Get
execute @e[tag=IdMatch,c=1] ~ ~ ~ /function glib:Entity/Orientation/Get

execute @s ~ ~ ~ /function glib:Entity/Orientation/RelativeToTargetID

execute @e ~ ~ ~ /function glib:Entity/Orientation/Normalize