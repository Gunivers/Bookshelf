# Error logs are not shown when missing tag
# @batch bs.log
# @dummy

function #bs.log:error { path: "bs.foo:bar", feature: "foo.bar", message: '"Hidden error log message"' }
assert not chat "Hidden error log message"
