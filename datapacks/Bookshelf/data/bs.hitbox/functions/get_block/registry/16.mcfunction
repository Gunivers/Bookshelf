# candle group
execute if block ~ ~ ~ #bs.hitbox:shape/candle[candles=1] run data modify storage bs:out hitbox.shape set value [[7, 0, 7, 9, 6, 9]]
execute if block ~ ~ ~ #bs.hitbox:shape/candle[candles=2] run data modify storage bs:out hitbox.shape set value [[5, 0, 6, 11, 6, 9]]
execute if block ~ ~ ~ #bs.hitbox:shape/candle[candles=3] run data modify storage bs:out hitbox.shape set value [[5, 0, 6, 10, 6, 11]]
execute if block ~ ~ ~ #bs.hitbox:shape/candle[candles=4] run data modify storage bs:out hitbox.shape set value [[5, 0, 5, 11, 6, 10]]
