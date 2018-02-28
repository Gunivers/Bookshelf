replaceitem entity @a[score_EffPlane_min=1,score_HaveElytra=0,score_InGame_min=1] slot.armor.chest minecraft:elytra 1 0
scoreboard players remove @a[score_EffPlane_min=1] EffPlane 1
scoreboard players add @a HaveElytra 0
scoreboard players set @a HaveElytra 2 {Inventory:[{Slot:102b,id:"minecraft:elytra"}]}
scoreboard players remove @a[score_HaveElytra_min=1] HaveElytra 1
