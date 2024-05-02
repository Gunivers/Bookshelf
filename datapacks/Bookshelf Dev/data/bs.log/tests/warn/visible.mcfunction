# Warn logs are shown when having tag
# @batch bs.log
# @dummy

tag @s add bs.log.foo.bar.debug
function #bs.log:warn { path: "bs.foo:bar", feature: "foo.bar", message: '"Debug tag warn log message"' }
assert chat "Debug tag warn log message"
tag @s remove bs.log.foo.bar.debug

tag @s add bs.log.foo.bar.info
function #bs.log:warn { path: "bs.foo:bar", feature: "foo.bar", message: '"Info tag warn log message"' }
assert chat "Info tag warn log message"
tag @s remove bs.log.foo.bar.info

tag @s add bs.log.foo.bar.warn
function #bs.log:warn { path: "bs.foo:bar", feature: "foo.bar", message: '"Warn tag warn log message"' }
assert chat "Warn tag warn log message"
tag @s remove bs.log.foo.bar.warn
