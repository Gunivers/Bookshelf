# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

scoreboard objectives add bs.data dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Data","color":"aqua"}]

scoreboard players set $module.sidebar.enabled bs.metadata 1

forceload add 0 0
execute unless entity c9337257-2804-47d4-90bf-3eb772a4c30c run summon minecraft:text_display 0 0 0 {view_range:0f,UUID:[I;-919375273,671369172,-1866514761,1923400460]}
execute unless data storage bs:data sidebar.do.score run data modify storage bs:data sidebar.do.score set value "‌"
