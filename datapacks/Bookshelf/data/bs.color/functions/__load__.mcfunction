# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

scoreboard objectives add bs.out dummy [{"text":"BS ","color":"dark_gray"},{"text":"Output","color":"aqua"}]
scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"BS ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]

scoreboard players set 256 bs.const 256
scoreboard players set 65536 bs.const 65536

data modify storage bs:const color.hex_chars set value ["00","01","02","03","04","05","06","07","08","09","0a","0b","0c","0d","0e","0f","10","11","12","13","14","15","16","17","18","19","1a","1b","1c","1d","1e","1f","20","21","22","23","24","25","26","27","28","29","2a","2b","2c","2d","2e","2f","30","31","32","33","34","35","36","37","38","39","3a","3b","3c","3d","3e","3f","40","41","42","43","44","45","46","47","48","49","4a","4b","4c","4d","4e","4f","50","51","52","53","54","55","56","57","58","59","5a","5b","5c","5d","5e","5f","60","61","62","63","64","65","66","67","68","69","6a","6b","6c","6d","6e","6f","70","71","72","73","74","75","76","77","78","79","7a","7b","7c","7d","7e","7f","80","81","82","83","84","85","86","87","88","89","8a","8b","8c","8d","8e","8f","90","91","92","93","94","95","96","97","98","99","9a","9b","9c","9d","9e","9f","a0","a1","a2","a3","a4","a5","a6","a7","a8","a9","aa","ab","ac","ad","ae","af","b0","b1","b2","b3","b4","b5","b6","b7","b8","b9","ba","bb","bc","bd","be","bf","c0","c1","c2","c3","c4","c5","c6","c7","c8","c9","ca","cb","cc","cd","ce","cf","d0","d1","d2","d3","d4","d5","d6","d7","d8","d9","da","db","dc","dd","de","df","e0","e1","e2","e3","e4","e5","e6","e7","e8","e9","ea","eb","ec","ed","ee","ef","f0","f1","f2","f3","f4","f5","f6","f7","f8","f9","fa","fb","fc","fd","fe","ff"]
data modify storage bs:const color.hex_values set value {00:0,01:1,02:2,03:3,04:4,05:5,06:6,07:7,08:8,09:9,0a:10,0b:11,0c:12,0d:13,0e:14,0f:15,0A:10,0B:11,0C:12,0D:13,0E:14,0F:15,10:16,11:17,12:18,13:19,14:20,15:21,16:22,17:23,18:24,19:25,1a:26,1b:27,1c:28,1d:29,1e:30,1f:31,1A:26,1B:27,1C:28,1D:29,1E:30,1F:31,20:32,21:33,22:34,23:35,24:36,25:37,26:38,27:39,28:40,29:41,2a:42,2b:43,2c:44,2d:45,2e:46,2f:47,2A:42,2B:43,2C:44,2D:45,2E:46,2F:47,30:48,31:49,32:50,33:51,34:52,35:53,36:54,37:55,38:56,39:57,3a:58,3b:59,3c:60,3d:61,3e:62,3f:63,3A:58,3B:59,3C:60,3d:61,3E:62,3F:63,40:64,41:65,42:66,43:67,44:68,45:69,46:70,47:71,48:72,49:73,4a:74,4b:75,4c:76,4d:77,4e:78,4f:79,4A:74,4B:75,4C:76,4D:77,4E:78,4F:79,50:80,51:81,52:82,53:83,54:84,55:85,56:86,57:87,58:88,59:89,5a:90,5b:91,5c:92,5d:93,5e:94,5f:95,5A:90,5B:91,5C:92,5D:93,5E:94,5F:95,60:96,61:97,62:98,63:99,64:100,65:101,66:102,67:103,68:104,69:105,6a:106,6b:107,6c:108,6d:109,6e:110,6f:111,6A:106,6B:107,6C:108,6D:109,6E:110,6F:111,70:112,71:113,72:114,73:115,74:116,75:117,76:118,77:119,78:120,79:121,7a:122,7b:123,7c:124,7d:125,7e:126,7f:127,7A:122,7B:123,7C:124,7D:125,7E:126,7F:127,80:128,81:129,82:130,83:131,84:132,85:133,86:134,87:135,88:136,89:137,8a:138,8b:139,8c:140,8d:141,8e:142,8f:143,8A:138,8B:139,8C:140,8D:141,8E:142,8F:143,90:144,91:145,92:146,93:147,94:148,95:149,96:150,97:151,98:152,99:153,9a:154,9b:155,9c:156,9d:157,9e:158,9f:159,9A:154,9B:155,9C:156,9D:157,9E:158,9F:159,a0:160,a1:161,a2:162,a3:163,a4:164,a5:165,a6:166,a7:167,a8:168,a9:169,aa:170,ab:171,ac:172,ad:173,ae:174,af:175,b0:176,b1:177,b2:178,b3:179,b4:180,b5:181,b6:182,b7:183,b8:184,b9:185,ba:186,bb:187,bc:188,bd:189,be:190,bf:191,c0:192,c1:193,c2:194,c3:195,c4:196,c5:197,c6:198,c7:199,c8:200,c9:201,ca:202,cb:203,cc:204,cd:205,ce:206,cf:207,d0:208,d1:209,d2:210,d3:211,d4:212,d5:213,d6:214,d7:215,d8:216,d9:217,da:218,db:219,dc:220,dd:221,de:222,df:223,e0:224,e1:225,e2:226,e3:227,e4:228,e5:229,e6:230,e7:231,e8:232,e9:233,ea:234,eb:235,ec:236,ed:237,ee:238,ef:239,f0:240,f1:241,f2:242,f3:243,f4:244,f5:245,f6:246,f7:247,f8:248,f9:249,fa:250,fb:251,fc:252,fd:253,fe:254,ff:255,A1:161,A2:162,A3:163,A4:164,A5:165,A6:166,A7:167,A8:168,A9:169,AA:170,AB:171,AC:172,AD:173,AE:174,AF:175,B0:176,B1:177,B2:178,B3:179,B4:180,B5:181,B6:182,B7:183,B8:184,B9:185,BA:186,BB:187,BC:188,BD:189,BE:190,BF:191,C0:192,C1:193,C2:194,C3:195,C4:196,C5:197,C6:198,C7:199,C8:200,C9:201,CA:202,CB:203,CC:204,CD:205,CE:206,CF:207,D0:208,D1:209,D2:210,D3:211,D4:212,D5:213,D6:214,D7:215,D8:216,D9:217,DA:218,DB:219,DC:220,DD:221,DE:222,DF:223,E0:224,E1:225,E2:226,E3:227,E4:228,E5:229,E6:230,E7:231,E8:232,E9:233,EA:234,EB:235,EC:236,ED:237,EE:238,EF:239,F0:240,F1:241,F2:242,F3:243,F4:244,F5:245,F6:246,F7:247,F8:248,F9:249,FA:250,FB:251,FC:252,FD:253,FE:254,FF:255}

scoreboard players add $color.int_to_rgb.r bs.out 0
scoreboard players add $color.int_to_rgb.g bs.out 0
scoreboard players add $color.int_to_rgb.b bs.out 0
scoreboard players add $color.hex_to_rgb.r bs.out 0
scoreboard players add $color.hex_to_rgb.g bs.out 0
scoreboard players add $color.hex_to_rgb.b bs.out 0
scoreboard players add $color.rgb_to_int bs.out 0
scoreboard players add $color.hex_to_int bs.out 0

execute unless data storage bs:out color.int_to_rgb run data modify storage bs:out color.int_to_rgb set value [0,0,0]
execute unless data storage bs:out color.hex_to_rgb run data modify storage bs:out color.hex_to_rgb set value [0,0,0]
execute unless data storage bs:out color.rgb_to_int run data modify storage bs:out color.rgb_to_int set value 0
execute unless data storage bs:out color.hex_to_int run data modify storage bs:out color.hex_to_int set value 0
execute unless data storage bs:out color.rgb_to_hex run data modify storage bs:out color.rgb_to_hex set value ""
execute unless data storage bs:out color.int_to_hex run data modify storage bs:out color.int_to_hex set value ""


