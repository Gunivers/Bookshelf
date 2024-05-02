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

data modify storage bs:const log.messages."bs.health" set value { \
  debug: '{"nbt": "log.messages.bs.debug", "storage": "bs:const", "interpret": true}', \
  info: '{"nbt": "log.messages.bs.info", "storage": "bs:const", "interpret": true}', \
  warn: '{"nbt": "log.messages.bs.warn", "storage": "bs:const", "interpret": true}', \
  error: '{"nbt": "log.messages.bs.error", "storage": "bs:const", "interpret": true}' \
}
