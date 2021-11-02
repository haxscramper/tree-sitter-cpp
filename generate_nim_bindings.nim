import
  hnimast/codegen/hts_wrapgen

import
  hmisc/other/oswrap

import
  std/[options]

grammarFromFile(
  langPrefix  = "cpp",
  grammarJs   = cwd() /. "grammar.js",
  scannerFile = some(cwd() /. "src/scanner.cc"),
  parserOut   = some(cwd() /. "cpp_parser.c"),
  parserUser  = some(cwd() /. "test_user.nim")
)
