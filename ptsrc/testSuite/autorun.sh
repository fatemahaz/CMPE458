#!/bin/bash
cd ../parser
make
cd ../semantic
make
cd ../testSuite
echo "Automatically running test suite for Phase 3..."
echo ""

echo "======================================"
echo "*** tests for Step 2: Blocks ***"
echo "======================================"
echo "Test file: block_rule_general_test.pt"
echo "this test contains some general testing of the Block rule by testing a program with constant and variable declarations and a while loop. We expect no errors to be emitted."
echo "Contents of test file:"
cat block_rule_general_test.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt block_rule_general_test.pt" ./../lib/pt/semantic.def
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt block_rule_general_test.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: empty_mod_main.pt"
echo "this test will emit no errors for an empty mod main. It will call Block rule."
echo "Contents of test file:"
cat empty_mod_main.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt empty_mod_main.pt" ./../lib/pt/semantic.def
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt empty_mod_main.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: new_scope_for_stmt.pt"
echo "this test will declare a new scope for all statements by popping a new scope on the scope stack, calling the Block rule, then popping the scope from the scope stack"
echo "Contents of test file:"
cat new_scope_for_stmt.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt new_scope_for_stmt.pt" ./../lib/pt/semantic.def
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt new_scope_for_stmt.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: declaration_stmt.pt"
echo "this test will emit no errors for a program with declarations first then statements. It will call the Statement rule for all statements, which will open a new scope."
echo "Contents of test file:"
cat declaration_stmt.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt declaration_stmt.pt" ./../lib/pt/semantic.def
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt declaration_stmt.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: stmt_declaration.pt"
echo "this test will emit no errors for a program with statements first then declarations. It will call the Statement rule for all statements, which will open a new scope."
echo "Contents of test file:"
cat stmt_declaration.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt stmt_declaration.pt" ./../lib/pt/semantic.def
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt stmt_declaration.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "======================================"
echo "*** tests for Step 3: Types ***"
echo "======================================"
echo "Test file: array.pt"
echo "this test will not emit an error for proper Qust array declaration. It will set the bottom range for the array to 1."
echo "Contents of test file:"
cat array.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt array.pt" ./../lib/pt/semantic.def
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt array.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"
