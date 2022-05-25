class Property:
    def __init__(self, name, value):
        self.name = name    # ex: facing
        self.value = value  # ex: south

class BlockState:
    def __init__(self, id, properties):
        self.id = id                    # block variation
        self.properties = properties    # list of properties of this variation

class Block:
    all = {}
    def __init__(self, id, name, blockStates, itemID = None, defaultID = None, firstBlockID = None, lastBlockID = None):
        self.id = id
        self.name = name
        self.blockStates = blockStates
        self.itemID = itemID
        self.defaultID = defaultID
        self.firstBlockID = firstBlockID
        self.lastBlockID = lastBlockID
        Block.all.update({self.name: self})

    def neutralName(self):
        name = self.name
        
        name = name.replace("wall_","")
        name = name.replace("potted_","")
        if "azalea_bush" in name:
            name = name.replace("_bush","")        
        name = name.replace("redstone_wire","redstone")
        name = name.replace("pumpkin_stem","pumpkin")
        name = name.replace("melon_stem","melon")
        name = name.replace("carrots","carrot")
        name = name.replace("potatoes","potato")
        name = name.replace("sweet_berry_bush","sweet_berries")
        name = name.replace("tripwire","string")
        name = name.replace("beetroots","beetroot")
        return name

    def toString(self):
        # Creating command-ready string
        setBlock = self.name
        if self.blockStates != []:
            setBlock += "["

        # Concatenating all blockstates
        for j in range(len(self.blockStates)):
            setBlock += self.blockStates[j].key + "=" + self.blockStates[j].value + ","

        # Removing last comma & adding the final string to the list
        if setBlock[-1] == ",":
            setBlock = setBlock[0:-1]

        # print(setBlock + "]")
        if self.blockStates != []:
            setBlock += "]"
        return setBlock