tag @a[tag=bs.log._.warn] add bs.unittest.had_log_tag
tag @a add bs.log._.warn
tag @a add bs.log.unittest._

function #bs.log:info { \
    path: "bs.unittest:run", \
    feature: "unittest", \
    message: '"Starting unitary tests..."' \
}

scoreboard objectives add bs.unit_tests dummy

function bs.unit_tests:module/bitwise
function bs.unit_tests:module/id
function bs.unit_tests:module/link
function bs.unit_tests:module/math
function bs.unit_tests:module/vector

scoreboard objectives remove bs.unit_tests

function #bs.log:info { \
    path: "bs.unittest:run", \
    feature: "unittest", \
    message: '"Unitary tests completed!."' \
}

tag @a[tag=!bs.unittest.had_log_tag] remove bs.log._.warn
tag @a remove bs.unittest.had_log_tag
tag @a remove bs.log.unittest.run._
