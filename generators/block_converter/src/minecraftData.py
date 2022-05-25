#-------------------------------------------#
# Get block list from pixigeko's block list #
#-------------------------------------------#

import os
import re
from src.block import Block
from src.item import Item
from src.blockState import BlockState
import re

def getList(file):
    with open(file,"r") as f:
        list = []
        for line in f:
            list.append(line[0:-1])
    return list

def getBlockList(blockPath, verbose=False):

    #__________________________________________________
    # Config

    # Regular expressions to get IDs from a JSON line
    reGetID = re.compile('\s*\"(?P<id>[0-9]*)\": {')
    reGetIDdefault = re.compile('\s*\"default\": (?P<id>[0-9]*)')

    # Regular expression to get BlockState key and value from a JSON line
    reGetBlockState = re.compile('\s*\"(?P<key>[a-z]*)\": (\"(?P<value1>[a-z].*)\"|(?P<value2>true)|(?P<value3>false)|(?P<value4>[0-9].*))(|,)')

    #__________________________________________________
    # Declaration

    blockList = [] # Structure : [[ID,block,blockStateList]]
    blockStateList = [] # Structure : [key, value]
    ID = None
    customID = 0

    #__________________________________________________
    # Algorithm

    print("Getting block list...")

    # --------------------------- #
    # Getting list of block files #
    # --------------------------- #

    blockFiles = os.listdir(blockPath)
    for i in blockFiles:
        blockFile  = open(blockPath + i)

        blockName = i[0:-5]

        if verbose:
            print("   " + i + " :")

        # ------------------------------- #
        # Reading block file line by line #
        # ------------------------------- #

        first_id = True
        blockStateList = []

        for j in blockFile:

            # ------------------------- #
            # If the line contain an ID #
            # ------------------------- #

            if reGetIDdefault.match(j) or reGetID.match(j):

                if not first_id:
                    # If this line contain an ID, so following lines correspond to BlockStates of a new variation of
                    # the block. So we have to save the previous block variation and get the new variation ID. If
                    # this is the first ID found in the file, so there is no previous block variation, so no need to
                    # save it
                    blockList.append(Block(ID, blockName, blockStateList))
                    blockStateList = []
                else:
                    first_id = False

                # If the block has blockstates (so it has variations)
                if reGetID.match(j):
                    ID = reGetID.sub('\g<id>', j)[0:-1] # The [0:-1] is here to exclude '\n' character

                # if the block has no blockstate
                if reGetIDdefault.match(j):
                    ID = reGetIDdefault.sub('\g<id>', j)[0:-1]

                if verbose:
                    print("      " + ID)

            # -------------------------------- #
            # If the line contain a BlockState #
            # -------------------------------- #

            if reGetBlockState.match(j) and reGetBlockState.sub('\g<key>', j)[0:-1] != "default":
                blockStateKey = reGetBlockState.sub('\g<key>', j)[0:-1]
                blockStateValue = reGetBlockState.sub('\g<value1>\g<value2>\g<value3>\g<value4>', j)[0:-1]
                if blockStateKey[-1] == ",":
                    blockStateKey = blockStateKey[0:-1]
                if blockStateValue[-1] == ",":
                    blockStateValue = blockStateValue[0:-1]

                if verbose:
                    print("         " + blockStateKey + " : "+ blockStateValue)

                # Generating a list of BlockStates
                blockStateList.append(BlockState(blockStateKey,blockStateValue))

            # ----------------------------------------- #

        # Save the last block variation when we reach the end of the file
        blockList.append(Block(ID, blockName, blockStateList))


        # Closing file
        blockFile.close()
    
    blockList.sort(key=lambda x: int(re.sub("[^0-9]", "", x.id)))

    listFile = open("lists/block_variations.txt","w+")
    for block in blockList:
        listFile.write(block.id + " - " + block.toString() + "\n")
    listFile.close()

    return blockList

def getDefaultID():
    file = open("defaultIDs.json", "r")
    reGetDefaultID = re.compile('\s*\"minecraft:(?P<key>[a-z,_]*)\": (?P<value>[0-9].*)')
    dict = {}
    list = open("lists/block_defaultsID.txt", "w+")
    for line in file:
        if reGetDefaultID.match(line):
            block = reGetDefaultID.sub('\g<key>', line)[0:-1]
            defaultID = reGetDefaultID.sub('\g<value>', line)[0:-1]
            if defaultID[-1] == ",":
                defaultID = defaultID[0:-1]
            dict.update({block:defaultID})
            list.write(block + ": " + defaultID + "\n")
            #print(block + " : " + defaultID)
    list.close()
    return dict



def dropBlockState(blockList, verbose=False):
    
    newBlockList = []
    alreadyChecked = []

    for block in blockList:

        if block.name not in alreadyChecked:
            alreadyChecked.append(block.name)

            blockOnly = Block(block.id, block.name, [], block.itemID)
            newBlockList.append(blockOnly)
    
    listFile = open("lists/block_only.txt","w+")
    for block in newBlockList:
        listFile.write(block.id + " - " + block.toString() + "\n")
        if verbose:
            print(str(block.id) + " - " + block.name)
    listFile.close()

    return newBlockList

def associateName(name, type):
    if type == "item":
        name = name.replace("_seeds","")
        name = name.replace("_beans","")
        name = name.replace("_bucket","")
    if type == "block":
        name = name.replace("redstone_wire","redstone")
        name = name.replace("pumpkin_stem","pumpkin")
        name = name.replace("melon_stem","melon")
        name = name.replace("carrots","carrot")
        name = name.replace("potatoes","potato")
        name = name.replace("sweet_berry_bush","sweet_berries")
        name = name.replace("tripwire","string")
        name = name.replace("beetroots","beetroot")
    return name

def associateVirtualName(name):
    if "wall_" in name:
        name = name.replace("wall_","")
    elif "potted_" in name:
        name = name.replace("potted_","")
        if "azalea_bush" in name:
            name = name.replace("_bush","")
    else:
        name = None
    return name

def associate(blockList, itemList, createVirtualItems = True):

    print("Associating blocks to items...")
    # defaultID = getDefaultID()
    
    # Associate blocks to their item
    for i in range(len(blockList)):
        for item in itemList:
            if associateName(blockList[i].name, "block") == associateName(item.name, "item"):
                blockList[i].itemID = item.id
        # for name, id in defaultID.items():
        #     if name == blockList[i].name:
        #         blockList[i].defaultID = id

    # Associate items to their block
    for i in range(len(itemList)):
        for block in blockList:
            if associateName(itemList[i].name, "item") == associateName(block.name, "block"):
                if itemList[i].blockID is None:
                    itemList[i].firstBlockID = block.id
                    itemList[i].lastBlockID = block.id
                    itemList[i].blockID = block.defaultID
                else:
                    if int(itemList[i].firstBlockID) > int(block.id):
                        itemList[i].firstBlockID = block.id
                    elif int(itemList[i].lastBlockID) < int(block.id):
                        itemList[i].lastBlockID = block.id

    # Associate "virtual" items to block variation (ex : oak_wall_sign instead of oak_sign)
    if createVirtualItems:
        virtualItems = []
        reducedBlockList = dropBlockState(blockList)
        for block in reducedBlockList:
            if associateVirtualName(block.name) is not None:
                block.name = associateVirtualName(block.name)
                item = Item(None, block.name, block.defaultID, block.id, block.id)
                for item2 in itemList:
                    if item.name == item2.name:
                        item.id = item2.id

                virtualItems.append(item)      

        listFile = open("lists/item_virtual.txt","w+")
        for item in virtualItems:
            listFile.write(item.id + " : " + item.name + " : " + item.firstBlockID + ".." + item.lastBlockID + "\n")
        listFile.close()


        listFile = open("lists/item_all.txt","w+")
        for item in itemList + virtualItems:
            if item.blockID is not None:
                listFile.write(item.id + " : " + item.name + " : " + item.blockID + ".." + item.lastBlockID + "\n")
        listFile.close()

    return [blockList, itemList, itemList + virtualItems]





def getItemList(itemListFile, verbose = False):

    print("Getting item list...")

    file = open(itemListFile)

    reGetItem = re.compile('\s*\"minecraft:(?P<id>[a-z,_]*)\"')

    itemList = []
    cpt = 0

    listFile = open("lists/item.txt","w+")

    for line in file:
        if reGetItem.match(line):

            name = reGetItem.sub('\g<id>', line)[0:-1]
            if name[-1] == ",":
                name = name[:-1]

            item = Item(str(cpt), name)
            itemList.append(item)
            listFile.write(item.id + " - " + item.name + "\n")
            cpt += 1

            if verbose:
                print(item)

    listFile.close()
    
    return itemList
    
