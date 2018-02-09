
function Gunivers-Lib:Entity/Id/Check

execute @s ~ ~ ~ /function gunivers-lib:Entity/Orientation/Get
execute @e[tag=IdMatch,c=1] ~ ~ ~ /function gunivers-lib:Entity/Orientation/Get

execute @s ~ ~ ~ /function gunivers-lib:Entity/Orientation/RelativeToTargetID

execute @e ~ ~ ~ /function gunivers-lib:Entity/Orientation/Normalize