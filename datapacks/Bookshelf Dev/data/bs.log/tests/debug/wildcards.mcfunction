# Debug logs are shown when having tag
# @batch bs.log
# @dummy

tag @s add bs.foo.log.bar._
function #bs.log:debug { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Level wildcard debug log message"' }
assert chat "Level wildcard debug log message"
tag @s remove bs.foo.log.bar._

tag @s add bs.foo.log._.debug
function #bs.log:debug { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Tag wildcard debug log message"' }
assert chat "Tag wildcard debug log message"
tag @s remove bs.foo.log._.debug

tag @s add bs.foo.log._._
function #bs.log:debug { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"All wildcards debug log message"' }
assert chat "Tag and level wildcards debug log message"
tag @s remove bs.foo.log._._

tag @s add _.log._._
function #bs.log:debug { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"All wildcards debug log message"' }
assert chat "All wildcards debug log message"
tag @s remove _.log._._
