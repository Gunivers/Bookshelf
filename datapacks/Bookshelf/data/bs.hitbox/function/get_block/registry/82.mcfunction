# tall_crop group
execute if block ~ ~ ~ #bs.hitbox:shape/tall_crop[age=0] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 2, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/tall_crop[age=1] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 4, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/tall_crop[age=2] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 6, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/tall_crop[age=3] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16]]
