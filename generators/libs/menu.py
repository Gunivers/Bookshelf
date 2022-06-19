import os
from numpy import *

def build(menus, dest = "./menu.mcfunction"):
    with open(dest, "w") as f:
        f.write(f"""# This function was automatically generated.\n\n""")
        for menu in menus:
            f.write(f"execute if entity @a[tag={menu[0]}] run function {menu[1]}\n")

def paged_menu( dest="./main.mcfunction",
                title="Title",
                menu_tag= "menu_tag",
                items = os.listdir("../datapacks/Glib/data/"),
                parent_menu_tag = None,
                maxLine = 20,
                group_tag = "glib.menu.active",
                exit_msg = None
            ):

    i = 0
    page = 1
    n = int(ceil(len(items) / (maxLine-5))) 
    menu = open(dest, "w", encoding="utf-8")
    newline = "\n"
    
    menu.write(f"""# This function was automatically generated.\n\n""")
    
    menu.write(f"""execute as @a[tag={menu_tag},tag=!{group_tag}] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1\n""")
    menu.write(f"""tag @a[tag={menu_tag}] add {group_tag}\n""")

    menu.write(f"""scoreboard players add @a[tag={menu_tag}] glib.menu.page 0\n""")

    menu.write(f"""execute as @a[tag={menu_tag},tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1\n""")
    menu.write(f"""execute as @a[tag={menu_tag},tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1\n""")
    menu.write(f"""execute as @a[tag={menu_tag},tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1\n""")
    menu.write(f"""execute as @a[tag={menu_tag},tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1\n""")
    menu.write(f"""execute as @a[tag={menu_tag}] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page {n-1}\n""")
    menu.write(f"""execute as @a[tag={menu_tag}] if score @s glib.menu.page matches {n}.. run scoreboard players set @s glib.menu.page 0\n""")
    menu.write(f"""tag @a[tag={menu_tag}] remove glib.menu.nextPage\n""")
    menu.write(f"""tag @a[tag={menu_tag}] remove glib.menu.previousPage\n""")


    if parent_menu_tag is not None:
        back = "<"
        back_msg = "Go back"
        menu.write(f"""execute as @a[tag={menu_tag},tag={parent_menu_tag}] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1\n""")
        menu.write(f"""tag @a[tag={menu_tag}] remove {parent_menu_tag}\n""")
        menu.write(f"""tag @a[tag={menu_tag}.close] add {parent_menu_tag}\n""")
    else:
        back = "x"
        back_msg = "Exit menu"
        menu.write(f"""tag @a[tag={menu_tag}.close] remove {group_tag}\n""")

    if exit_msg is not None: menu.write(f"""tellraw @a[tag={menu_tag}.close] {exit_msg}\n""")
    
    menu.write(f"""execute as @a[tag={menu_tag}.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1\n""")
    menu.write(f"""tag @a[tag={menu_tag}.close] remove {menu_tag}\n""")
    menu.write(f"""tag @a[tag={menu_tag}.close] remove {menu_tag}.close\n""")    

    # Alway align bottom
    msg = str([{"text":f"{newline*20}"}]).replace("'",'"')
    menu.write(f"""\ntellraw @a[tag={menu_tag}] {msg}\n\n""")  

    # menu.write(f"""\n# Page {page}\n\n""")
    for item in items:
        if i == 0 : menu.write(f"""\n# Page {page}\n\n""")
        i += 1

        page_score = str({f"glib.menu.page = {page-1}"}).replace("'","")


        if item[1] == "tag":
            msg_add = str(["",{"text":f" \u0020 {item[0]}: ","color":"gray","clickEvent":{"action":"run_command","value":f"/tag @s add {item[2]}"},"hoverEvent":{"action":"show_text","contents":"Click to change the value"}},{"text":"✗","color":"red","clickEvent":{"action":"run_command","value":f"/tag @s add {item[2]}"},"hoverEvent":{"action":"show_text","contents":"Click to change the value"}}]).replace("'",'"')
            msg_remove = str(["",{"text":f" \u0020 {item[0]}: ","color":"gray","clickEvent":{"action":"run_command","value":f"/tag @s remove {item[2]}"},"hoverEvent":{"action":"show_text","contents":"Click to change the value"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":f"/tag @s remove {item[2]}"},"hoverEvent":{"action":"show_text","contents":"Click to change the value"}}]).replace("'",'"')
            menu.write(f"""tellraw @a[tag={menu_tag},scores={page_score},tag=!{item[2]}] {msg_add}\n""")
            menu.write(f"""tellraw @a[tag={menu_tag},scores={page_score},tag={item[2]}] {msg_remove}\n""")

        if item[1] == "text":
            msg = str([{"text":f" \u0020 {item[0]}","color":"gray"}]).replace("'",'"')
            menu.write(f"""tellraw @a[tag={menu_tag},scores={page_score}] {msg}\n""")

        if item[1] == "link":
            msg = str([{"text":" \u0020 "},{"text":item[0],"color":"blue","clickEvent":{"action":"open_url","value":item[2]},"hoverEvent":{"action":"show_text","contents":"Click to follow the link"}},{"text":" ➥","color":"blue"}]).replace("'",'"')
            menu.write(f"""tellraw @a[tag={menu_tag},scores={page_score}] {msg}\n""")

        if item[1] == "submenu":
            msg = str({"text":f" \u0020 + {item[0]}","color":"gold","clickEvent":{"action":"run_command","value":f"/tag @s add {item[2]}"},"hoverEvent":{"action":"show_text","contents":"Click to open the sub-menu"}}).replace("'",'"')
            menu.write(f"""tellraw @a[tag={menu_tag},scores={page_score}] {msg}\n""")
            

        if i > maxLine-6:
            page_msg = str([{"text":"\n \u0020 Page ","color":"dark_aqua"},{"text":"[<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s add glib.menu.previousPage"},"hoverEvent":{"action":"show_text","contents":"Previous page (or go to the last one)"}},{"text":f" {page} / {n} ","color":"dark_aqua"},{"text":"[>]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s add glib.menu.nextPage"},"hoverEvent":{"action":"show_text","contents":"Next page (or go back to the first one)"}}]).replace("'",'"')

            menu.write(f"""\ntellraw @a[tag={menu_tag},scores={page_score}] {page_msg}\n\n""")
            page += 1
            i = 0
            
    if page > 1:
        page_score = str({f"glib.menu.page = {n-1}"}).replace("'","")
        page_msg = str([{"text":"\n \u0020 Page ","color":"dark_aqua"},{"text":"[<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s add glib.menu.previousPage"},"hoverEvent":{"action":"show_text","contents":"Previous page (or go to the last one)"}},{"text":f" {n} / {n} ","color":"dark_aqua"},{"text":"[>]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s add glib.menu.nextPage"},"hoverEvent":{"action":"show_text","contents":"Next page (or go back to the first one)"}}]).replace("'",'"')
        menu.write(f"""\ntellraw @a[tag={menu_tag},scores={page_score}] {page_msg}\n\n""")

    # Title
    title_msg = str([{"text":"\n"},{"text":f" {back} ","color":"red","clickEvent":{"action":"run_command","value":f"/tag @s add {menu_tag}.close"},"hoverEvent":{"action":"show_text","contents":f"{back_msg}"}},{"text":f"{title}","color":"dark_aqua","underlined":True,"bold":True,"clickEvent":{"action":"run_command","value":f"/tag @s add {menu_tag}.close"},"hoverEvent":{"action":"show_text","contents":f"{back_msg}"}}]).replace("'",'"').replace("True","true")
    menu.write(f"""\ntellraw @a[tag={menu_tag}] {title_msg}""")