The test files contain a single keyword or character that will be executed using ssltrace
by the script autorun.sh. The brevity of each test file is due to the fact that in the 
scanner/screener phase, we are only interested in seeing whether certain keywords or
characters will be screened to the correct token. Therefore, a single keyword or character
as a test file will suffice in this stage of testing. The autorun.sh script explains the 
purpose of each test and the expected output. 

To run the autorun.sh script:
1. You may need to change the file permissions before execution. To do so, enter command
'chmod +x autorun.sh' in the testSuite directory.
2. To execute the script, enter command './autorun.sh' in the testSuite directory. You
may also save the output of the test suite to a file using command './autorun.sh > <filename>.txt'