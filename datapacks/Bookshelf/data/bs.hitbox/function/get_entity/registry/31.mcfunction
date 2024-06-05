# interaction group
data modify storage bs:ctx _ set from entity @s
data modify storage bs:out hitbox set value {}
data modify storage bs:out hitbox.width set from storage bs:ctx _.width
data modify storage bs:out hitbox.height set from storage bs:ctx _.height
