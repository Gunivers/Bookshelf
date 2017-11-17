replaceitem entity @a[score_EffSilencePrim_min=1,score_InGame_min=1,m=2] slot.hotbar.0 minecraft:barrier 1 0 {display:{Name:"Silence ..."}}
scoreboard players remove @e[score_EffSilencePrim_min=1] EffSilencePrim 1
replaceitem entity @a[score_EffSilencePrim_min=1,score_Class_min=31,score_Class=31,score_InGame_min=1,m=2] slot.weapon.offhand minecraft:barrier 1 0 {display:{Name:"Silence ..."}}
replaceitem entity @a[score_EffSilencePrim_min=1,score_EffSilencePrim=1,score_Class_min=31,score_Class=31,score_InGame_min=1,m=2] slot.weapon.offhand minecraft:air
