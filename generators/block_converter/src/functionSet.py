# ---------------#
# Generate tree #
# ---------------#

import os
import math
import src.item as item
from src.block import *
from src.item import *

"""
  ____       _     ____  _            _    
 / ___|  ___| |_  | __ )| | ___   ___| | __
 \___ \ / _ \ __| |  _ \| |/ _ \ / __| |/ /
  ___) |  __/ |_  | |_) | | (_) | (__|   < 
 |____/ \___|\__| |____/|_|\___/ \___|_|\_\
                                           
"""

def generate_SetBlock(path, function, branch=3, objectList = None, verbose=False, depth=0):
    """Generate a search tree to minimize numbers of commands used to set a block from an ID"""

    if objectList is None: objectList = Block.get_all_variations()

    # Create folders
    if not os.path.exists(f"{path}/set/leaves/"): os.makedirs(f"{path}/set/leaves/")
    if not os.path.exists(f"{path}/set/nodes/"):  os.makedirs(f"{path}/set/nodes/")

    # Creating new branches if their is lot of leaves (= number of objects in the list)
    if len(objectList) > 2 * branch:

        # Opening MCfunction's file
        if depth == 0:
            mcfunction = open(f"{path}/set.mcfunction", "w+")
            mcfunction.write(f"scoreboard objectives add glib.blockId dummy\n")
            mcfunction.write(f"scoreboard players set @s glib.blockId 0\n")
        else:          mcfunction = open(f"{path}/set/nodes/{objectList[0].id}-{objectList[-1].id}.mcfunction", "w+")
        
        # Getting the number of subgroups
        subGroupSize = math.floor(len(objectList) / branch)  

        # Splitting the block list in several subgroups
        group = []
        for i in range(branch):  
            if i != branch - 1: group.append(objectList[i * subGroupSize: (i + 1) * subGroupSize]) # Each group has equal size to others (new size = 1/branch * old size)
            else:               group.append(objectList[i * subGroupSize:])                        # The last group can have more items than others (rest of the Euclidean division > len(objectList)/branch

            generate_SetBlock(path, function, branch, group[i], verbose, depth+1)  # Call the same function with a subgroup as new objectList

            # The next generate call will be create nodes or leaves ?
            if len(group[0]) > 2 * branch: leavesOrNodes = "nodes"
            else:                          leavesOrNodes = "leaves"

            mcfunction.write(f"execute if score @s glib.blockId matches {group[i][0].id}..{group[i][-1].id} run function glib.block:set/{leavesOrNodes}/{group[i][0].id}-{group[i][-1].id}\n")

        
    # If the objectList is too small to create new nodes
    else:  
        # For each block in the list, create a command that set the block if the score correspond to the block ID
        mcfunction = open(f"{path}/set/leaves/{objectList[0].id}-{objectList[-1].id}.mcfunction", "w+")
        for blockState in objectList:
            mcfunction.write(   f"execute if score @s glib.blockId matches {blockState.id} run setblock ~ ~ ~ {blockState.toString()}\n")

    mcfunction.close()

"""
  ____       _     ___ _                 
 / ___|  ___| |_  |_ _| |_ ___ _ __ ___  
 \___ \ / _ \ __|  | || __/ _ \ '_ ` _ \ 
  ___) |  __/ |_   | || ||  __/ | | | | |
 |____/ \___|\__| |___|\__\___|_| |_| |_|
                                         
"""

def generate_SetItem(path, function, branch=3, objectList = None, verbose=False, depth=0):
    """Generate a search tree to minimize numbers of commands used to set a block from an ID"""

    if objectList is None: objectList = list(Item.all.values())

    # Create folders
    if not os.path.exists(f"{path}/set/leaves/"): os.makedirs(f"{path}/set/leaves/")
    if not os.path.exists(f"{path}/set/nodes/"):  os.makedirs(f"{path}/set/nodes/")

    # Creating new branches if their is lot of leaves (= number of objects in the list)
    if len(objectList) > 2 * branch:

        # Opening MCfunction's file
        if depth == 0:
            mcfunction = open(f"{path}/set.mcfunction", "w+")
            mcfunction.write(f"scoreboard objectives add glib.itemId dummy\n")
            mcfunction.write(f"scoreboard players set @s glib.itemId 0\n")
        else:          mcfunction = open(f"{path}/set/nodes/{objectList[0].id}-{objectList[-1].id}.mcfunction", "w+")
        
        # Getting the number of subgroups
        subGroupSize = math.floor(len(objectList) / branch)  

        # Splitting the block list in several subgroups
        group = []
        for i in range(branch):  
            if i != branch - 1: group.append(objectList[i * subGroupSize: (i + 1) * subGroupSize]) # Each group has equal size to others (new size = 1/branch * old size)
            else:               group.append(objectList[i * subGroupSize:])                        # The last group can have more items than others (rest of the Euclidean division > len(objectList)/branch

            generate_SetItem(path, function, branch, group[i], verbose, depth+1)  # Call the same function with a subgroup as new objectList

            # The next generate call will be create nodes or leaves ?
            if len(group[0]) > 2 * branch: leavesOrNodes = "nodes"
            else:                          leavesOrNodes = "leaves"

            mcfunction.write(f"execute if score @s glib.itemId matches {group[i][0].id}..{group[i][-1].id} run function glib.item:set/{leavesOrNodes}/{group[i][0].id}-{group[i][-1].id}\n")

        
    # If the objectList is too small to create new nodes
    else:  
        # For each item in the list, create a command that summon the item if the score correspond to the item ID
        mcfunction = open(f"{path}/set/leaves/{objectList[0].id}-{objectList[-1].id}.mcfunction", "w+")
        for item in objectList:
            mcfunction.write('execute if score @s glib.itemId matches ' + str(item.id) + ' run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:' + item.name + '","Count":1b}}\n')
        mcfunction.write("scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id\n")

    mcfunction.close()


"""
  ____  _            _       __      ___ _                 
 | __ )| | ___   ___| | __   \ \    |_ _| |_ ___ _ __ ___  
 |  _ \| |/ _ \ / __| |/ /    \ \    | || __/ _ \ '_ ` _ \ 
 | |_) | | (_) | (__|   <     / /    | || ||  __/ | | | | |
 |____/|_|\___/ \___|_|\_\   /_/    |___|\__\___|_| |_| |_|
                                                           
"""

def generate_BlockToItem(path, function, branch=3, objectList = None, verbose=False, depth=0):
    """Generate a search tree to minimize numbers of commands used to set a block from an ID"""

    if objectList is None:
        objectList = []
        for blockState in Block.get_all_variations():
            if blockState.block.itemID is not None: objectList.append(blockState)

    # Create folders
    if not os.path.exists(f"{path}/convert_to_item/leaves/"): os.makedirs(f"{path}/convert_to_item/leaves/")
    if not os.path.exists(f"{path}/convert_to_item/nodes/"):  os.makedirs(f"{path}/convert_to_item/nodes/")

    # Creating new branches if their is lot of leaves (= number of objects in the list)
    if len(objectList) > 2 * branch:

        # Opening MCfunction's file
        if depth == 0:
            mcfunction = open(f"{path}/convert_to_item.mcfunction", "w+")
            mcfunction.write(f"scoreboard objectives add glib.blockId dummy\n")
            mcfunction.write(f"scoreboard objectives add glib.itemId dummy\n")
            mcfunction.write(f"scoreboard players set @s glib.blockId 0\n")
            mcfunction.write(f"scoreboard players set @s glib.itemId 0\n")
        else:          mcfunction = open(f"{path}/convert_to_item/nodes/{objectList[0].id}-{objectList[-1].id}.mcfunction", "w+")
        
        # Getting the number of subgroups
        subGroupSize = math.floor(len(objectList) / branch)  

        # Splitting the block list in several subgroups
        group = []
        for i in range(branch):  
            if i != branch - 1: group.append(objectList[i * subGroupSize: (i + 1) * subGroupSize]) # Each group has equal size to others (new size = 1/branch * old size)
            else:               group.append(objectList[i * subGroupSize:])                        # The last group can have more items than others (rest of the Euclidean division > len(objectList)/branch

            generate_BlockToItem(path, function, branch, group[i], verbose, depth+1)  # Call the same function with a subgroup as new objectList

            # The next generate call will be create nodes or leaves ?
            if len(group[0]) > 2 * branch: leavesOrNodes = "nodes"
            else:                          leavesOrNodes = "leaves"

            mcfunction.write(f"execute if score @s glib.blockId matches {group[i][0].id}..{group[i][-1].id} run function glib.block:convert_to_item/{leavesOrNodes}/{group[i][0].id}-{group[i][-1].id}\n")
        
    # If the objectList is too small to create new nodes
    else:  
        # For each item in the list, create a command that summon the item if the score correspond to the item ID
        mcfunction = open(f"{path}/convert_to_item/leaves/{objectList[0].id}-{objectList[-1].id}.mcfunction", "w+")
        for blockState in objectList:
            if blockState.block.itemID is not None: mcfunction.write(f"execute if score @s glib.blockId matches {blockState.id}..{blockState.id} run scoreboard players set @s glib.itemId {blockState.block.itemID}\n")

    mcfunction.close()

"""
  ___ _                    __      ____  _            _    
 |_ _| |_ ___ _ __ ___     \ \    | __ )| | ___   ___| | __
  | || __/ _ \ '_ ` _ \     \ \   |  _ \| |/ _ \ / __| |/ /
  | || ||  __/ | | | | |    / /   | |_) | | (_) | (__|   < 
 |___|\__\___|_| |_| |_|   /_/    |____/|_|\___/ \___|_|\_\
                                                           
"""

def generate_ItemToBlock(path, function, branch=3, objectList = None, verbose=False, depth=0):
    """Generate a search tree to minimize numbers of commands used to set a block from an ID"""

    if objectList is None:
        objectList = []
        for item in list(Item.all.values()):
            if item.blockID is not None: objectList.append(item)

    # Create folders
    if not os.path.exists(f"{path}/convert_to_block/leaves/"): os.makedirs(f"{path}/convert_to_block/leaves/")
    if not os.path.exists(f"{path}/convert_to_block/nodes/"):  os.makedirs(f"{path}/convert_to_block/nodes/")

    # Creating new branches if their is lot of leaves (= number of objects in the list)
    if len(objectList) > 2 * branch:

        # Opening MCfunction's file
        if depth == 0:
            mcfunction = open(f"{path}/convert_to_block.mcfunction", "w+")
            mcfunction.write(f"scoreboard objectives add glib.blockId dummy\n")
            mcfunction.write(f"scoreboard objectives add glib.itemId dummy\n")
            mcfunction.write(f"scoreboard players set @s glib.blockId 0\n")
            mcfunction.write(f"scoreboard players set @s glib.itemId 0\n")
        else:          mcfunction = open(f"{path}/convert_to_block/nodes/{objectList[0].id}-{objectList[-1].id}.mcfunction", "w+")
        
        # Getting the number of subgroups
        subGroupSize = math.floor(len(objectList) / branch)  

        # Splitting the block list in several subgroups
        group = []
        for i in range(branch):  
            if i != branch - 1: group.append(objectList[i * subGroupSize: (i + 1) * subGroupSize]) # Each group has equal size to others (new size = 1/branch * old size)
            else:               group.append(objectList[i * subGroupSize:])                        # The last group can have more items than others (rest of the Euclidean division > len(objectList)/branch

            generate_ItemToBlock(path, function, branch, group[i], verbose, depth+1)  # Call the same function with a subgroup as new objectList

            # The next generate call will be create nodes or leaves ?
            if len(group[0]) > 2 * branch: leavesOrNodes = "nodes"
            else:                          leavesOrNodes = "leaves"

            mcfunction.write(f"execute if score @s glib.itemId matches {group[i][0].id}..{group[i][-1].id} run function glib.item:convert_to_block/{leavesOrNodes}/{group[i][0].id}-{group[i][-1].id}\n")

        
    # If the objectList is too small to create new nodes
    else:  
        # For each item in the list, create a command that summon the item if the score correspond to the item ID
        mcfunction = open(f"{path}/convert_to_block/leaves/{objectList[0].id}-{objectList[-1].id}.mcfunction", "w+")
        for item in objectList:
            if item.blockID is not None: mcfunction.write(f"execute if score @s glib.itemId matches {item.id} run scoreboard players set @s glib.blockId {item.blockID}\n")
    mcfunction.close()

