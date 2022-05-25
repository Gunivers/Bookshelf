#----------------------------#
# Generation of get function #
#----------------------------#

import math
import os
import src.predicateFormat as predicateFormat
from src.block import *
from src.item import *
import json

def generate(path, tags_path, function, verbose=False):

    print("Generating " + function + "...")

    if function == "block_to_id":
        ObjectList = list(Block.all.values())
        module = "glib.block"
        scoreboard = "glib.blockId"
    
    elif function == "item_to_id":
        ObjectList = list(Item.all.values())
        module = "glib.item"
        scoreboard = "glib.itemId"

    N = len(ObjectList)
    n = math.ceil(math.log(N/2,2))

    # Create folders
    if not os.path.exists(f"{tags_path}/get"): os.makedirs(f"{tags_path}/get")
    if not os.path.exists(f"{path}/get"): os.makedirs(f"{path}/get")        

    # Create function's file & writing header
    functionGet = open(f"{path}/get.mcfunction", "w+")
    functionGet.write(f"scoreboard objectives add {scoreboard} dummy\n")
    functionGet.write(f"scoreboard players set @s {scoreboard} 0\n")

    # Making groups
    for i in range(n+1):

        # Creating get function that check all groups and give a score (using dichotomie) if the block is not in the group
        functionGet.write(f"execute unless predicate {module}:get/group_{i} run scoreboard players add @s {scoreboard} {2**i}\n")

        # Creating sub-sets
        newObjectList = []
        for object in ObjectList:
            # Composing sub-sets "i" with object that match: ID / (2^i) % 2 = 0
            if math.floor(int(object.id)/(2**(i)))%2 == 0:
                newObjectList.append(object)

        # Generating all conditions for blocks
        if function == "block_to_id":
            conditionList = []
            for block in newObjectList:
                for blockState in block.blockStates:
                    conditionList.append({"condition":"minecraft:location_check","predicate":{"block":{
                                            "blocks":[f"minecraft:{object.name}"],
                                            "state": blockState.properties_to_dict()
                                        }}})

        # Generating all condition for items
        if function == "item_to_id":
            conditionList = []
            for item in newObjectList:
                conditionList.append({"condition":"minecraft:entity_properties","entity":"this","predicate":{"type":"minecraft:item","nbt":{"Item":{"id":f"minecraft:{item.name}"}}}})

        # Completting the predicate
        content = [{"condition":"minecraft:alternative","terms":conditionList}]

        # Saving it
        with open(f"{tags_path}/get/group_{i}.json","w+") as f:
            f.write(json.dumps(content))

    # Closing files
    functionGet.close()
