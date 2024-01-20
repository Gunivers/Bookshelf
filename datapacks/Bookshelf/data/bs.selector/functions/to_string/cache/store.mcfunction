$data modify storage bs:ctx _ set value $(Name)
data modify storage bs:out selector set from storage bs:ctx _.insertion

data modify storage bs:ctx _ set value {}
data modify storage bs:ctx _.k set from entity @s UUID
data modify storage bs:ctx _.v set from storage bs:out selector
data modify storage bs:data selector append from storage bs:ctx _
