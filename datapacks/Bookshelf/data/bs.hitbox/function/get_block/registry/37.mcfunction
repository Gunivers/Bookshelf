# ceiling_hanging_signs group
data modify storage bs:out hitbox.shape set value [[3, 0, 3, 13, 16, 13]]
execute if block ~ ~ ~ #bs.hitbox:shape/ceiling_hanging_sign[rotation=0] run data modify storage bs:out hitbox.shape set value [[1, 0, 7, 15, 10, 9]]
execute if block ~ ~ ~ #bs.hitbox:shape/ceiling_hanging_sign[rotation=4] run data modify storage bs:out hitbox.shape set value [[7, 0, 1, 9, 10, 15]]
execute if block ~ ~ ~ #bs.hitbox:shape/ceiling_hanging_sign[rotation=8] run data modify storage bs:out hitbox.shape set value [[1, 0, 7, 15, 10, 9]]
execute if block ~ ~ ~ #bs.hitbox:shape/ceiling_hanging_sign[rotation=12] run data modify storage bs:out hitbox.shape set value [[7, 0, 1, 9, 10, 15]]
