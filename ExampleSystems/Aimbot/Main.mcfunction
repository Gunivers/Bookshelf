# NAME: Aimbot Main
# PATH: Gunivers-Lib:ExampleSystems/Aimbot/Main
 
# AUTHOR: KubbyDev
 
# VERSION: 1.0
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# - 
 
# INPUT: 
# -
 
# OUTPUT: 
# - 
 
# NOTE:  
# -

# CONFIGURATION:
# -

# CODE:

#Update the target and the source's locations
function Gunivers-Lib:Entity/Location/Get
function Gunivers-Lib:ExampleSystems/Aimbot/UpdateTargetLoc

#Calculates the vector from the source to the target
function Gunivers-Lib:Entity/Vectors/ByTarget

#Calculates the orientation corresponding to this vector
function Gunivers-Lib:Entity/Orientation/GetPhiByVector
function Gunivers-Lib:Entity/Orientation/GetThetaByVector

#Updates the source's orientation
function Gunivers-Lib:Entity/Orientation/Set
