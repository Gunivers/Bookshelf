# ---------------#
# Generate tree #
# ---------------#

import os
import math
import src.item as item


# Recursive function
def generate(blockList, path, function, branch=3, verbose=False, depth=0):
    """Generate a search tree to minimize numbers of commands used to set a block from an ID"""

    # User feedback
    if depth == 0:
        print("Generating " + function + "...")

    if function == "id_to_block":
        mcfunctionName = "set"
        scoreboard = "glib.blockId"
        folder = "block/"
    elif function == "id_to_item":
        mcfunctionName = "set"
        scoreboard = "glib.itemId"
        folder = "item/"
    elif function == "block_id_to_item_id":
        mcfunctionName = "convert_to_item"
        scoreboard = "glib.blockId"
        folder = "block/"
    elif function == "item_id_to_block_id":
        mcfunctionName = "convert_to_block"
        scoreboard = "glib.itemId"
        folder = "item/"

    # Create folders
    if not os.path.exists(path + mcfunctionName + "/leaves/"):
        os.makedirs(path + mcfunctionName + "/leaves/")
    if not os.path.exists(path + mcfunctionName + "/nodes/"):
        os.makedirs(path + mcfunctionName + "/nodes/")

    if len(blockList) > 2 * branch:  # Creating new branches if their is lot of leaves (= number of blocks in the list)

        if depth == 0:
            mcfunction = open(path + mcfunctionName + ".mcfunction", "w+")
        else:
            if function == "block_id_to_item_id":
                mcfunction = open(path + mcfunctionName + "/nodes/" + str(blockList[0].firstBlockID) + "-" + str(blockList[-1].lastBlockID) + ".mcfunction", "w+")
            else:  
                mcfunction = open(path + mcfunctionName + "/nodes/" + str(blockList[0].id) + "-" + str(blockList[-1].id) + ".mcfunction", "w+")

        subGroupSize = math.floor(len(blockList) / branch)  # Getting size of subgroups

        group = []
        for i in range(branch):  # Splitting the block list in several subgroups

            if i != branch - 1:
                group.append(blockList[i * subGroupSize: (i + 1) * subGroupSize])
                # Each group has equal size to others (new size = 1/branch * old size)
            else:
                group.append(blockList[i * subGroupSize:])
                # The last group can have more items than others (rest of the Euclidean division > len(blockList)/branch

            generate(group[i], path, function, branch, verbose, depth+1)  # Call the same function with a subgroup as new blockList

            # The next generate call will be create nodes or leaves ?
            if len(group[0]) > 2 * branch:
                leavesOrNodes = "nodes"
            else:
                leavesOrNodes = "leaves"

            # Generate mcfunction line that call the next group
            if function == "block_id_to_item_id":
                    mcfunction.write(
                    "execute if score @s " + scoreboard + " matches " \
                    + str(group[i][0].firstBlockID) + ".." + str(group[i][-1].lastBlockID) \
                    + " run function glib:" + folder + mcfunctionName + "/" + leavesOrNodes + "/" \
                    + str(group[i][0].firstBlockID) + "-" + str(group[i][-1].lastBlockID) + "\n"
                )
            else:
                mcfunction.write(
                    "execute if score @s " + scoreboard + " matches " \
                    + str(group[i][0].id) + ".." + str(group[i][-1].id) \
                    + " run function glib:" + folder + mcfunctionName + "/" + leavesOrNodes + "/" \
                    + str(group[i][0].id) + "-" + str(group[i][-1].id) + "\n"
                )

    else:  # If the blockList is too small to create new nodes

        # Place the mcfunction in the leaves folder
        if function == "block_id_to_item_id":
            mcfunction = open(path + mcfunctionName + "/leaves/" + str(blockList[0].firstBlockID) + "-" + str(blockList[-1].lastBlockID) + ".mcfunction", "w+")
        else:
            mcfunction = open(path + mcfunctionName + "/leaves/" + str(blockList[0].id) + "-" + str(blockList[-1].id) + ".mcfunction", "w+")

        # For each block in the list, create a command that set the block if the score correspond to the block ID
        for block in blockList:

            if function == "id_to_block":
                mcfunction.write(
                    "execute if score @s " + scoreboard + " matches " + str(block.id) \
                    + " run setblock ~ ~ ~ " + block.toString() + "\n"
                )
            elif function == "id_to_item":
                mcfunction.write(
                    "execute if score @s " + scoreboard + " matches " + str(block.id) \
                    + """ run summon item ~ ~ ~ {Item:{id:"minecraft:""" \
                    + block.name + """",Count:1b}}\n"""
                )
            elif function == "block_id_to_item_id":
                mcfunction.write(
                    "execute if score @s " + scoreboard + " matches " + str(block.firstBlockID) + ".." + str(block.lastBlockID) \
                    + " run scoreboard players set @s glib.itemId " + block.id + "\n"
                )
            elif function == "item_id_to_block_id":
                if type(block) is item.Item:
                    mcfunction.write(
                        "execute if score @s " + scoreboard + " matches " + str(block.id) \
                        + " run scoreboard players set @s glib.blockId " + block.blockID + "\n"
                    )
                else:
                    mcfunction.write(
                        "execute if score @s " + scoreboard + " matches " + str(block.id) \
                        + " run scoreboard players set @s glib.blockId " + block.defaultID + "\n"
                    )

        if function == "id_to_item":
            mcfunction.write("execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id\n")
