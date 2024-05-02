# Debug logs are shown when having tag
# @batch bs.log
# @dummy

tag @s add bs.foo.log.bar.debug
function #bs.log:debug { namespace: "bar.foo", path: "bs.foo:bar", tag: "bar", message: '"Debug tag debug log message"' }
assert chat "Debug tag debug log message"
tag @s remove bs.foo.log.bar.debug
