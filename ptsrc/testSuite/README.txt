The test files contain a small Qust programs that will be executed using ssltrace
by the script autorun.sh. There is no need to check that old PT Pascal keywords 
no longer emit parser output tokens because we already tested that they will never 
emit a parser input token in phase 1. However, we still need to check that the parser 
will output correct tokens for the old and new syntax tokens.
The autorun.sh script explains the purpose of each test and the expected output. 

To run the autorun.sh script:
1. You may need to change the file permissions before execution. To do so, enter command
'chmod +x autorun.sh' in the testSuite directory.
2. To execute the script, enter command './autorun.sh' in the testSuite directory. You
may also save the output of the test suite to a file using command './autorun.sh > <filename>.txt'