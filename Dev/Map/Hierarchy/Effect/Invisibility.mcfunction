effect @e[score_EffInvisibility_min=1,tag=IsPlaying] invisibility 1 100 true
effect @e[score_EffInvisibility=0,score_EffInvisibility_min=0,score_InGame_min=1,score_LifeState=500] invisibility 0
replaceitem entity @a[score_EffInvisibility_min=1,score_EffPlane=0] slot.armor.chest air 1 0
replaceitem entity @a[score_EffInvisibility_min=1] slot.armor.legs air 1 0
replaceitem entity @a[score_EffInvisibility_min=1] slot.armor.feet air 1 0
scoreboard players remove @e[score_EffInvisibility_min=1] EffInvisibility 1
