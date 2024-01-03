from __future__ import annotations

import os
import math

def convert_mcfunction_id(
    mcfunction_id: str,
    base_path: os.PathLike,
) -> os.PathLike:
    # the format of the id is: namespace:folder/file
    # the id glib.core:menu/debug correspond to the file:
    # data/glib.core/functions/menu/debug.mcfunction
    namespace = mcfunction_id.split(":")[0]
    function_path = mcfunction_id.split(":")[1]
    return os.path.join(
        base_path,
        namespace,
        "functions",
        function_path + ".mcfunction",
    )

class MenuRunner:
    def __init__(self, output: os.PathLike, mcfunction_id: str = None):
        self.mcfunction_id = mcfunction_id
        if self.mcfunction_id is None:
            self.output = output
        else:
            self.output = convert_mcfunction_id(
                self.mcfunction_id,
                output,
            )
        
        self.menus: list[Menu] = []
    
    def add_menu(self, menu: Menu):
        self.menus.append(menu)
    
    def build(self):
        target_directory = os.path.split(self.output)[0]
        
        if not os.path.exists(target_directory):
            os.makedirs(target_directory)
        
        with open(self.output, 'w') as file:
            file.write(f"""# This function was automatically generated.\n\n""")
            for menu in self.menus:
                file.write(
                    f"execute if entity @a[tag={menu.menu_tag}] run function {menu.mcfunction_id}\n"
                )

class BaseItem:
    def compile(self, menu: Menu) -> str:
        raise NotImplementedError

class Menu(BaseItem):
    def __init__(
        self,
        output: os.PathLike | str,
        mcfunction_id: str = None,
        menu_tag: str = "menu_tag",
        group_tag: str = "glib.menu.active",
        parent: Menu | None = None,
        title: str = "Title",
        max_lines: int = 20,
        exit_message: str = None,
        submenu_name: str = None,
    ) -> None:
        self.mcfunction_id = mcfunction_id
        if self.mcfunction_id is None:
            self.output = output
        else:
            self.output = convert_mcfunction_id(
                self.mcfunction_id,
                output,
            )
        
        self.menu_tag = menu_tag
        self.group_tag = group_tag
        self.parent = parent
        self.items = []
        
        self.title = title
        self.max_lines = max_lines
        self.exit_message = exit_message
        if submenu_name is not None:
            self.submenu_name = submenu_name
        else:
            self.submenu_name = self.title
        
    def add_item(self, item: BaseItem):
        self.items.append(item)
    
    def build(self) -> None:
        if len(self.items) == 0:
            self.items.append(Text("Nothing here :/")) # fallback message
        
        target_directory = os.path.split(self.output)[0]
        # create the folder if needed
        if not os.path.exists(target_directory): os.makedirs(target_directory)
        
        # we calculate the number of page needed for the menu
        self.number_of_pages = int(
            math.ceil(len(self.items) / (self.max_lines-5))
        )

        with open(self.output, 'w', encoding='utf-8') as output:
            # message for the innocent user
            output.write("# This function was automatically generated.\n\n")
            
            # play a sound when opening the menu
            output.write(
                f"""execute as @a[tag={self.menu_tag},tag=!{self.group_tag}] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1\n"""
            )
            
            # add the group tag to the user
            output.write(
                f"""tag @a[tag={self.menu_tag}] add {self.group_tag}\n"""
            )
            
            # add the scoreboard for the current page
            output.write(
                f"""scoreboard players add @a[tag={self.menu_tag}] glib.menu.page 0\n"""
            )
            
            # play a sound when changing page
            output.write(f"""execute as @a[tag={self.menu_tag},tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1\n""")
            output.write(f"""execute as @a[tag={self.menu_tag},tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1\n""")
            output.write(f"""execute as @a[tag={self.menu_tag},tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1\n""")
            output.write(f"""execute as @a[tag={self.menu_tag},tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1\n""")
            
            # if the user goes before the first page, he is sent to the last one
            output.write(
                f"""execute as @a[tag={self.menu_tag}] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page {self.number_of_pages-1}\n"""
            )
            
            # if the user goes after the first page, he is sent to the first one
            output.write(
                f"""execute as @a[tag={self.menu_tag}] if score @s glib.menu.page matches {self.number_of_pages}.. run scoreboard players set @s glib.menu.page 0\n"""
            )
            
            # we are done changing page
            output.write(f"""tag @a[tag={self.menu_tag}] remove glib.menu.nextPage\n""")
            output.write(f"""tag @a[tag={self.menu_tag}] remove glib.menu.previousPage\n""")
            
            if self.parent is not None: # if the menu is a submenu
                # we set the return button to a back button
                return_symbol = "<"
                return_message = "Go back"
                
                # we play the turning page sound when the user come back
                output.write(
                    f"""execute as @a[tag={self.menu_tag},tag={self.parent.menu_tag}] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1\n"""
                )
                
                # we send the user to the previous menu
                output.write(f"""tag @a[tag={self.menu_tag}] remove {self.parent.menu_tag}\n""")
                output.write(f"""tag @a[tag={self.menu_tag}.close] add {self.parent.menu_tag}\n""")
            
            else:
                # we set the return button to an exit button
                return_symbol = "x"
                return_message = "Exit menu"
                
                # we close the menu
                output.write(
                    f"""tag @a[tag={self.menu_tag}.close] remove {self.group_tag}\n"""
                )

            # we send the exit message if needed
            if self.exit_message is not None:
                output.write(
                    f"""tellraw @a[tag={self.menu_tag}.close] {self.exit_message}\n"""
                )
            
            # if the user closes the menu, we play the sound
            output.write(
                f"""execute as @a[tag={self.menu_tag}.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1\n"""
            )
            
            # we really close the menu now
            output.write(f"""tag @a[tag={self.menu_tag}.close] remove {self.menu_tag}\n""")
            output.write(f"""tag @a[tag={self.menu_tag}.close] remove {self.menu_tag}.close\n""")
            
            # we make sure the menu is aligned to the bottom
            newline = "\n"
            padding = str([{'text':f"{newline*20}"}]).replace("'",'"')
            output.write(f"""\ntellraw @a[tag={self.menu_tag}] {padding}\n\n""")
        
            # we initiate the page and the line as attributes of the object to
            # allow items to access this data
            self.page = 1
            self.line = 0
            
            for item in self.items:
                # we check the type of the item
                if not isinstance(item, BaseItem):
                    raise TypeError("Items must inherit from the Base object")
                
                # we show the page number on each new page
                if self.line == 0:
                    output.write(f"""\n# Page {self.page}\n\n""")
                    
                # we go to the next line
                self.line += 1
                
                self.page_score = str({f"glib.menu.page = {self.page-1}"}).replace("'","")
                
                # we add the item to the script after compiling it
                output.write(
                    item.compile(self) + "\n"
                )
                
                if self.line > self.max_lines-6 \
                    and (
                        self.page < self.number_of_pages-1
                        or len(self.items)%(self.max_lines-5) > 0
                    ): # we hit the end of a page
                    # we write the change page message
                    page_message = str([{"text":"\n \u0020 Page ","color":"dark_aqua"},{"text":"[<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s add glib.menu.previousPage"},"hoverEvent":{"action":"show_text","contents":"Previous page"}},{"text":f" {self.page} / {self.number_of_pages} ","color":"dark_aqua"},{"text":"[>]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s add glib.menu.nextPage"},"hoverEvent":{"action":"show_text","contents":"Next page"}}]).replace("'",'"')
                    output.write(f"""\ntellraw @a[tag={self.menu_tag},scores={self.page_score}] {page_message}\n\n""")
                    
                    # we go to the next page
                    self.page += 1
                    self.line = 0
            
            if self.page > 1 and len(self.items)%(self.max_lines-5) > 0: # if there is more than one page, we show the buttons to change page
                self.page_score = str({f"glib.menu.page = {self.number_of_pages-1}"}).replace("'","")
                page_msg = str([{"text":"\n \u0020 Page ","color":"dark_aqua"},{"text":"[<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s add glib.menu.previousPage"},"hoverEvent":{"action":"show_text","contents":"Previous page"}},{"text":f" {self.number_of_pages} / {self.number_of_pages} ","color":"dark_aqua"},{"text":"[>]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s add glib.menu.nextPage"},"hoverEvent":{"action":"show_text","contents":"Next page"}}]).replace("'",'"')
                output.write(f"""\ntellraw @a[tag={self.menu_tag},scores={self.page_score}] {page_msg}\n\n""")
            
            # we show the title
            title_msg = str([{"text":"\n"},{"text":f" {return_symbol} ","color":"red","clickEvent":{"action":"run_command","value":f"/tag @s add {self.menu_tag}.close"},"hoverEvent":{"action":"show_text","contents":f"{return_message}"}},{"text":f"{self.title}","color":"dark_aqua","underlined":True,"bold":True,"clickEvent":{"action":"run_command","value":f"/tag @s add {self.menu_tag}.close"},"hoverEvent":{"action":"show_text","contents":f"{return_message}"}}]).replace("'",'"').replace("True","true")
            output.write(f"""\ntellraw @a[tag={self.menu_tag}] {title_msg}""")
    
    def compile(self, menu: Menu) -> str:
        msg = str({"text":f" \u0020 + {self.submenu_name}","color":"gold","clickEvent":{"action":"run_command","value":f"/tag @s add {self.menu_tag}"},"hoverEvent":{"action":"show_text","contents":"Click to open the sub-menu"}}).replace("'",'"')
        return f"""tellraw @a[tag={menu.menu_tag},scores={menu.page_score}] {msg}"""

class Text(BaseItem):
    def __init__(self, display: str) -> None:
        self.display = display
    
    def compile(self, menu: Menu) -> str:
        compiled_text = str([{"text":f" \u0020 {self.display}","color":"gray"}]).replace("'",'"')
        return f"""tellraw @a[tag={menu.menu_tag},scores={menu.page_score}] {compiled_text}"""

class Link(BaseItem):
    def __init__(self, display: str, url: str) -> None:
        self.display = display
        self.url = url
        
    def compile(self, menu: Menu):
        compiled_text = str([{"text":" \u0020 "},{"text":self.display,"color":"blue","clickEvent":{"action":"open_url","value":self.url},"hoverEvent":{"action":"show_text","contents":"Click to follow the link"}},{"text":" ➥","color":"blue"}]).replace("'",'"')
        return f"""tellraw @a[tag={menu.menu_tag},scores={menu.page_score}] {compiled_text}"""

class Tag(BaseItem):
    def __init__(self, display: str, tag: str) -> None:
        self.display = display
        self.tag = tag
    
    def compile(self, menu: Menu) -> str:
        compiled_text_add = str(["",{"text":f" \u0020 {self.display}: ","color":"gray","clickEvent":{"action":"run_command","value":f"/tag @s add {self.tag}"},"hoverEvent":{"action":"show_text","contents":"Click to add the tag"}},{"text":"✗","color":"red","clickEvent":{"action":"run_command","value":f"/tag @s add {self.tag}"},"hoverEvent":{"action":"show_text","contents":"Click to add the tag"}}]).replace("'",'"')
        compiled_text_remove = str(["",{"text":f" \u0020 {self.display}: ","color":"gray","clickEvent":{"action":"run_command","value":f"/tag @s remove {self.tag}"},"hoverEvent":{"action":"show_text","contents":"Click to remove the tag"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":f"/tag @s remove {self.tag}"},"hoverEvent":{"action":"show_text","contents":"Click to remove the tag"}}]).replace("'",'"')
        return "\n".join((
            f"""tellraw @a[tag={menu.menu_tag},scores={menu.page_score},tag=!{self.tag}] {compiled_text_add}""",
            f"""tellraw @a[tag={menu.menu_tag},scores={menu.page_score},tag={self.tag}] {compiled_text_remove}""",
        ))

class Gamerule(BaseItem):
    def __init__(self, gamerule: str, type: bool | int | str) -> None:
        self.gamerule = gamerule
        self.type = type
    
    def compile(self, menu: Menu) -> str:
        compiled_lines = []
        compiled_lines.append(
            f"""execute store result score #gamerule glib run gamerule {self.gamerule}"""
        )
        if self.type == bool or self.type == "bool":
            msg_enable = str(["",{"text":f" \u0020 {self.gamerule}: ","color":"gray","clickEvent":{"action":"run_command","value":f"/gamerule {self.gamerule} true"},"hoverEvent":{"action":"show_text","contents":"Click to enable the gamerule"}},{"text":"✗","color":"red","clickEvent":{"action":"run_command","value":f"/gamerule {self.gamerule} true"},"hoverEvent":{"action":"show_text","contents":"Click to enable the gamerule"}}]).replace("'",'"')
            msg_disable = str(["",{"text":f" \u0020 {self.gamerule}: ","color":"gray","clickEvent":{"action":"run_command","value":f"/gamerule {self.gamerule} false"},"hoverEvent":{"action":"show_text","contents":"Click to disable the gamerule"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":f"/gamerule {self.gamerule} false"},"hoverEvent":{"action":"show_text","contents":"Click to disable the gamerule"}}]).replace("'",'"')
            compiled_lines.append(
                f"""execute if score #gamerule glib matches 0 run tellraw @a[tag={menu.menu_tag},scores={menu.page_score}] {msg_enable}"""
            )
            compiled_lines.append(
                f"""execute if score #gamerule glib matches 1 run tellraw @a[tag={menu.menu_tag},scores={menu.page_score}] {msg_disable}"""
            )
        
        elif self.type == int or self.type == "integer":
            msg = str(["",{"text":f" \u0020 {self.gamerule}: ","color":"gray","clickEvent":{"action":"suggest_command","value":f"/gamerule {self.gamerule}"},"hoverEvent":{"action":"show_text","contents":"Click to change the gamerule value"}},{"score":{"name":"#gamerule","objective":"glib"},"color":"yellow","clickEvent":{"action":"suggest_command","value":f"/gamerule {self.gamerule}"},"hoverEvent":{"action":"show_text","contents":"Click to change the gamerule value"}}]).replace("'",'"')
            compiled_lines.append(
                f"""tellraw @a[tag={menu.menu_tag},scores={menu.page_score}] {msg}"""
            )
        
        return "\n".join(compiled_lines)

BLANK_LINE = Text(" ")