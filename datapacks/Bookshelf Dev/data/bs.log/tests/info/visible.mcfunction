# Info logs are shown when having tag
# @batch bs.log
# @dummy

tag @s add bs.log.foo.bar.debug
function #bs.log:info { path: "bs.foo:bar", feature: "foo.bar", message: '"Debug tag info log message"' }
assert chat "Debug tag info log message"
tag @s remove bs.log.foo.bar.debug

tag @s add bs.log.foo.bar.info
function #bs.log:info { path: "bs.foo:bar", feature: "foo.bar", message: '"Info tag info log message"' }
assert chat "Info tag info log message"
tag @s remove bs.log.foo.bar.info
