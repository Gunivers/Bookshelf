$data modify storage bs:data health.ttl.on_death set value '$(on_death)'
function bs.health:time_to_live/register_callbacks with entity @s
