# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

forceload add 0 0
execute unless entity B5-0-0-0-3 run summon minecraft:item_display 0.0 0.0 0.0 {view_range:0f,UUID:[I;181,0,0,3]}

scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]

execute unless data storage bs:data schedule.commands run data modify storage bs:data schedule.commands set value []
data modify storage bs:const schedule.units set value [ \
  {name:"t",scale:1}, \
  {name:"tick",scale:1}, \
  {name:"s",scale:20}, \
  {name:"second",scale:20}, \
  {name:"m",scale:1200}, \
  {name:"minute",scale:1200}, \
  {name:"hour",scale:72000}, \
  {name:"h",scale:72000}, \
]
