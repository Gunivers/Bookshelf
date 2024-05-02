# Error logs are not shown when missing tag
# @batch bs.log
# @dummy

function #bs.log:error { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Hidden error log message"' }
assert not chat "Hidden error log message"
