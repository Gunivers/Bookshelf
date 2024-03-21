# Debug logs are shown when having tag
# @batch bs.log
# @dummy

tag @s add bs.log.foo.bar.debug
function #bs.log:debug { path: "bs.foo:bar", feature: "foo.bar", message: '"Debug tag debug log message"' }
assert chat "Debug tag debug log message"
tag @s remove bs.log.foo.bar.debug
