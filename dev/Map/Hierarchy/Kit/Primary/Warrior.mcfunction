replaceitem entity @a[score_EffSilencePrim=0,score_InGame_min=1,score_Class_min=31,score_Class=39,score_UpgradedWeapon=0,m=2] slot.hotbar.0 golden_axe 1 0 {Unbreakable:1,ench:[{id:19,lvl:0},{id:16,lvl:0}],display:{Name:"Basic Attack  0✸  2s"},HideFlags:63}
scoreboard players set @a[score_HaveShield_min=1] HaveShield 0
scoreboard players set @a HaveShield 1 {Inventory:[{Slot:-106b,id:"minecraft:shield"}]}
scoreboard players add @a HaveShield 0
replaceitem entity @a[score_Class=30] slot.weapon.offhand air
replaceitem entity @a[score_InGame=0] slot.weapon.offhand air
effect @a[tag=IsPlaying,score_Class_min=31,score_Class=39,score_health=20] resistance 1 1 true
effect @a[tag=IsPlaying,score_Class_min=31,score_Class=39,score_health_min=20,score_health=40] resistance 1 0 true
scoreboard players tag @a remove Slot
scoreboard players tag @a add Slot {SelectedItemSlot:0}
replaceitem entity @a[tag=Slot,score_HaveShield=0,score_EffSilencePrim=0,score_InGame_min=1,score_Class_min=31,score_Class=39,m=2] slot.weapon.offhand shield 1 0 {Unbreakable:1,ench:[{id:19,lvl:0},{id:16,lvl:0}],display:{Name:"Basic Attack  0✸  2s"},HideFlags:63}
clear @a[tag=!Slot,score_InGame_min=1,score_Class_min=31,score_Class=39,m=2] shield