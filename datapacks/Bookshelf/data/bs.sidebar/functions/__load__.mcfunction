# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

scoreboard players set module.sidebar bs.metadata 1

forceload add 0 0
# TEXT DISPLAY UUID: [c9337257-2804-47d4-90bf-3eb772a4c30c]
execute unless entity @e[type=minecraft:text_display,tag=bs.sidebar.text] run summon minecraft:text_display 0 0 0 {Tags:["bs.sidebar.text"],view_range:0f,UUID:[I;-919375273,671369172,-1866514761,1923400460]}
execute unless data storage bs:sidebar do.score run data modify storage bs:sidebar do.score set value "‌"
