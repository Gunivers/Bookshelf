def getBlock():
    return  """{{"condition":"minecraft:location_check","predicate":{{"block":{{"blocks":["minecraft:{BlockName}"],"state": {{{BlockStates}}}}}}}}}"""

def getItem():
    return """{{"condition":"minecraft:alternative","terms":[{{"condition":"minecraft:entity_properties","entity":"this","predicate":{{"type":"minecraft:item","nbt":"{{Item:{{id:\\\"minecraft:{BlockName}\\\"}}}}"}}}}]}}"""