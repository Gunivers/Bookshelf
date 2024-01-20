data modify storage bs:ctx _ set value {r:"",g:"",b:""}
$data modify storage bs:ctx _.r set from storage bs:const color.hex_chars[$(x)]
$data modify storage bs:ctx _.g set from storage bs:const color.hex_chars[$(y)]
$data modify storage bs:ctx _.b set from storage bs:const color.hex_chars[$(z)]
