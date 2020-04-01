The test files contain a small Qust programs that will be executed using ssltrace
by the script autorun.sh.The autorun.sh script explains the purpose of each test 
and the expected output. The ssltrace with the -e option to emit only the output t-code
will be output output by the autorun script to the console directly. Once the autorun file
is executed, a new directory will be created that will contain the full output of ssltrace
without any options, in order to provide a more comprehensive view of the tests. Each test
file will create a new file in the fullTest directory. The name of the output test file will
be <name of test file>_full_test.txt.

To run the autorun.sh script:
1. You may need to change the file permissions before execution. To do so, enter command
'chmod +x autorun.sh' in the testSuite directory.
2. To execute the script, enter command './autorun.sh' in the testSuite directory. You
may also save the output of the test suite to a file using command './autorun.sh > <filename>.txt'