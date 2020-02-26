#!/bin/bash
cd ../parser
make
cd ../testSuite
echo "Automatically running test suite for Phase 2..."
echo ""

echo "Test file: mod_main.pt"
echo "this test will emit the same program declaration output tokens as PT Pascal for the new Qust way of declaring main programs"
echo "Contents of test file:"
cat mod_main.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt mod_main.pt" ./../lib/pt/parser.def -e
echo "================================"
echo ""

echo "Test file: mod.pt"
echo "this test will emit the new Qust parser output token sModule and sBegin and sEnd for the brackets around the module declaration"
echo "Contents of test file:"
cat mod.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt mod.pt" ./../lib/pt/parser.def -e
echo "================================"
echo ""

echo "Test file: fn.pt"
echo "this program will output sProcedure token for the 'fn' keyword"
echo "Contents of test file:"
cat fn.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt fn.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: pub.pt"
echo "this program will output sPublic after sProcedure and sPublic"
echo "Contents of test file:"
cat pub.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt pub.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: mut_integer_explicit.pt"
echo "this test will emit the parser output tokens sVar and sInteger for mutable integer decleration followed by a sMutable token at the end of the rest of the variable decleration tokens"
echo "Contents of test file:"
cat mut_integer_explicit.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt mut_integer_explicit.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: mut_integer_implicit.pt"
echo "this test will emit the parser output tokens sVar, sMutable and sInteger without the variable being explicitely declared as an int type"
echo "Contents of test file:"
cat mut_integer_implicit.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt mut_integer_implicit.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""


echo "Test file: var_fail.pt"
echo "this test fails for previous way of declaring variables by not emitting sVar token"
echo "Contents of test file:"
cat var_fail.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt var_fail.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: array.pt"
echo "this test will pass for declaring a Qust array with a only an upper bound by emitting an sArray token"
echo "Contents of test file:"
cat array.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt array.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: array_fail.pt"
echo "this program will fail for declaring an array the PT Pascal way with a lower bound by emitting a sNullStmt token"
echo "Contents of test file:"
cat array_fail.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt array_fail.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: const.pt"
echo "this program emits parser output token sConst for const declaration"
echo "Contents of test file:"
cat const.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt const.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: const_multiple_semicolon_fail.pt"
echo "this test fails for multiple declarations of const when separate by semi colons by emitting an AssignmentStmt token"
echo "Contents of test file:"
cat const_multiple_semicolon_fail.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt const_multiple_semicolon_fail.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: const_multiple_comma.pt"
echo "this program will pass for multiple declarations const when separate by commas by emitting 2 sInteger tokens"
echo "Contents of test file:"
cat const_multiple_comma.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt const_multiple_comma.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: let_multiple_semicolon_fail.pt"
echo "this test fails for multiple declarations of a mutable integer variable when separate by semi colons by emitting a single sMutable token"
echo "Contents of test file:"
cat let_multiple_semicolon_fail.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt let_multiple_semicolon_fail.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: let_multiple_comma.pt"
echo "this program will pass for multiple declarations of a mutable integer variable when separate by commas by emitting 2 sInteger tokens"
echo "Contents of test file:"
cat let_multiple_comma.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt let_multiple_comma.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: type.pt"
echo "this test emits parser output token sType for type decleration"
echo "Contents of test file:"
cat type.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt type.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: type_multiple_fail.pt"
echo "this test fails for multiple declarations in each type by emitting only one sType token when separated by semi colons"
echo "Contents of test file:"
cat type_multiple_fail.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt type_multiple_fail.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: type_multiple_comma_fail.pt"
echo "this test fails for multiple declarations in each type by emitting only one sType when tokens separated by commas"
echo "Contents of test file:"
cat type_multiple_comma_fail.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt type_multiple_comma_fail.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: initialvalue.pt"
echo "this test will output sInitialValue and sExpnEnd at the end"
echo "Contents of test file:"
cat initialvalue.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt initialvalue.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: println.pt"
echo "this test maps the predefined identifier 'println' with the previous parser output token sCallStmt"
echo "Contents of test file:"
cat print.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt println.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: print.pt"
echo "this test maps the predefined identifier 'print' with the previous parser output token sCallStmt"
echo "Contents of test file:"
cat print.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt print.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: bool.pt"
echo "this test maps the predefined identifier bool with the previous parser output token sIdentifier"
echo "Contents of test file:"
cat bool.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt bool.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: substring.pt"
echo "this test will emit sSubstring token"
echo "Contents of test file:"
cat substring.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt substring.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: string_length.pt"
echo "this test will emit sLength token"
echo "Contents of test file:"
cat string_length.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt string_length.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: match.pt"
echo "this test will map 'match' to sCaseStmt token and will also emit sCaseOtherwise token the cases will be surrounded by sBegin and sEnd tokens for statement sequencing. This will be demonstrated by including 2 statements in one of that case and observing that no sNullStmt token is emitted. Finally, a sCaseEnd token will be emitted after the final sEnd token for the default statement"
echo "Contents of test file:"
cat match.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt match.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: loop.pt"
echo "this test will emit parser output tokens sLoopStmt, sLoopBreakIf and sLoopEnd. It will also show that the loop statement is surrounded by sBegin and sEnd for sequencing statements there will be a sExpnEnd token emitted after the statement tokens after sLoopBreakIf"
echo "Contents of test file:"
cat loop.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt loop.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: if_elseif_else.pt"
echo "this program will output sIf, sElseIf, and sElse tokens for Qust style if statements. After each condition is complete, sExpnEnd will be emitted followed by sThen"
echo "Contents of test file:"
cat if_elseif_else.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt if_elseif_else.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: declaration_stmt.pt"
echo "this test will show that declarations and statements go in any order by incluing 2 declarations first and then 2 statementa by not emitting any sNullStmt tokens and emitting all appropriate parser output tokens"
echo "Contents of test file:"
cat declaration_stmt.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt declaration_stmt.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: stmt_declaration.pt"
echo "this program will show that declarations and statements go in any order by incluing 2 statements first and then 2 declarations by emitting all appropriate parser output tokens"
echo "Contents of test file:"
cat stmt_declaration.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt stmt_declaration.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: mod_declaration_stmt.pt"
echo "this test will show that declarations and statements go in any order by incluing 2 declarations first and then 2 statementa by not emitting any sNullStmt tokens and emitting all appropriate parser output tokens"
echo "Contents of test file:"
cat mod_declaration_stmt.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt mod_declaration_stmt.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: mod_stmt_declaration.pt"
echo "this program will show that declarations and statements go in any order by incluing 2 statements first and then 2 declarations by emitting all appropriate parser output tokens"
echo "Contents of test file:"
cat mod_stmt_declaration.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt mod_stmt_declaration.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: and.pt"
echo "we do not need to test for the previous PT Pascal keyword 'and' since it will never get screened to a keyword in Qust, as proved by out tests in phase 1. Instead, we will test the replacement in Qust '&&' and make sure it is mapped to the parser output token sAnd"
echo "Contents of test file:"
cat and.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt and.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: or.pt"
echo "we do not need to test for the previous PT Pascal keyword 'or' since it will never get screened to a keyword in Qust, as proved by out tests in phase 1. Instead, we will test the replacement in Qust '||' and make sure it is mapped to the parser output token sOr"
echo "Contents of test file:"
cat or.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt or.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: div.pt"
echo "we do not need to test for the previous PT Pascal keyword 'div' since it will never get screened to a keyword in Qust, as proved by out tests in phase 1 Instead, we will test the replacement in Qust '/' and make sure it is mapped to the parser output token sDiv"
echo "Contents of test file:"
cat div.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt div.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: modulus.pt"
echo "we do not need to test for the previous PT Pascal keyword 'mod' since it will never get screened to a keyword in Qust, as proved by out tests in phase 1 Instead, we will test the replacement in Qust '%' and make sure it is mapped to the parser output token sMod"
echo "Contents of test file:"
cat modulus.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt modulus.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: not.pt"
echo "we do not need to test for the previous PT Pascal keyword 'not' since it will never get screened to a keyword in Qust, as proved by out tests in phase 1. Instead, we will test the replacement in Qust '!' and make sure it is mapped to the parser output token sNot"
echo "Contents of test file:"
cat not.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt not.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: double_equals.pt"
echo "this test maps the new Qust operator '==' by emitting a sEq token"
echo "Contents of test file:"
cat double_equals.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt double_equals.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: pt_double_equals_fail.pt"
echo "this test fails for previous PT Pascal operator '=' by not emitting a sEq token"
echo "Contents of test file:"
cat pt_double_equals_fail.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt pt_double_equals_fail.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: not_equal.pt"
echo "this test maps the new Qust operator '!=' by emitting a sNE parser output token"
echo "Contents of test file:"
cat not_equal.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt not_equal.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: pt_not_equal_fail.pt"
echo "this test fails for the old PT Pascal operator '<>' by NOT emitting a sNE parser output token"
echo "Contents of test file:"
cat pt_not_equal_fail.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt pt_not_equal_fail.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: plus_equals.pt"
echo "the += operator will be tested by observing that the tokens emitted indicate the equivalence to the statement that the variable is being added with an integer and assigned to the same variable"
echo "Contents of test file:"
cat plus_equals.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt plus_equals.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: minus_equals.pt"
echo "the -= operator will be tested by observing that the tokens emitted indicate the equivalence to the statement that an integer is being subtracted from the variable and assigned to the same variable"
echo "Contents of test file:"
cat minus_equals.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt minus_equals.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: new_comment_style.pt"
echo "the new line commenting style using syntax '//' will be tested. We expect it to be ignored by the parser and no specific parser output tokens to be emitted for it"
echo "Contents of test file:"
cat new_comment_style.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt new_comment_style.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: new_comment_style_block.pt"
echo "the new line commenting style using syntax '/**/' will be tested. We expect it to be ignored by the parser and no specific parser output tokens to be emitted for it"
echo "Contents of test file:"
cat new_comment_style_block.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt new_comment_style_block.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: old_new_comment_style_fail.pt"
echo "the new line commenting style using syntax '{}' will be tested. It will fail by **"
echo "Contents of test file:"
cat old_new_comment_style_fail.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt old_new_comment_style_fail.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: old_comment_style_block_fail.pt"
echo "the new line commenting style using syntax '(**)' will be tested. It will fail by **"
echo "Contents of test file:"
cat old_comment_style_block_fail.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt old_comment_style_block_fail.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: single_quote_fail.pt"
echo "this test will fail for the single quote by emitting a sIdentifier token instead of a sStringLiteral token"
echo "Contents of test file:"
cat single_quote_fail.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt single_quote_fail.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: double_quote_stringlit.pt"
echo "this test passes for the double quote by emitting a sStringLiteral"
echo "Contents of test file:"
cat double_quote_stringlit.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt double_quote_stringlit.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""

echo "Test file: old_equal_fail.pt"
echo "this test fails for the old assignment syntax ':=' by not emitting a sAssignmentStmt token"
echo "Contents of test file:"
cat old_equal_fail.pt
echo "
Output of test case:"
ssltrace "ptc -o2 -t2 -L ./../lib/pt old_equal_fail.pt" ./../lib/pt/parser.def -e 
echo "================================"
echo ""
