# We use both an advancement and an objective for educational purposes and to handle potential limitations:
# - Advancements allow continuous usage but may fail with certain blocks like signs.
# - Scores work universally but cannot be used continuously.

# Grants the use_brush (color) advancement if the color brush is used.
execute as @a[scores={bs.example.painter.use_brush=1..}] \
  if items entity @s weapon minecraft:brush[minecraft:custom_data={"bs.example:color_brush":true}] \
  run advancement grant @s only bs.example.painter:use_brush color

# Grants the use_brush (magic) advancement if the magic brush is used.
execute as @a[scores={bs.example.painter.use_brush=1..}] \
  if items entity @s weapon minecraft:brush[minecraft:custom_data={"bs.example:magic_brush":true}] \
  run advancement grant @s only bs.example.painter:use_brush magic

# Resets the brush use score for all players who have used a brush.
scoreboard players reset @a[scores={bs.example.painter.use_brush=1..}] bs.example.painter.use_brush
