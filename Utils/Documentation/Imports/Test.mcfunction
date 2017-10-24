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
# - Tags on 2 armor_stand
 
# NOTE:  
# 

# CONFIGURATION:
 
# CODE:
kill @e[type=armor_stand,tag=TestImport]

summon armor_stand ~ ~ ~ {Tags:["ImportDone","TestImport"],CustomName:"§2  Ready !",CustomNameVisible:0,NoGravity:1}
summon armor_stand ~ ~ ~ {Tags:["ImportToDo","TestImport"],CustomName:"§4Not Ready",CustomNameVisible:0,NoGravity:1}

function Gunivers-Lib:Utils/Documentation/Imports/Tests/Vectors
function Gunivers-Lib:Utils/Documentation/Imports/Tests/Orientation
function Gunivers-Lib:Utils/Documentation/Imports/Tests/Math
function Gunivers-Lib:Utils/Documentation/Imports/Tests/Temporary
function Gunivers-Lib:Utils/Documentation/Imports/Tests/Location
function Gunivers-Lib:Utils/Documentation/Imports/Tests/ID

function Gunivers-Lib:Utils/Documentation/Imports/Tests/VecOriMatTem



