# Info logs are shown when having tag
# @batch bs.log
# @dummy

tag @s add bs.foo.log.bar.debug
function #bs.log:info { path: "bs.foo:bar", tag: "bar", message: '"Debug tag info log message"' }
assert chat "Debug tag info log message"
tag @s remove bs.foo.log.bar.debug

tag @s add bs.foo.log.bar.info
function #bs.log:info { path: "bs.foo:bar", tag: "bar", message: '"Info tag info log message"' }
assert chat "Info tag info log message"
tag @s remove bs.foo.log.bar.info
