
class Item:
    def __init__(self, id, name, blockID = None, firstBlockID = None, lastBlockID = None):
        self.id = id
        self.name = name
        self.blockID = blockID
        self.firstBlockID = firstBlockID
        self.lastBlockID = lastBlockID

    def toString(self):
        return self.name