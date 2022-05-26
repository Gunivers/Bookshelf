#-------------------------------------------#
# Get block list from pixigeko's block list #
#-------------------------------------------#

import os
import re
from src.block import *
from src.item import Item
import re
import json

"""
   ____      _     ___ _                   _     _     _   
  / ___| ___| |_  |_ _| |_ ___ _ __ ___   | |   (_)___| |_ 
 | |  _ / _ \ __|  | || __/ _ \ '_ ` _ \  | |   | / __| __|
 | |_| |  __/ |_   | || ||  __/ | | | | | | |___| \__ \ |_ 
  \____|\___|\__| |___|\__\___|_| |_| |_| |_____|_|___/\__|
                                                           
"""

def getItemList(file):
    """
    Get all items from a txt file
    """
    with open(file,"r") as f:
        itemList = []
        cpt = 0
        for line in f:
            itemName = line[0:-1].replace("minecraft:","")
            itemList.append(Item(cpt,itemName))
            cpt += 1
    return itemList

"""
   ____      _     ____  _            _      _     _     _   
  / ___| ___| |_  | __ )| | ___   ___| | __ | |   (_)___| |_ 
 | |  _ / _ \ __| |  _ \| |/ _ \ / __| |/ / | |   | / __| __|
 | |_| |  __/ |_  | |_) | | (_) | (__|   <  | |___| \__ \ |_ 
  \____|\___|\__| |____/|_|\___/ \___|_|\_\ |_____|_|___/\__|
                                                             
"""

def getBlockList(file):
    """
    Get all blocks and there blockstate from a json file
    """
    data = json.load(open(file))

    blockList = []

    for block_name, block_properties in data.items():
        newBlock = Block(None, block_name.replace("minecraft:",""), blockStates=None, firstBlockID=None, lastBlockID=None)
        blockList.append(newBlock)

        blockStateList = []
        defaultID = None
        minID = None
        maxID = None
        for state in block_properties["states"]:
            propertyList = []

            if "properties" in state:
                for key, value in state["properties"].items():
                    propertyList.append(Property(key, value))

            ID = state["id"]

            blockStateList.append(BlockState(newBlock, ID, propertyList))
            
            if "default" in state:
                if state["default"] == True:
                    defaultID = ID

            if minID is None or ID < minID: minID = ID
            if maxID is None or ID > maxID: maxID = ID

        newBlock.id = defaultID
        # newBlock.defaultID = defaultID
        newBlock.blockStates = blockStateList
        newBlock.firstBlockID = minID
        newBlock.lastBlockID = maxID
        
    return blockList

"""
     _                       _       _       
    / \   ___ ___  ___   ___(_) __ _| |_ ___ 
   / _ \ / __/ __|/ _ \ / __| |/ _` | __/ _ \
  / ___ \\__ \__ \ (_) | (__| | (_| | ||  __/
 /_/   \_\___/___/\___/ \___|_|\__,_|\__\___|
     
"""

def associate():
    """
    Associate blocks and items using respective IDs
    """

    for _, item in Item.all.items():
        try:
            block = Block.all[item.neutralName()]
            block.itemID = item.id
            item.blockID = block.id
        except: pass

    for _, block in Block.all.items():
        try:
            item = Item.all[block.neutralName()]
            if item.blockID is None: item.blockID = block.id
            if block.itemID is None: block.itemID = item.id
        except: pass