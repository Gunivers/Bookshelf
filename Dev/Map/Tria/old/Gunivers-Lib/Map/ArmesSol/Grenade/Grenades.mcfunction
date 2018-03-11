#Lancer
execute @a[score_Grenade_min=1,score_UseCarrot_min=1,score_HoldItem_min=9,score_HoldItem=9] ~ ~ ~ function Gunivers-Lib:Map/ArmesSol/Grenade/GrenadeThrow

#Items
replaceitem entity @a[score_Grenade_min=1,score_Id_min=1,score_Id=5,score_InVehicle=0] slot.hotbar.8 carrot_on_a_stick 1 0 {display:{Name:"Grenade"}}
replaceitem entity @a[score_Grenade=0,score_Id_min=1,score_Id=5,score_InVehicle=0] slot.hotbar.8 stained_glass_pane 1 15 {display:{Name:""}}

#Affichage
execute @a[score_HoldItem_min=9,score_HoldItem=9,score_InVehicle=0,score_Id_min=1,score_Id=5] ~ ~ ~ title @s actionbar {"text":"< ","extra":[{"score":{"objective":"Grenade","name":"@p"},"bold":"true"},{"text":" >"}]}