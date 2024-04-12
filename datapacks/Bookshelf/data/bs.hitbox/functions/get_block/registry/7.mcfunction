# bed group
execute if block ~ ~ ~ #bs.hitbox:shape/bed[facing=west,part=head] run data modify storage bs:out hitbox.shape set value [[0, 3, 0, 16, 9, 16],[0, 0, 0, 3, 3, 3],[0, 0, 13, 3, 3, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/bed[facing=west,part=foot] run data modify storage bs:out hitbox.shape set value [[0, 3, 0, 16, 9, 16],[13, 0, 0, 16, 3, 3],[13, 0, 13, 16, 3, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/bed[facing=east,part=head] run data modify storage bs:out hitbox.shape set value [[0, 3, 0, 16, 9, 16],[13, 0, 0, 16, 3, 3],[13, 0, 13, 16, 3, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/bed[facing=east,part=foot] run data modify storage bs:out hitbox.shape set value [[0, 3, 0, 16, 9, 16],[0, 0, 0, 3, 3, 3],[0, 0, 13, 3, 3, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/bed[facing=north,part=head] run data modify storage bs:out hitbox.shape set value [[0, 3, 0, 16, 9, 16],[0, 0, 0, 3, 3, 3],[13, 0, 0, 16, 3, 3]]
execute if block ~ ~ ~ #bs.hitbox:shape/bed[facing=north,part=foot] run data modify storage bs:out hitbox.shape set value [[0, 3, 0, 16, 9, 16],[0, 0, 13, 3, 3, 16],[13, 0, 13, 16, 3, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/bed[facing=south,part=head] run data modify storage bs:out hitbox.shape set value [[0, 3, 0, 16, 9, 16],[0, 0, 13, 3, 3, 16],[13, 0, 13, 16, 3, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/bed[facing=south,part=foot] run data modify storage bs:out hitbox.shape set value [[0, 3, 0, 16, 9, 16],[0, 0, 0, 3, 3, 3],[13, 0, 0, 16, 3, 3]]
