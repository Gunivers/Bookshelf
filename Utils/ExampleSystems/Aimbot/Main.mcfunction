# NAME: Aimbot Main
# PATH: Gunivers-Lib:Utils/ExampleSystems/Aimbot/Main

# AUTHOR: KubbyDev
# CONTRIBUTORS:
# -

# VERSION: 1.0
# MINECRAFT: 1.12.2

# REQUIEREMENTS:
# - ID (import)
# - Vectors (import)
# - Orientation (import)
# - Math (import)
# - Temporary (import)
# - Location (import)
# - ExampleSystems/Aimbot/UpdateTargetLoc (function)

# INPUT:
# - TargetID

# OUTPUT:
# -

# NOTE:
# -

# CONFIGURATION:
# - Read the "How to use it" file

# CODE:

#Update the target and the source's locations
function Gunivers-Lib:Entity/Location/Get
function Gunivers-Lib:ExampleSystems/Aimbot/UpdateTargetLoc

#Calculates the vector from the source to the target
function Gunivers-Lib:Entity/Vectors/GetByTarget

#Calculates the orientation corresponding to this vector
function Gunivers-Lib:Entity/Orientation/GetPhiByVector
function Gunivers-Lib:Entity/Orientation/GetThetaByVector

#Updates the source's orientation
function Gunivers-Lib:Entity/Orientation/Set
