$scoreboard objectives add bs.sidebar.$(id) dummy $(name)
$data modify storage bs:sidebar registry append value {id:'$(id)',contents:$(contents)}

execute store result storage bs:sidebar do.line int 1 run scoreboard players set #sidebar.line bs.data 0
execute if data storage bs:sidebar do.contents[0] run function bs.sidebar:create/loop with storage bs:sidebar do
