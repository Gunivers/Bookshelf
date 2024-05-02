# Debug logs are shown when having tag
# @batch bs.log
# @dummy

tag @s add bs.log.foo.bar._
function #bs.log:debug { path: "bs.foo:bar", feature: "foo.bar", message: '"Level wildcard debug log message"' }
assert chat "Level wildcard debug log message"
tag @s remove bs.log.foo.bar._

tag @s add bs.log._.debug
function #bs.log:debug { path: "bs.foo:bar", feature: "foo.bar", message: '"Feature wildcard debug log message"' }
assert chat "Feature wildcard debug log message"
tag @s remove bs.log._.debug

tag @s add bs.log._._
function #bs.log:debug { path: "bs.foo:bar", feature: "foo.bar", message: '"All wildcards debug log message"' }
assert chat "All wildcards debug log message"
tag @s remove bs.log._._
