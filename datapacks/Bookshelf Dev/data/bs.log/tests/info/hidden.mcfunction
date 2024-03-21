# Info logs are not shown when missing tag
# @batch bs.log
# @dummy

function #bs.log:info { path: "bs.foo:bar", feature: "foo.bar", message: '"Hidden info log message"' }
assert not chat "Hidden info log message"
