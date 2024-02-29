

function #bs.test:assert_function_failed {function:"functionpath with macro"}
function #bs.test:assert_function_succeed {function:"functionpath"}
function #bs.test:assert_manual_confirmation {message:""}
function #bs.test:assert_nbt_array_contains {needle:"storage bs:out math", haystack:"storage bs:out math"}
function #bs.test:assert_nbt_array_not_contains {needle:"storage bs:out math", haystack:"storage bs:out math"}
function #bs.test:assert_nbt_equals {expected:"storage bs:out math",actual:"storage bs:out math"}
function #bs.test:assert_nbt_is_array {actual:"storage bs:out math"}
function #bs.test:assert_nbt_is_bool {actual:"storage bs:out math"}
function #bs.test:assert_nbt_is_byte {actual:"storage bs:out math"}
function #bs.test:assert_nbt_is_compound {actual:"storage bs:out math"}
function #bs.test:assert_nbt_is_defined {actual:"storage bs:out math"}
function #bs.test:assert_nbt_is_double {actual:"storage bs:out math"}
function #bs.test:assert_nbt_is_false {actual:"storage bs:out math"}
function #bs.test:assert_nbt_is_float {actual:"storage bs:out math"}
function #bs.test:assert_nbt_is_int {actual:"storage bs:out math"}
function #bs.test:assert_nbt_is_long {actual:"storage bs:out math"}
function #bs.test:assert_nbt_is_number {actual:"storage bs:out math"}
function #bs.test:assert_nbt_is_short {actual:"storage bs:out math"}
function #bs.test:assert_nbt_is_string {actual:"storage bs:out math"}
function #bs.test:assert_nbt_is_true {actual:"storage bs:out math"}
function #bs.test:assert_nbt_is_undefined {actual:"storage bs:out math"}
function #bs.test:assert_nbt_matches {actual:"storage bs:out math", range:"1.5..2.9"}
function #bs.test:assert_nbt_not_equals {unexpected:"storage bs:out math",actual:"storage bs:out math"}
function #bs.test:assert_nbt_not_matches {actual:"storage bs:out math", range:"1..100"}
function #bs.test:assert_score_equals {expected:"@s bs.var",actual:"#holder bs.data"}
function #bs.test:assert_score_is_defined {actual:"#holder bs.data"}
function #bs.test:assert_score_is_falsy {actual:"#holder bs.data"}
function #bs.test:assert_score_is_truthy {actual:"#holder bs.data"}
function #bs.test:assert_score_is_undefined {actual:"#holder bs.data"}
function #bs.test:assert_score_matches {actual:"#holder bs.data", range:"1..100"}
function #bs.test:assert_score_not_equals {unexpected:"@s bs.var",actual:"#holder bs.data"}
function #bs.test:assert_score_not_matches {actual:"#holder bs.data", range:"1..100"}




function #bs.test:new { name: "sqrt should returns 555" }

data modify storage bs:in math.sqrt.x set value 2.8
function #bs.math:sqrt
function #bs.test:assert_nbt_matches {actual:"storage bs:out math.sqrt", range:"1.5..2"}



data modify storage bs:in test.run set value [
  {
    name: "BS Math Module",
    group: ["bs", "bs.math"],
    before_each: "",
    before_all: "",
    after_each: "",
    after_all: "",
    tests: [
      "functionname/path",
      "functionname/path",
    ],
  },
]
