# Warn logs are shown when having tag
# @batch bs.log
# @dummy

tag @s add bs.log.foo.bar._
function #bs.log:warn { path: "bs.foo:bar", feature: "foo.bar", message: '"Level wildcard warn log message"' }
assert chat "Level wildcard warn log message"
tag @s remove bs.log.foo.bar._

tag @s add bs.log._.warn
function #bs.log:warn { path: "bs.foo:bar", feature: "foo.bar", message: '"Feature wildcard warn log message"' }
assert chat "Feature wildcard warn log message"
tag @s remove bs.log._.warn

tag @s add bs.log._._
function #bs.log:warn { path: "bs.foo:bar", feature: "foo.bar", message: '"All wildcards warn log message"' }
assert chat "All wildcards warn log message"
tag @s remove bs.log._._
