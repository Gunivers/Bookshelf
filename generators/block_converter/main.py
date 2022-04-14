# __________________________________________________
# IMPORTS

import minecraftData
import functionGet
import functionSet
import os

# __________________________________________________
# CONFIG

minecraft_data = "./Minecraft-generated-data/"  # Download all data on https://github.com/PixiGeko/Minecraft-generated-data


# Path to your namespace (Default : "./Generated/")
path = "C:/Users/vince/AppData/Roaming/.minecraft/saves/Glib-Sandbox/datapacks/glib-core/data/"
# Example: "C:/Users/Leirof/AppData/Roaming/.minecraft/saves/Glib-Sandbox/datapacks/glib-core/data/"


# __________________________________________________
# CODE

if not os.path.exists("lists/"):
        os.makedirs("lists/")

blockListFolder = minecraft_data + "1.17/releases/1.17.1/lists/blocks/"
itemListFile = minecraft_data + "1.17/releases/1.17.1/lists/custom/all_items.json"

blockList = minecraftData.getBlockList(blockPath=blockListFolder, verbose=False)
itemList = minecraftData.getItemList(itemListFile, verbose=False)

[blockList, itemList, virtualItemList] = minecraftData.associate(blockList, itemList)

listFile = open("lists/associations.txt","w+")
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


# Block <-> blockId
functionSet.generate(blockList, path= path + "glib/functions/block/", function = "id_to_block", verbose=False)
functionGet.generate(blockList, functions_path= path + "glib/functions/block/", tags_path= path + "glib/predicates/block/", function = "block_to_id", verbose=False)

# Item <-> itemId
functionSet.generate(itemList, path= path + "glib/functions/item/", function = "id_to_item", verbose=False)
functionGet.generate(itemList, functions_path= path + "glib/functions/item/", tags_path= path + "glib/predicates/item/", function = "item_to_id", verbose=False)

virtualItemList = [x for x in virtualItemList if x.firstBlockID != None and x.lastBlockID != None]
virtualItemList.sort(key=lambda x: int(x.firstBlockID))

listFile = open("unassociatedBlockList.txt","w+")
checked = []
for block in blockList:
    if block.itemID == None and block.name not in checked:
        listFile.write(block.name + "\n")
        checked.append(block.name)
listFile.close()

functionSet.generate(virtualItemList, path= path + "glib/functions/block/", function = "block_id_to_item_id", verbose=False)


newItemList = [x for x in itemList if x.blockID != None]
newItemList.sort(key=lambda x: int(x.id))

functionSet.generate(newItemList, path= path + "glib/functions/item/", function = "item_id_to_block_id", verbose=False)