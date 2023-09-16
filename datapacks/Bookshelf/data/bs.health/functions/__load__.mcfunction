# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

scoreboard objectives add bs.in dummy [{"text":"BS ","color":"dark_gray"},{"text":"Input","color":"aqua"}]
scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.ttl dummy [{"text":"BS ","color":"dark_gray"},{"text":"Time to Live","color":"aqua"}]
scoreboard objectives add bs.health.max dummy [{"text":"BS ","color":"dark_gray"},{"text":"Health","color":"aqua"}]
scoreboard objectives add bs.health.points dummy [{"text":"BS ","color":"dark_gray"},{"text":"Health","color":"aqua"}]

scoreboard players add $health.add_health.points bs.in 0
scoreboard players add $health.add_max_health.points bs.in 0
scoreboard players add $health.set_health.points bs.in 0
scoreboard players add $health.set_max_health.points bs.in 0

scoreboard players add #health.add_health.check bs.data 0
scoreboard players add #health.add_max_health.check bs.data 0
scoreboard players add #health.set_health.check bs.data 0
scoreboard players add #health.set_max_health.check bs.data 0

execute unless data storage bs:in health.add_health.points run data modify storage bs:in health.add_health.points set value 0
execute unless data storage bs:in health.add_max_health.points run data modify storage bs:in health.add_max_health.points set value 0
execute unless data storage bs:in health.set_health.points run data modify storage bs:in health.set_health.points set value 0
execute unless data storage bs:in health.set_max_health.points run data modify storage bs:in health.set_max_health.points set value 0

data modify storage bs:const health.ttl.units set value [ \
  {name:"t",scale:1}, \
  {name:"tick",scale:1}, \
  {name:"s",scale:20}, \
  {name:"second",scale:20}, \
  {name:"m",scale:1200}, \
  {name:"minute",scale:1200}, \
  {name:"hour",scale:72000}, \
  {name:"h",scale:72000}, \
]
