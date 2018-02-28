scoreboard players remove @a[score_Action_min=1] Action 1

scoreboard teams join Orange @a[score_Action_min=3,score_Action=3]
tellraw @a[score_Action_min=3,score_Action=3] ["",{"text":"> You are now in Orange <","color":"gold"}]
execute @a[score_Action_min=3,score_Action=3] ~ ~ ~ /playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1
scoreboard players set @a[score_Action_min=6,score_Action=6] Action 0
scoreboard teams join Blue @a[score_Action_min=8,score_Action=8]
tellraw @a[score_Action_min=8,score_Action=8] ["",{"text":"> You are now in Blue <","color":"blue"}]
execute @a[score_Action_min=8,score_Action=8] ~ ~ ~ /playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1
scoreboard players set @a[score_Action_min=11,score_Action=11] Action 0
scoreboard teams join Random @a[score_Action_min=13,score_Action=13]
tellraw @a[score_Action_min=13,score_Action=13] ["",{"text":"> You are now in Random Team <","color":"dark_gray"}]
execute @a[score_Action_min=13,score_Action=13] ~ ~ ~ /playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1
scoreboard players set @a[score_Action_min=21,score_Action=21] Action 0
execute @r[score_Action_min=23,score_Action=23] ~ ~ ~ /scoreboard teams join Spec @p[r=1]
tellraw @a[score_Action_min=23,score_Action=23] ["",{"text":"> You are now in Spectator <","color":"dark_green"}]
execute @a[score_Action_min=23,score_Action=23] ~ ~ ~ /playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1
scoreboard players set @a[score_Action_min=26,score_Action=26] Action 0
execute @r[score_Action_min=28,score_Action=28] ~ ~ ~ /tp @p[r=1] 2000 102 2000
execute @a[score_Action_min=27,score_Action=27] ~ ~ ~ /playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1
scoreboard players set @a[score_Action_min=31,score_Action=31] Action 0
execute @r[score_Action_min=33,score_Action=33] ~ ~ ~ /scoreboard players set @p[r=1] InGame -4
execute @a[score_Action_min=33,score_Action=33] ~ ~ ~ /playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1
scoreboard players set @a[score_Action_min=36,score_Action=36] Action 0
execute @r[score_Action_min=38,score_Action=38] ~ ~ ~ /tp @p[r=1] 5000 105 5000
execute @a[score_Action_min=37,score_Action=37] ~ ~ ~ /playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1
scoreboard players set @a[score_Action_min=51,score_Action=51] Action 0
scoreboard players reset @e[score_Action_min=52,score_Action=52]
execute @a[score_Action_min=53,score_Action=53] ~ ~ ~ /playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1
scoreboard players set @a[score_Action_min=56,score_Action=56] Action 0
tellraw @a[score_Action_min=58,score_Action=58] ["",{"text":"\n\n\n\n\nMore info and description of kits: >> Cick here <<\n\n\n\n------------------------------------------","clickEvent":{"action":"open_url","value":"https://gunivers.net/hierarchy"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to open URL"}]}},"color":"white","bold":"false","strikethrough":"false"},{"text":"\nHierarchy Beta: \n","color":"gold","bold":"true","strikethrough":"false"},{"text":"This map is inspired by the MOBA type games. Indeed, you will have available several kits each with their skills. Press 't' and click on the link to see their descripiton. In preview you have acces to 3 maps and 3 game modes. In both modes, the team that hasn't more tickets lose.\nIf you encounter any bugs, thank you to report to staff.","color":"gray","bold":"false","underlined":"false"},{"text":"\nTwitter: ","color":"aqua","bold":"false"},{"text":"@GuniversTeam","color":"white","clickEvent":{"action":"open_url","value":"https://twitter.com/GuniversTeam"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to open URL"}]}}},{"text":"         Facebook: ","color":"blue"},{"text":"Gunivers","clickEvent":{"action":"open_url","value":"https://www.facebook.com/pages/Gunivers/747333335333568?ref=hl"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to open URL"}]}},"color":"none"},{"text":"\nYoutube: ","color":"red"},{"text":"Gunivers Team","color":"none","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCtQb5O95cCGp9iquLjY9O1g"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to open URL"}]}}},{"text":"        WebSite: ","color":"dark_blue"},{"text":"Gunivers.net","clickEvent":{"action":"open_url","value":"http://gunivers.net"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to open URL"}]}},"color":"none"},{"text":"\nTwitchApp: ","color":"dark_purple"},{"text":"Gunivers ","color":"none","clickEvent":{"action":"open_url","value":"https://www.curse.com/invite/Ch36O8G1DEy73pHZ61sD2g"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to open URL"}]}}},{"text":"        Discord: ","color":"blue"},{"text":"Gunivers","clickEvent":{"action":"open_url","value":"https://discord.gg/0hXUtgUquSJE78RC"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to open URL"}]}},"color":"none"}]
execute @a[score_Action_min=58,score_Action=58] ~ ~ ~ /playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1
scoreboard players set @a[score_Action_min=61,score_Action=61] Action 0
execute @r[score_Action_min=62,score_Action=62] ~ ~ ~ /scoreboard players reset *
execute @r[score_Action_min=63,score_Action=63] ~ ~ ~ /kill @e[type=!Player]
execute @r[score_Action_min=63,score_Action=63] ~ ~ ~ /tellraw @a ["",{"text":"\n\n\n\n\n<","color":"white","bold":false},{"text":"Gunivers","color":"gold","bold":false},{"text":">","color":"white","bold":false},{"text":" This map has been successfully reseted !\n\n\n\n","color":"white","bold":false}]
scoreboard players set @a[score_Action_min=16,score_Action=16] Action 0
execute @a[score_Action_min=18,score_Action=18] ~ ~ ~ /setblock -14 65 -26 redstone_block 0
execute @a[score_Action_min=18,score_Action=18] ~ ~ ~ /playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1