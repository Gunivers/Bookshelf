# player group
data modify storage bs:out hitbox set value {width:0.6,height:1.8}
execute at @s positioned ~ ~1.6 ~ unless entity @s[dx=0] run data modify storage bs:out hitbox.height set value 1.5
execute at @s positioned ~ ~1 ~ unless entity @s[dx=0] run data modify storage bs:out hitbox.height set value 0.6
execute at @s positioned ~ ~.5 ~ unless entity @s[dx=0] run data modify storage bs:out hitbox set value {width:0.2,height:0.2}
