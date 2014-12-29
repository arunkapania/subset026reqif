@echo off
echo Starting media conversion. Please stand by.

REM Step1: Convert files
convert.exe TODO_FIND_A_NAME-4_8_1_6[2]_[f]3_I.wmf -resize 606x848^! TODO_FIND_A_NAME-4_8_1_6[2]_[f]3_I.png

REM Step 2: Delete all input files
del TODO_FIND_A_NAME-4_8_1_6[2]_[f]3_I.wmf
echo DONE!
