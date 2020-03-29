#!/bin/bash
cd ../parser
make
cd ../semantic
make
cd ../testSuite
mkdir fullTests
echo "Automatically running test suite for Phase 3..."
echo ""

echo "======================================"
echo "*** tests for Step 2: Blocks ***"
echo "======================================"
echo "Test file: block_rule_general_test.pt"
echo "this test contains some general testing of the Block rule by testing a program with constant and variable declarations and a while loop. We expect no errors to be emitted."
echo "Contents of test file:"
cat block_rule_general_test.pt
ssltrace "ptc -o3 -t3 -L ./../lib/pt block_rule_general_test.pt" ./../lib/pt/semantic.def > ./fullTests/block_rule_general_test_full_test.txt
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
ssltrace "ptc -o3 -t3 -L ./../lib/pt empty_mod_main.pt" ./../lib/pt/semantic.def > ./fullTests/empty_mod_main_full_test.txt
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
ssltrace "ptc -o3 -t3 -L ./../lib/pt new_scope_for_stmt.pt" ./../lib/pt/semantic.def > ./fullTests/new_scope_for_stmt_full_test.txt
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
ssltrace "ptc -o3 -t3 -L ./../lib/pt declaration_stmt.pt" ./../lib/pt/semantic.def > ./fullTests/declaration_stmt_full_test.txt
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
ssltrace "ptc -o3 -t3 -L ./../lib/pt stmt_declaration.pt" ./../lib/pt/semantic.def > ./fullTests/stmt_declaration_full_test.txt
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
ssltrace "ptc -o3 -t3 -L ./../lib/pt array.pt" ./../lib/pt/semantic.def > ./fullTests/array_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt array.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "======================================"
echo "*** tests for Step 4: Initial Values ***"
echo "======================================"
echo "Test file: var_type_noinit.pt"
echo "This test contain a variable declaration with type bool and no initial value. This test should succeed with no errors. "
echo "Contents of test file:"
cat var_type_noinit.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt var_type_noinit.pt" ./../lib/pt/semantic.def > ./fullTests/var_type_noinit_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt var_type_noinit.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: var_type_init.pt"
echo "This test contain a variable declaration with type int and an initial value. This test should succeed with no errors. "
echo "Contents of test file:"
cat var_type_init.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt var_type_init.pt" ./../lib/pt/semantic.def > ./fullTests/var_type_init_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt var_type_init.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: var_notype_init.pt"
echo "This test contains a declaration of a variable with an initial value. This should have implicit integer type. There should be no errors emitted."
echo "Contents of test file:"
cat var_notype_init.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt var_notype_init.pt" ./../lib/pt/semantic.def > ./fullTests/var_notype_init_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt var_notype_init.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: var_notype_noinit_fail.pt"
echo "This test contains a declaration of a variable without an initial value. This is not legal qust and should emit a parse error."
echo "Contents of test file:"
cat var_notype_noinit_fail.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt var_notype_noinit_fail.pt" ./../lib/pt/semantic.def > ./fullTests/var_notype_noinit_fail_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt var_notype_noinit_fail.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"
echo "======================================"
echo "*** tests for Step 5: Modules ***"
echo "======================================"
echo "Test file: mod_pub.pt"
echo "This test tests the the fuctionality of Modules by accessing a public function declared inside a module from outside the Module."
echo "Contents of test file:"
cat mod_pub.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt mod_pub.pt" ./../lib/pt/semantic.def > ./fullTests/mod_pub_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt mod_pub.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: mod_not_pub_fail.pt"
echo "This test tests the the fuctionality of Modules by attempting accessing a non-public function declared inside a module from outside the Module. The test should fail and emit an error token"
echo "Contents of test file:"
cat mod_not_pub_fail.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt mod_not_pub_fail.pt" ./../lib/pt/semantic.def > ./fullTests/mod_not_pub_fail_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt mod_not_pub_fail.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"


echo "======================================"
echo "*** tests for Step 8: The Else If Clause ***"
echo "======================================"
echo "Test file: ifstmt_test.pt"
echo "This test contains an if, else if, and else statement. This should be equivelent in tokens to the equivelent to the next test program with only ifs and elses"
echo "Contents of test file:"
cat ifstmt_test.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt ifstmt_test.pt" ./../lib/pt/semantic.def > ./fullTests/ifstmt_test_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt ifstmt_test.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: ifstmt_equiv.pt"
echo "This test contains only ifs and elses and is the equivelent to the previous test which includes else if."
echo "Contents of test file:"
cat ifstmt_equiv.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt ifstmt_equiv.pt" ./../lib/pt/semantic.def > ./fullTests/ifstmt_equiv_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt ifstmt_equiv.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "======================================"
echo "*** tests for Step 9: Mutable and Immutable Variables ***"
echo "======================================"
echo "Test file: mut_integer_explicit.pt"
echo "This test contains a declaration of a mutable integer variable with an initial value. There should be no errors emitted."
echo "Contents of test file:"
cat mut_integer_explicit.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt mut_integer_explicit.pt" ./../lib/pt/semantic.def > ./fullTests/mut_integer_explicit_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt mut_integer_explicit.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: mut_integer_implicit.pt"
echo "This test contains a declaration of a mutable variable with an initial value. There is no type specified so should default to integer type. There should be no errors emitted."
echo "Contents of test file:"
cat mut_integer_implicit.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt mut_integer_implicit.pt" ./../lib/pt/semantic.def > ./fullTests/mut_integer_implicit_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt mut_integer_implicit.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: assign_notmut.pt"
echo "This test contains a declaration of a non mutable variable with an initial value. There is an attempt to change the value of the variable which will result in an error #eMutableTypeReqd, since the varable is not mutable. "
echo "Contents of test file:"
cat assign_notmut.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt assign_notmut.pt" ./../lib/pt/semantic.def > ./fullTests/assign_notmut_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt assign_notmut.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: assign_mut.pt"
echo "This test contains a declaration of a mutable integer variable with an initial value. There is an attempt to change the value, which will succeed as the variable is mutable. There should be no errors emitted."
echo "Contents of test file:"
cat assign_mut.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt assign_mut.pt" ./../lib/pt/semantic.def > ./fullTests/assign_mut_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt assign_mut.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: fn_mut.pt"
echo "This test contains a declaration of a function with a mutable parameter. There is an attempt to call the function with a mutable variable which will succeed. There should be no errors. "
echo "Contents of test file:"
cat fn_mut.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt fn_mut.pt" ./../lib/pt/semantic.def > ./fullTests/fn_mut_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt fn_mut.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: fn_nomut.pt"
echo "This test contains a declaration of a function with a mutable parameter. There is an attempt to call the function with a non mutable which will fail with error #eMutableTypeReqd."
echo "Contents of test file:"
cat fn_nomut.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt fn_nomut.pt" ./../lib/pt/semantic.def > ./fullTests/fn_nomut_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt fn_nomut.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: fn_value.pt"
echo "This test contains a declaration of a function with a value parameter. There is an attempt to call the function with a value which will succeed. There should be no errors. "
echo "Contents of test file:"
cat fn_value.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt fn_value.pt" ./../lib/pt/semantic.def > ./fullTests/fn_value_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt fn_value.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: fn_value_mut.pt"
echo "This test contains a declaration of a function with a value parameter. There is an attempt to call the function with a mutable variable which will fail with error #eMutableNotReqd."
echo "Contents of test file:"
cat fn_value_mut.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt fn_value_mut.pt" ./../lib/pt/semantic.def > ./fullTests/fn_value_mut_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt fn_value_mut.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "======================================"
echo "*** tests for Step 10: The String Type ***"
echo "======================================"
echo "Test file: string_assign.pt"
echo "This test contains a declaration of a string variable with an initial value. There should be no errors emitted."
echo "Contents of test file:"
cat string_assign.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_assign.pt" ./../lib/pt/semantic.def > ./fullTests/string_assign_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_assign.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "======================================"
echo "*** tests for Step 11: String Operations and Traps ***"
echo "======================================"
echo "Test file: string_assign_const.pt"
echo "This test contains a declaration of a const which is a string. This should have the equivelent tcode as the previous test which was a declaration of a string variable."
echo "Contents of test file:"
cat string_assign_const.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_assign_const.pt" ./../lib/pt/semantic.def > ./fullTests/string_assign_const_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_assign_const.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: string_length.pt"
echo "This test contains a declaration of string variable. Then an integer variable is assigned to be the length of the string variable. This test should succeed with no errors"
echo "Contents of test file:"
cat string_length.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_length.pt" ./../lib/pt/semantic.def > ./fullTests/string_length_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_length.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: string_length_fail.pt"
echo "This test contains a declaration of a string. Then a boolen variable is assigned to be the length of the string variable. This test will have an error #eTypeMismatch."
echo "Contents of test file:"
cat string_length_fail.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_length_fail.pt" ./../lib/pt/semantic.def > ./fullTests/string_length_fail_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_length_fail.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: string_concat.pt"
echo "This test contains a declaration of two string. Then a string variable is assigned to be the concatenation of the two string variables. This test should have no errors and will emit a tConcatenate token."
echo "Contents of test file:"
cat string_concat.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_concat.pt" ./../lib/pt/semantic.def > ./fullTests/string_concat_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_concat.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: string_concat_fail.pt"
echo "This test contains a declaration of a string and integer. Then a string variable is assigned to be the concatenation of the string and integer.  This test will have an error #eTypeMismatch."
echo "Contents of test file:"
cat string_concat_fail.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_concat_fail.pt" ./../lib/pt/semantic.def > ./fullTests/string_concat_fail_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_concat_fail.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: integer_add.pt"
echo "This test contains a declaration of an integer. Then a variable is assigned to be the addition of the integer variable with another integer. This test will have no error. This is to show that the regular function of the sAdd is not affected."
echo "Contents of test file:"
cat integer_add.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt integer_add.pt" ./../lib/pt/semantic.def > ./fullTests/integer_add_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt integer_add.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: string_eq.pt"
echo "This test contains a declaration of two string. Then a boolen variable is assigned to be the comparison of the two string variables. This test should have no errors and will emit a tStringEquals token."
echo "Contents of test file:"
cat string_eq.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_eq.pt" ./../lib/pt/semantic.def > ./fullTests/string_eq_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_eq.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: string_eq_fail.pt"
echo "This test contains a declaration of a string and integer. Then a boolen variable is assigned to be the comparison of the string and integer.  This test will have an error #eOperandOperatorTypeMismatch."
echo "Contents of test file:"
cat string_eq_fail.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_eq_fail.pt" ./../lib/pt/semantic.def > ./fullTests/string_eq_fail_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_eq_fail.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: integer_eq.pt"
echo "This test contains a declaration of two integers. Then a boolean variable is assigned to be the comparison of the two integer variables. This test will have no error. This is to show that the regular function of the sEq is not affected."
echo "Contents of test file:"
cat integer_eq.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt integer_eq.pt" ./../lib/pt/semantic.def > ./fullTests/integer_eq_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt integer_eq.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: string_neq.pt"
echo "This test contains a declaration of two string. Then a boolen variable is assigned to be the comparison of the two string variables. This test should have no errors and will emit a tStringEquals and a tNot token."
echo "Contents of test file:"
cat string_neq.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_neq.pt" ./../lib/pt/semantic.def > ./fullTests/string_neq_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_neq.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: string_neq_fail.pt"
echo "This test contains a declaration of a string and integer. Then a boolen variable is assigned to be the comparison of the string and integer.  This test will have an error #eOperandOperatorTypeMismatch."
echo "Contents of test file:"
cat string_neq_fail.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_neq_fail.pt" ./../lib/pt/semantic.def > ./fullTests/string_neq_fail_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_neq_fail.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: integer_neq.pt"
echo "This test contains a declaration of two integers. Then a boolean variable is assigned to be the comparison of the two integer variables. This test will have no error. This is to show that the regular function of the sNE is not affected."
echo "Contents of test file:"
cat integer_neq.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt integer_neq.pt" ./../lib/pt/semantic.def > ./fullTests/integer_neq_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt integer_neq.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: string_mult.pt"
echo "This test contains a declaration of a string. Then another string variable is assigned to be the multiplication of the string variables with an integer. This test should have no errors."
echo "Contents of test file:"
cat string_mult.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_mult.pt" ./../lib/pt/semantic.def > ./fullTests/string_mult_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_mult.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: string_mult_fail.pt"
echo "This test contains a declaration of two strings. Then another string variable is assigned to be the multiplication of the two strings.  This test will have an error #eTypeMismatch, as two strings cannot be multiplied "
echo "Contents of test file:"
cat string_mult_fail.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_mult_fail.pt" ./../lib/pt/semantic.def > ./fullTests/string_mult_fail_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_mult_fail.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: integer_mult.pt"
echo "This test contains a declaration of an integer. Then an integer variable is assigned to be the multiplication of the integer with another integer. This test will have no error. This is to show that the regular function of the sMultiply is not affected."
echo "Contents of test file:"
cat integer_mult.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt integer_mult.pt" ./../lib/pt/semantic.def > ./fullTests/integer_mult_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt integer_mult.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: string_substring.pt"
echo "This test contains a declaration of a string. Then another string variable is assigned to be the substring of the string variable with a string and two integer operands. This test should have no errors and emit the tSubstring Tcode"
echo "Contents of test file:"
cat string_substring.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_substring.pt" ./../lib/pt/semantic.def > ./fullTests/string_substring_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_substring.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"

echo "Test file: string_substring_fail.pt"
echo "This test contains a declaration of a string and a boolen. Then another string variable is assigned to be the substring of the string variable by being given a string, boolen and integer operand. This test will have an error #eTypeMismatch, as the operands to the substring operation have to be string, integer, integer. "
echo "Contents of test file:"
cat string_substring_fail.pt
echo "Full output of test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_substring_fail.pt" ./../lib/pt/semantic.def > ./fullTests/string_substring_fail_full_test.txt
echo ""
echo "Output of emitted t-code tokens for test case:"
ssltrace "ptc -o3 -t3 -L ./../lib/pt string_substring_fail.pt" ./../lib/pt/semantic.def -e
echo "
*******************************
"