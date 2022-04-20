class Block:
    def __init__(self, id, name, blockStates, itemID = None, defaultID = None):
        self.id = id
        self.name = name
        self.blockStates = blockStates
        self.itemID = itemID
        self.defaultID = defaultID

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