@ECHO OFF
start cmd /k "mysqldiff.exe --force --difftype=sql --server1=root@localhost --server2=root@localhost testdiff:test > test.txt"
PAUSE