@echo off
echo Starting media conversion. Please stand by.

REM Step1: Convert files
convert.exe TODO_FIND_A_NAME-2_6_3_1_6[2]_[f][2]_I.wmf -resize 490x249^! TODO_FIND_A_NAME-2_6_3_1_6[2]_[f][2]_I.png
convert.exe TODO_FIND_A_NAME-2_6_5_1_11[2]_[f][4]_I.wmf -resize 534x366^! TODO_FIND_A_NAME-2_6_5_1_11[2]_[f][4]_I.png
convert.exe TODO_FIND_A_NAME-2_6_5_1_11[3]_[f][5]_I.wmf -resize 560x373^! TODO_FIND_A_NAME-2_6_5_1_11[3]_[f][5]_I.png
convert.exe TODO_FIND_A_NAME-2_6_4_1_11[2]_[f][3]_I.wmf -resize 555x366^! TODO_FIND_A_NAME-2_6_4_1_11[2]_[f][3]_I.png
convert.exe TODO_FIND_A_NAME-2_6_6_1_7[2]_[f][6]_I.wmf -resize 544x376^! TODO_FIND_A_NAME-2_6_6_1_7[2]_[f][6]_I.png
convert.exe TODO_FIND_A_NAME-2_6_7_1_7[2]_[f][7]_I.wmf -resize 544x376^! TODO_FIND_A_NAME-2_6_7_1_7[2]_[f][7]_I.png
convert.exe TODO_FIND_A_NAME-2_5_3[2]_[f][1]_I.emf -resize 642x808^! TODO_FIND_A_NAME-2_5_3[2]_[f][1]_I.png

REM Step 2: Delete all input files
del TODO_FIND_A_NAME-2_6_3_1_6[2]_[f][2]_I.wmf
del TODO_FIND_A_NAME-2_6_5_1_11[2]_[f][4]_I.wmf
del TODO_FIND_A_NAME-2_6_5_1_11[3]_[f][5]_I.wmf
del TODO_FIND_A_NAME-2_6_4_1_11[2]_[f][3]_I.wmf
del TODO_FIND_A_NAME-2_6_6_1_7[2]_[f][6]_I.wmf
del TODO_FIND_A_NAME-2_6_7_1_7[2]_[f][7]_I.wmf
del TODO_FIND_A_NAME-2_5_3[2]_[f][1]_I.emf
echo DONE!
