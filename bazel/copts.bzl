COPTS = select({
    "@rules_cc//cc/compiler:msvc-cl": [
    ],
    "//conditions:default": [],
})
