# ---------------#
# Generate tree #
# ---------------#

import os
import math
import src.item as item
from src.block import *
from src.item import *


# Recursive function
def generate(path, function, branch=3, objectList = None, verbose=False, depth=0):
    """Generate a search tree to minimize numbers of commands used to set a block from an ID"""

    # User feedback
    if depth == 0:
        print("Generating " + function + "...")

    if function == "id_to_block":
        objectList = list(Block.all.values())
        mcfunctionName = "set"
        scoreboard = "glib.blockId"
        module = "glib.block"
    elif function == "id_to_item":
        objectList = list(Item.all.values())
        mcfunctionName = "set"
        scoreboard = "glib.itemId"
        module = "glib.item"
    elif function == "block_id_to_item_id":
        objectList = list(Block.all.values())
        mcfunctionName = "convert_to_item"
        scoreboard = "glib.blockId"
        module = "glib.block"
    elif function == "item_id_to_block_id":
        objectList = list(Item.all.values())
        mcfunctionName = "convert_to_block"
        scoreboard = "glib.itemId"
        module = "glib.item"

    # Create folders
    if not os.path.exists(path + mcfunctionName + "/leaves/"):
        os.makedirs(path + mcfunctionName + "/leaves/")
    if not os.path.exists(path + mcfunctionName + "/nodes/"):
        os.makedirs(path + mcfunctionName + "/nodes/")

    if len(objectList) > 2 * branch:  # Creating new branches if their is lot of leaves (= number of blocks in the list)

        if depth == 0:
            mcfunction = open(path + mcfunctionName + ".mcfunction", "w+")
        else:
            if function == "block_id_to_item_id":
                mcfunction = open(path + mcfunctionName + "/nodes/" + str(objectList[0].firstBlockID) + "-" + str(objectList[-1].lastBlockID) + ".mcfunction", "w+")
            else:  
                mcfunction = open(path + mcfunctionName + "/nodes/" + str(objectList[0].id) + "-" + str(objectList[-1].id) + ".mcfunction", "w+")

        subGroupSize = math.floor(len(objectList) / branch)  # Getting size of subgroups

        group = []
        for i in range(branch):  # Splitting the block list in several subgroups

            if i != branch - 1:
                group.append(objectList[i * subGroupSize: (i + 1) * subGroupSize])
                # Each group has equal size to others (new size = 1/branch * old size)
            else:
                group.append(objectList[i * subGroupSize:])
                # The last group can have more items than others (rest of the Euclidean division > len(objectList)/branch

            generate(path, function, branch, group[i], verbose, depth+1)  # Call the same function with a subgroup as new objectList

            # The next generate call will be create nodes or leaves ?
            if len(group[0]) > 2 * branch:
                leavesOrNodes = "nodes"
            else:
                leavesOrNodes = "leaves"

            # Generate mcfunction line that call the next group
            if function == "block_id_to_item_id":
                mcfunction.write(f"execute if score @s {scoreboard} matches {group[i][0].firstBlockID}..{group[i][-1].lastBlockID} run function {module}:{mcfunctionName}/{leavesOrNodes}/{group[i][0].firstBlockID}-{group[i][-1].lastBlockID}\n")
            else:
                mcfunction.write(f"execute if score @s {scoreboard} matches {group[i][0].id}..{group[i][-1].id} run function {module}:{mcfunctionName}/{leavesOrNodes}/{group[i][0].id}-{group[i][-1].id}\n")

    else:  # If the objectList is too small to create new nodes

        # Place the mcfunction in the leaves folder
        if function == "block_id_to_item_id":
            mcfunction = open(f"{path}/{mcfunctionName}/leaves/{objectList[0].firstBlockID}-{objectList[-1].lastBlockID}.mcfunction", "w+")
        else:
            mcfunction = open(f"{path}/{mcfunctionName}/leaves/{objectList[0].id}-{objectList[-1].id}.mcfunction", "w+")

        # For each block in the list, create a command that set the block if the score correspond to the block ID
        if function == "id_to_block":
            for block in objectList:
                for blockState in block.blockStates:
                    mcfunction.write(   f"execute if score @s {scoreboard} matches {blockState.id} run setblock ~ ~ ~ {blockState.toString()}\n")
        elif function == "id_to_item":
            for item in objectList:
                mcfunction.write(       f'execute if score @s {scoreboard} matches {item .id} run summon item ~ ~ ~ {{"Item":{"id":"minecraft":item.name,"Count":"1b"}}}\n')
        elif function == "block_id_to_item_id":
            for block in objectList:
                for blockState in block.blockStates:
                    mcfunction.write(   f"execute if score @s {scoreboard} matches {blockState.block.firstBlockID}..{blockState.block.lastBlockID} run scoreboard players set @s glib.itemId {blockState.id}\n")
        elif function == "item_id_to_block_id":
            for item in objectList:
                mcfunction.write(       f"execute if score @s {scoreboard} matches {item.id} run scoreboard players set @s glib.blockId {item.blockID}\n")

        if function == "id_to_item":
            mcfunction.write("execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id\n")
