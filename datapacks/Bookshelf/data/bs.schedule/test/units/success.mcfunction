# Valid units should not throw an error
# @batch bs.schedule
# @dummy

await entity B5-0-0-0-4

function #bs.schedule:schedule {with:{command:"help",time:1,unit:"t"}}
function #bs.schedule:schedule {with:{command:"help",time:1,unit:"tick"}}
function #bs.schedule:schedule {with:{command:"help",time:1,unit:"s"}}
function #bs.schedule:schedule {with:{command:"help",time:1,unit:"second"}}
function #bs.schedule:schedule {with:{command:"help",time:1,unit:"m"}}
function #bs.schedule:schedule {with:{command:"help",time:1,unit:"minute"}}
function #bs.schedule:schedule {with:{command:"help",time:1,unit:"h"}}
function #bs.schedule:schedule {with:{command:"help",time:1,unit:"hour"}}
assert not chat "(?i).*error.*"
