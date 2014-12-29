@echo off
echo Starting media conversion. Please stand by.

REM Step1: Convert files
convert.exe TODO_FIND_A_NAME-8_3_2_3[2]_[f]1_I.wmf -resize 374x379^! TODO_FIND_A_NAME-8_3_2_3[2]_[f]1_I.png

REM Step 2: Delete all input files
del TODO_FIND_A_NAME-8_3_2_3[2]_[f]1_I.wmf
echo DONE!
