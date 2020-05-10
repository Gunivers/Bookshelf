Types of IDs:

SUID: Simple Unique ID (just a simple value incremented for each entity. No hole management)
RID: Random ID (random, but can be same as an existing entity's ID)
RUID: Random Unique ID (random, but can't be same as an existing entity's ID. If ther is no RUID available, the ID of the entity will be 0)
CUID: Chain Unique ID (hole management, variable IDs)