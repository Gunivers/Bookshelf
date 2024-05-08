# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# CODE ------------------------------------------------------------------------

scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.ttl dummy [{"text":"BS ","color":"dark_gray"},{"text":"Time to Live","color":"aqua"}]

data modify storage bs:const health.point set value 100000
data modify storage bs:const health.units set value [ \
  {name:"t",scale:1}, \
  {name:"tick",scale:1}, \
  {name:"s",scale:20}, \
  {name:"second",scale:20}, \
  {name:"m",scale:1200}, \
  {name:"minute",scale:1200}, \
  {name:"hour",scale:72000}, \
  {name:"h",scale:72000}, \
]

execute unless data storage bs:const log.messages[{namespaces: ["bs.health"]}] run data modify storage bs:const log.messages[{namespaces: ["bs"]}].namespaces append value "bs.health"
