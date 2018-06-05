kill @e[tag=cacheMarker]
kill @e[name=glMarkerCache,type=armor_stand]
summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"glCacheLoc\"}",Invisible:1,NoGravity:1,Tags:["cacheMarker","cacheHere"]}
summon armor_stand ~15 ~ ~ {Invisible:1,NoGravity:1,Tags:["cacheMarker","cacheBack"]}
summon armor_stand ~ ~ ~15 {Invisible:1,NoGravity:1,Tags:["cacheMarker","cacheRight"]}
summon armor_stand ~ ~15 ~ {Invisible:1,NoGravity:1,Tags:["cacheMarker","cacheTop"]}
summon armor_stand ~15 ~ ~15 {Invisible:1,NoGravity:1,Tags:["cacheMarker","cacheBackRight"]}
summon armor_stand ~15 ~15 ~ {Invisible:1,NoGravity:1,Tags:["cacheMarker","cacheBackTop"]}
summon armor_stand ~ ~15 ~15 {Invisible:1,NoGravity:1,Tags:["cacheMarker","cacheRightTop"]}
summon armor_stand ~15 ~15 ~15 {Invisible:1,NoGravity:1,Tags:["cacheMarker","cacheBackRightTop"]}
