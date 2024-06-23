# Warn logs are shown when having tag
# @batch bs.log
# @dummy

tag @s add bs.foo.log.bar.debug
function #bs.log:warn { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Debug tag warn log message"' }
assert chat "Debug tag warn log message"
tag @s remove bs.foo.log.bar.debug

tag @s add bs.foo.log.bar.info
function #bs.log:warn { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Info tag warn log message"' }
assert chat "Info tag warn log message"
tag @s remove bs.foo.log.bar.info

tag @s add bs.foo.log.bar.warn
function #bs.log:warn { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Warn tag warn log message"' }
assert chat "Warn tag warn log message"
tag @s remove bs.foo.log.bar.warn
