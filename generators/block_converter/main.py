# __________________________________________________
# IMPORTS

import src.minecraftData as minecraftData
import src.functionGet as functionGet
import src.functionSet as functionSet
import os
import sys
import yaml
import pathlib

"""
  ___       _ _   _       _ _          _   _             
 |_ _|_ __ (_) |_(_) __ _| (_)______ _| |_(_) ___  _ __  
  | || '_ \| | __| |/ _` | | |_  / _` | __| |/ _ \| '_ \ 
  | || | | | | |_| | (_| | | |/ / (_| | |_| | (_) | | | |
 |___|_| |_|_|\__|_|\__,_|_|_/___\__,_|\__|_|\___/|_| |_|         

"""

current_path    = os.path.split(os.path.realpath(__file__))[0].replace("\\","/")
path            = os.path.split(os.path.split(current_path)[0])[0].replace("\\","/")

config          = yaml.safe_load(open(f"{current_path}/config.yml"))
parent          = config["parent"]
version_type    = config["version_type"]
version         = config["version"]

version_path    = f"{current_path}/Minecraft-generated-data/{parent}/{version_type}/{version}"
blockListFolder = f"{version_path}/data/blocks/"
blockListFile   = f"{version_path}/generated/blocks.json"
itemListFile    = f"{version_path}/data/registries/item.txt"

if not os.path.exists(f"{current_path}/lists/"): os.makedirs(f"{current_path}/lists/")

"""
   ____ _ _     ____                   
  / ___(_) |_  / ___| _   _ _ __   ___ 
 | |  _| | __| \___ \| | | | '_ \ / __|
 | |_| | | |_   ___) | |_| | | | | (__ 
  \____|_|\__| |____/ \__, |_| |_|\___|
                      |___/                  
"""

if os.path.isdir(f"{current_path}/Minecraft-generated-data/.git/"):
    print("⌛ Pulling Minecraft Data from PixiGeko's repo...")
    os.system(f"cd {current_path}/Minecraft-generated-data/ && git pull && cd ../")
else:
    print(f"⌛ Cloning Minecraft Data from PixiGeko's repo in {current_path}/Minecraft-generated-data/...")
    os.system(f"cd {current_path} && git clone https://github.com/PixiGeko/Minecraft-generated-data.git")

"""
   ____      _   _   _               _     _     _       
  / ___| ___| |_| |_(_)_ __   __ _  | |   (_)___| |_ ___ 
 | |  _ / _ \ __| __| | '_ \ / _` | | |   | / __| __/ __|
 | |_| |  __/ |_| |_| | | | | (_| | | |___| \__ \ |_\__ \
  \____|\___|\__|\__|_|_| |_|\__, | |_____|_|___/\__|___/
                             |___/                       
"""

print("🔎 Discovering blocks...")
itemList = minecraftData.getBlockList(blockListFile, verbose=False)
print("🔎 Discovering items...")
blockList = minecraftData.getItemList(itemListFile, verbose=False)

minecraftData.associate()

"""
   ____                           _   _             
  / ___| ___ _ __   ___ _ __ __ _| |_(_) ___  _ __  
 | |  _ / _ \ '_ \ / _ \ '__/ _` | __| |/ _ \| '_ \ 
 | |_| |  __/ | | |  __/ | | (_| | |_| | (_) | | | |
  \____|\___|_| |_|\___|_|  \__,_|\__|_|\___/|_| |_|
                                                    
"""

# Block <-> score
functionSet.generate(path = f"{path}/glib.block/functions/",                                              function = "id_to_block",         verbose=False)
functionGet.generate(path = f"{path}/glib.block/functions/", tags_path= f"{path}/glib.block/predicates/", function = "block_to_id",         verbose=False)

# Item <-> score
functionSet.generate(path = f"{path}/glib.item/functions/",                                               function = "id_to_item",          verbose=False)
functionGet.generate(path = f"{path}/glib.item/functions/",  tags_path= f"{path}/glib.item/predicates/",  function = "item_to_id",          verbose=False)

# Convertion block's score <-> item's score
functionSet.generate(path= f"{path}/glib.block/functions/",                                               function = "block_id_to_item_id", verbose=False)
functionSet.generate(path= f"{path}/glib.item/functions/",                                                function = "item_id_to_block_id", verbose=False)