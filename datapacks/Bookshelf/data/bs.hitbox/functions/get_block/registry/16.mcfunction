# candle group
execute if block ~ ~ ~ #minecraft:candles[candles=1] run data modify storage bs:out hitbox.shape set value [[7, 0, 7, 9, 6, 9]]
execute if block ~ ~ ~ #minecraft:candles[candles=2] run data modify storage bs:out hitbox.shape set value [[5, 0, 6, 11, 6, 9]]
execute if block ~ ~ ~ #minecraft:candles[candles=3] run data modify storage bs:out hitbox.shape set value [[5, 0, 6, 10, 6, 11]]
execute if block ~ ~ ~ #minecraft:candles[candles=4] run data modify storage bs:out hitbox.shape set value [[5, 0, 5, 11, 6, 10]]
