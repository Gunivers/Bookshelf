
class Item:
    all = {}
    def __init__(self, id, name, firstBlockID = None, lastBlockID = None):
        self.id = id
        self.name = name
        self.blockID = blockID
        self.firstBlockID = firstBlockID
        self.lastBlockID = lastBlockID
        Item.all.update({self.name: self})

    def neutralName(self):
        name = self.name
        name = name.replace("_seeds","")
        name = name.replace("_beans","")
        name = name.replace("_bucket","")
        return name

    def toString(self):
        return self.name