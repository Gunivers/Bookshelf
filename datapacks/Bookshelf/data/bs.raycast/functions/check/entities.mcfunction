tag @s add bs.raycast.origin
$execute as @e[tag=$(solid_entities),tag=!bs.raycast.origin,distance=..$(max_distance)] run function bs.raycast:check/entity/entity
tag @s remove bs.raycast.origin
