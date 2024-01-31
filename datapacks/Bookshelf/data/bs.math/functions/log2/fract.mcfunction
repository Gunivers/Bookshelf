# polynomial used to approximate log2(x):

# c0: -1.71360049568838679334703556378372013568878173828125
# c1: 12.140772751442813870426107314415276050567626953125
# c2: -38.14350757032898542320253909565508365631103515625
# c3: 69.9190874943370630489880568347871303558349609375
# c4: -82.8110616548526223823500913567841053009033203125
# c5: 66.436833597743998325313441455364227294921875
# c6: -37.1792086028527819507871754467487335205078125
# c7: 15.723860485552176413648339803330600261688232421875
# c8: -4.3731760053578137004137715848628431558609008789062

$execute store result storage bs:ctx x float $(x) run scoreboard players set #math.log2.x bs.data -28749446
execute store result score #math.log2.x bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players add #math.log2.x bs.data 203688367
execute store result score #math.log2.x bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players remove #math.log2.x bs.data 639941865
execute store result score #math.log2.x bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players add #math.log2.x bs.data 1173047633
execute store result score #math.log2.x bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players remove #math.log2.x bs.data 1389339069
execute store result score #math.log2.x bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players add #math.log2.x bs.data 1114625108
execute store result score #math.log2.x bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players remove #math.log2.x bs.data 623763613
execute store result score #math.log2.x bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players add #math.log2.x bs.data 263802604
execute store result score #math.log2.x bs.data run data get storage bs:ctx x
scoreboard players remove #math.log2.x bs.data 73369718
