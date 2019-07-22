kill @e[tag=cacheMarker]
kill @e[name=glMarkerCache,type=armor_stand]
summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"glCacheLoc\"}",Invisible:1,NoGravity:1,Tags:["Glib","cacheMarker","cacheHere"]}
summon armor_stand ~15 ~ ~ {Invisible:1,NoGravity:1,Tags:["Glib","cacheMarker","cacheBack"]}
summon armor_stand ~ ~ ~15 {Invisible:1,NoGravity:1,Tags:["Glib","cacheMarker","cacheRight"]}
summon armor_stand ~ ~15 ~ {Invisible:1,NoGravity:1,Tags:["Glib","cacheMarker","cacheTop"]}
summon armor_stand ~15 ~ ~15 {Invisible:1,NoGravity:1,Tags:["Glib","cacheMarker","cacheBackRight"]}
summon armor_stand ~15 ~15 ~ {Invisible:1,NoGravity:1,Tags:["Glib","cacheMarker","cacheBackTop"]}
summon armor_stand ~ ~15 ~15 {Invisible:1,NoGravity:1,Tags:["Glib","cacheMarker","cacheRightTop"]}
summon armor_stand ~15 ~15 ~15 {Invisible:1,NoGravity:1,Tags:["Glib","cacheMarker","cacheBackRightTop"]}
