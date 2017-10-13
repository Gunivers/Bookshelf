# NAME: Imports Tests
# PATH: Gunivers-Lib:GuniversBook/Imports/Test
 
# AUTHOR: KubbyDev
 
# VERSION: 1.0
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# 
 
# INPUT: 
# 
 
# OUTPUT: 
# - Tags on 2 area_effect_cloud
 
# NOTE:  
# 

# CONFIGURATION:
 
# CODE:
kill @e[type=area_effect_cloud,tag=TestImport]

summon area_effect_cloud ~ ~ ~ {Duration:0,WaitTime:200,Tags:["ImportDone","TestImport"],CustomName:"§2  Ready !"}
summon area_effect_cloud ~ ~ ~ {Duration:0,WaitTime:200,Tags:["ImportToDo","TestImport"],CustomName:"§4Not Ready"}

function Gunivers-Lib:GuniversBook/Imports/Tests/Vectors
function Gunivers-Lib:GuniversBook/Imports/Tests/Orientation
function Gunivers-Lib:GuniversBook/Imports/Tests/Math
function Gunivers-Lib:GuniversBook/Imports/Tests/Temporary

function Gunivers-Lib:GuniversBook/Imports/Tests/VecOriMatTem



