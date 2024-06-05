$scoreboard objectives remove $(id)
$data remove storage bs:data sidebar[{id:'$(id)'}]

function #bs.log:error { \
  namespace: "bs.sidebar", \
  path: "#bs.sidebar:create", \
  tag: "create", \
  message: '[{"text":"The line at position ","color":"red"},{"score":{"name":"#sidebar.line","objective":"bs.data"}},{"text":" must have valid JSON text components."}]', \
}
