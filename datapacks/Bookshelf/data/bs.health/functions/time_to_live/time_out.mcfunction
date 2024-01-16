$function bs.health:time_to_live/run_callback with storage bs:data health.ttl.callbacks[{uuid:$(UUID)}]
$data remove storage bs:data health.ttl.callbacks[{uuid:$(UUID)}]

scoreboard players reset @s bs.ttl
execute at @s run tp @s ~ -1000000 ~
kill @s
