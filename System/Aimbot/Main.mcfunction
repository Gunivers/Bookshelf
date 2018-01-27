# NAME: Aimbot Main
# PATH: Gunivers-Lib:System/Aimbot/Main

# AUTHOR: KubbyDev
# CONTRIBUTORS:
# -

# VERSION: 1.0
# MINECRAFT: 1.12.2

# REQUIEREMENTS:
# - ID (Import)
# - Vectors (Import)
# - Orientation (Import)
# - Math (Import)
# - Temporary (Import)
# - Location (Import)
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
function Gunivers-Lib:System/Aimbot/UpdateTargetLoc

#Calculates the vector from the source to the target
function Gunivers-Lib:Entity/Vectors/GetByTargetID
function Gunivers-Lib:Entity/Vectors/Advanced/Normalize

#Calculates the orientation corresponding to this vector
function Gunivers-Lib:Entity/Orientation/GetPhiByVector
function Gunivers-Lib:Entity/Orientation/GetThetaByVector

#Updates the source's orientation
function Gunivers-Lib:Entity/Orientation/Set
