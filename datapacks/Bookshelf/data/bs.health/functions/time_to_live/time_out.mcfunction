$function bs.health:time_to_live/run_callbacks with storage bs:data health.ttl.callbacks[{uuid:$(UUID)}]
$data remove storage bs:data health.ttl.callbacks[{uuid:$(UUID)}]

execute at @s run tp @s ~ -1000000 ~
kill @s
