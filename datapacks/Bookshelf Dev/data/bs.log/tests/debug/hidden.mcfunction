# Debug logs are not shown when missing tag
# @batch bs.log
# @dummy

function #bs.log:debug { path: "bs.foo:bar", feature: "foo.bar", message: '"Hidden debug log message"' }
assert not chat "Hidden debug log message"
