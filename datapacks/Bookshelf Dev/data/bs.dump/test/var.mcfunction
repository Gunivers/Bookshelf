# Dumping var works as expected
# @batch bs.dump
# @dummy

await entity B5-0-0-0-2

data modify storage bs:data packtest set value {foo:"bar"}
function #bs.dump:var { var: { storage: "storage bs:data packtest", entity:"entity @s {} 0", score: ["3 bs.const", "-_- bs.const"] }}

assert chat '.*?\\{[\\s\\S]*storage: \\{[\\s\\S]*foo: \\"bar\\"[\\s\\S]*\\}[\\s\\S]*\\}'
assert chat '.*?\\{[\\s\\S]*entity: \\{ [0-9]+ entries .*? \\}[\\s\\S]*\\}'
assert chat '.*?\\{[\\s\\S]*score: \\[3, undefined\\][\\s\\S]*\\}'

data remove storage bs:data packtest
