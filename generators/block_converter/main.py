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



blockList = minecraftData.getBlockList(blockPath=blockListFolder, verbose=False)
itemList = minecraftData.getItemList(itemListFile, verbose=False)

[blockList, itemList, virtualItemList] = minecraftData.associate(blockList, itemList)

listFile = open(f"{current_path}/lists/associations.txt","w+")
for item in itemList:
    if item.blockID is not None:
        listFile.write(item.id + ": " + item.name + " - Default Block: " + item.blockID + " - Block Range: " + item.firstBlockID + ".." + item.lastBlockID + "\n")
        for block in blockList:
            if block.itemID == item.id:
                if block.defaultID is not None:
                    listFile.write(" | " + block.id + ": " + block.toString() + " - Default ID: " + block.defaultID + "\n")
                else: 
                    listFile.write(" | " + block.id + ": " + block.toString() + " - Default ID: " + "None" + "\n")
    else:
        listFile.write(item.id + ": " + item.name + " - No block associated\n")

listFile.write("\n\n\n")

for block in blockList:
    if block.itemID is None:
        if block.defaultID is not None:
            listFile.write("/!\\" + block.id + ": " + block.toString() + " - Default ID: " + block.defaultID + "\n")
        else: 
            listFile.write("/!\\" + block.id + ": " + block.toString() + " - Default ID: " + "None" + "\n")
listFile.close()

"""
   ____                           _   _             
  / ___| ___ _ __   ___ _ __ __ _| |_(_) ___  _ __  
 | |  _ / _ \ '_ \ / _ \ '__/ _` | __| |/ _ \| '_ \ 
 | |_| |  __/ | | |  __/ | | (_| | |_| | (_) | | | |
  \____|\___|_| |_|\___|_|  \__,_|\__|_|\___/|_| |_|
                                                    
"""

# Block <-> blockId
functionSet.generate(blockList, path= path + "/glib.block/functions/", function = "id_to_block", verbose=False)
functionGet.generate(blockList, functions_path= path + "/glib.block/functions/", tags_path= path + "/glib.block/predicates/", function = "block_to_id", verbose=False)

# Item <-> itemId
functionSet.generate(itemList, path= path + "/glib.item/functions/", function = "id_to_item", verbose=False)
functionGet.generate(itemList, functions_path= path + "/glib.item/functions/", tags_path= path + "/glib.item/predicates/", function = "item_to_id", verbose=False)

virtualItemList = [x for x in virtualItemList if x.firstBlockID != None and x.lastBlockID != None]
virtualItemList.sort(key=lambda x: int(x.firstBlockID))

listFile = open(f"{current_path}/unassociatedBlockList.txt","w+")
checked = []
for block in blockList:
    if block.itemID == None and block.name not in checked:
        listFile.write(block.name + "\n")
        checked.append(block.name)
listFile.close()

functionSet.generate(virtualItemList, path= path + "/glib.block/functions/", function = "block_id_to_item_id", verbose=False)

newItemList = [x for x in itemList if x.blockID != None]
newItemList.sort(key=lambda x: int(x.id))

functionSet.generate(newItemList, path= path + "/glib.item/functions/", function = "item_id_to_block_id", verbose=False)