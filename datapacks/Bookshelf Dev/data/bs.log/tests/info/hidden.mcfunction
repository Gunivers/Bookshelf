# Info logs are not shown when missing tag
# @batch bs.log
# @dummy

function #bs.log:info { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Hidden info log message"' }
assert not chat "Hidden info log message"
