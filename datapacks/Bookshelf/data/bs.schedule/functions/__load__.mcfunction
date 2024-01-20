# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

forceload add 0 0
execute unless entity B5-0-0-0-1 run summon minecraft:marker 0.0 0.0 0.0 {UUID:[I;181,0,0,1],Tags:["bs.entity","bs.persistent"],CustomName:'[{"text":"BS ","color":"dark_gray"},{"text":"Marker","color":"aqua"}]'}

scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]

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
