execute @e[type=Arrow,score_Class_min=1] ~ ~ ~ particle blockcrack ~ ~ ~ 0 0 0 0 1 force @a 172
replaceitem entity @a[m=2,score_InGame_min=1,score_Class_min=21,score_Class=29,score_HaveBow=0] slot.container.17 arrow 1 0
scoreboard players set @a[score_HaveBow_min=1] HaveBow 0
scoreboard players set @a[score_InGame_min=1,score_Class_min=21,score_Class=29] HaveBow 1 {SelectedItem:{id:"minecraft:bow"}}
replaceitem entity @a[score_EffSilencePrim=0,m=2,score_InGame_min=1,score_Class_min=21,score_Class=29,score_HaveBow=0,score_UpgradedWeapon_min=0,score_UpgradedWeapon=0,score_UseBow=0] slot.hotbar.0 bow 1 0 {Unbreakable:1,ench:[{id:49,lvl:0},{id:51,lvl:1},{id:48,lvl:1},{id:50,lvl:0}],display:{Name:"Basic Attack  0✸  0s"}}
execute @e[type=Arrow,score_Class=-1] ~ ~ ~ particle blockcrack ~ ~ ~ 0 0 0 0 1 force @a 22