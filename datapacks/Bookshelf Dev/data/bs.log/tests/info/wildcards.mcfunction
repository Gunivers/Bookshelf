# Info logs are shown when having tag
# @batch bs.log
# @dummy

tag @s add bs.log.foo.bar._
function #bs.log:info { path: "bs.foo:bar", feature: "foo.bar", message: '"Level wildcard info log message"' }
assert chat "Level wildcard info log message"
tag @s remove bs.log.foo.bar._

tag @s add bs.log._.info
function #bs.log:info { path: "bs.foo:bar", feature: "foo.bar", message: '"Feature wildcard info log message"' }
assert chat "Feature wildcard info log message"
tag @s remove bs.log._.info

tag @s add bs.log._._
function #bs.log:info { path: "bs.foo:bar", feature: "foo.bar", message: '"All wildcards info log message"' }
assert chat "All wildcards info log message"
tag @s remove bs.log._._
