#!/bin/bash
echo "Automatically running test suite for Phase 1..."
echo ""

echo "Series 1: Test cases for keywords no longer existing in Qust"
echo "-----------------"
echo "Test file: div_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pDiv since 'div' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt div_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: mod_keyword_fail.pt"
echo "this test will recognize 'mod' as a keyword. It is important to note that although the previous mod and the
new Qust mod have very different meanings, they are parsed as tokens the same in the first phase"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt mod_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: or_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pOr since 'or' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt or_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: and_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pAnd since 'and' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt and_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: not_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pNot since 'not' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt not_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: then_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pThen since 'then' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt then_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: end_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pEnd since 'end' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt then_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: until_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pUntil since 'until' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt until_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: do_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pDo since 'do' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt do_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: array_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pArray since 'array' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt array_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: program_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pProgram since 'program' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt program_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: var_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pVar since 'var' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt var_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: procedure_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pProcedure since 'procedure' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt procedure_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: begin_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pBegin since 'begin' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt begin_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: case_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pCase since 'case' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt case_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: repeat_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pRepeat since 'repeat' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt repeat_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""


echo "Test file: integer_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pInteger since 'integer' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt repeat_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: char_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pChar since 'char' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt char_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: boolean_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pBoolean since 'boolean' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt boolean_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: write_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pWrite since 'write' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt write_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: writeln_keyword_fail.pt"
echo "this test will fail because the .pIdentifier token will not be screened to pWriteln since 'writeln' is no longer a keyword in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt writeln_keyword_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Series 2: Test cases for new keywords in Qust"
echo "-----------------"
echo "Test file: pub_new_keyword.pt"
echo "this test will screen .pIdentifier 'pub' to token pPub"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt pub_new_keyword.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: main_new_keyword.pt"
echo "this test will screen .pIdentifier 'main' to token pMain"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt main_new_keyword.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: let_new_keyword.pt"
echo "this test will screen .pIdentifier 'let' to token pLet"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt let_new_keyword.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: mut_new_keyword.pt"
echo "this test will screen .pIdentifier 'mut' to token pMut"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt mut_new_keyword.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: fn_new_keyword.pt"
echo "this test will screen .pIdentifier 'fn' to token pFn"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt fn_new_keyword.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: loop_new_keyword.pt"
echo "this test will screen .pIdentifier 'loop' to token pLoop"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt loop_new_keyword.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: break_new_keyword.pt"
echo "this test will screen .pIdentifier 'break' to token pBreak"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt break_new_keyword.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: match_new_keyword.pt"
echo "this test will screen .pIdentifier 'match' to token pMatch"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt match_new_keyword.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: int_new_keyword.pt"
echo "this test will screen .pIdentifier 'int' to anything since it is a predefined identifier and wil not be recognized as a keyword"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt int_new_keyword.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: str_new_keyword.pt"
echo "this test will screen .pIdentifier 'str' to anything since it is a predefined identifier and wil not be recognized as a keyword"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt str_new_keyword.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: bool_new_keyword.pt"
echo "this test will screen .pIdentifier 'bool' to anything since it is a predefined identifier and wil not be recognized as a keyword"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt bool_new_keyword.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: print_new_keyword.pt"
echo "this test will screen .pIdentifier 'print' to anything since it is a predefined identifier and wil not be recognized as a keyword"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt print_new_keyword.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: println_new_keyword.pt"
echo "this test will screen .pIdentifier 'println' to anything since it is a predefined identifier and wil not be recognized as a keyword"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt println_new_keyword.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Series 3: Test cases for characters in Qust"
echo "-----------------"
echo "Test file: qmark_new_char.pt"
echo "this test will not recognize '?' as an #eIllegalChar and will map it to token pQuestionMark"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt qmark_new_char.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: slash_new_char.pt"
echo "this test will not recognize '/' as an #eIllegalChar and will map it to token pSlash"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt slash_new_char.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: percent_new_char.pt"
echo "this test will not recognize '%' as an #eIllegalChar and will map it to token pPercent"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt percent_new_char.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: ampersand_new_char.pt"
echo "this test will not recognize '&' as an #eIllegalChar and will map it to token pAmpersand"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt ampersand_new_char.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: bar_new_char.pt"
echo "this test will not recognize '|' as an #eIllegalChar and will map it to token pBar"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt bar_new_char.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: exclamation_new_char.pt"
echo "this test will not recognize '!' as an #eIllegalChar and will map it to token pExclamation"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt exclamation_new_char.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: underscore_new_char.pt"
echo "this test will not recognize '_' as an #eIllegalChar and will map it to token pUnderscore"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt underscore_new_char.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: doublequote_new_char.pt"
echo "this test will not recognize double quote as an #eIllegalChar and will map it to token lQuote"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt doublequote_new_char.pt" ./../lib/pt/scan.def -i
echo "================================"
echo ""

echo "Test file: singlequote_new_char.pt"
echo "this test will recognize the single quotation mark ' as an #eIllegalChar since this character no longer exists in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt singlequote_new_char.pt" ./../lib/pt/scan.def -i
echo "================================"
echo ""

echo "Test file: dot_new_char.pt"
echo "this test will recognize the '.' character as an #eIllegalChar since this character no longer exists in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt dot_new_char.pt" ./../lib/pt/scan.def -i
echo "================================"
echo ""

echo "Test file: dotdot_new_char.pt"
echo "this test will recognize '..' as an #eIllegalChar since this character no longer exists in Qust"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt dotdot_new_char.pt" ./../lib/pt/scan.def -i
echo "================================"
echo ""

echo "Series 4: Test cases for new syntax tokens in Qust"
echo "-----------------"
echo "Test file: leftbrace_new_syn.pt"
echo "this test will recognize '{' as a syntax token pLeftBrace"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt leftbrace_new_syn.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: rightbrace_new_syn.pt"
echo "this test will recognize '}' as a syntax token pRightBrace"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt rightbrace_new_syn.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: plusequals_new_syn.pt"
echo "this test will recognize '+=' as a syntax token pPlushEquals"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt plusequals_new_syn.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: minusequals_new_syn.pt"
echo "this test will recognize '-=' as a syntax token pMinusEquals"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt minusequals_new_syn.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""


echo "Test file: doubleequals_new_syn.pt"
echo "this test will recognize '==' as a syntax token pDoubleEquals"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt doubleequals_new_syn.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: doubleampersand_new_syn.pt"
echo "this test will recognize '&&' as a syntax token pDoubleAmpersand"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt doubleampersand_new_syn.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: doublebar_new_syn.pt"
echo "this test will recognize '||' as a syntax token pDoubleBar"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt doublebar_new_syn.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: equalgreater_new_syn.pt"
echo "this test will recognize '=>' as a syntax token pEqualGreater"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt equalgreater_new_syn.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Series 5: Test case for new string literals in Qust using double quotes"
echo "-----------------"
echo "Test file: stringlit_new_syn.pt"
echo "this test will recognize a line of text in between two double quotation marks as a #eStringLiteralLine"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt stringlit_new_syn.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: stringlit_fail.pt"
echo "this test will not recognize a line of text in between two single quotation marks"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt stringlit_fail.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""


echo "Series 6: Test cases for new commenting syntax in Qust"
echo "-----------------"
echo "Test file: linecomment_new_comm.pt"
echo "this test will completely ignore the line of text which starts with '//' and will only emmit .pNewLine"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt linecomment_new_comm.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: blockcomment_new_comm.pt"
echo "this test will completely ignore the block of text between '/**/' and will only emmit .pNewLine for every new line in the block"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt blockcomment_new_comm.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: linecomment_old_comm.pt"
echo "this test will fail because it will emmit every work in the old syntax of line commenting by emitting .pIdentifier for every word along with % Output token text '<word>'"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt linecomment_old_comm.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""

echo "Test file: blockcomment_old_comm.pt"
echo "this test will fail because it will emmit every work in the old syntax of block commenting by emitting .pIdentifier for every word along with % Output token text '<word>'"
echo "Output of test case:"
ssltrace "ptc -o1 -t1 -L ./../lib/pt blockcomment_old_comm.pt" ./../lib/pt/scan.def -e
echo "================================"
echo ""