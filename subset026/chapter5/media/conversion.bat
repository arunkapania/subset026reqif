@echo off
echo Starting media conversion. Please stand by.

REM Step1: Convert files
convert.exe TODO_FIND_A_NAME-5_9_7[2]_[f]6_I.wmf -resize 642x669^! TODO_FIND_A_NAME-5_9_7[2]_[f]6_I.png
convert.exe TODO_FIND_A_NAME-5_7_5[2]_[f]3_I.wmf -resize 642x683^! TODO_FIND_A_NAME-5_7_5[2]_[f]3_I.png
convert.exe TODO_FIND_A_NAME-5_4_4_1[2]_[f]1_I.emf -resize 627x842^! TODO_FIND_A_NAME-5_4_4_1[2]_[f]1_I.png
convert.exe TODO_FIND_A_NAME-5_19_2_5[2]_[f]22_I.wmf -resize 508x259^! TODO_FIND_A_NAME-5_19_2_5[2]_[f]22_I.png
convert.exe TODO_FIND_A_NAME-5_19_3_6[2]_[f]23_I.wmf -resize 562x360^! TODO_FIND_A_NAME-5_19_3_6[2]_[f]23_I.png
convert.exe TODO_FIND_A_NAME-5_6_3_1[2]_[f]2_I.emf -resize 571x660^! TODO_FIND_A_NAME-5_6_3_1[2]_[f]2_I.png
convert.exe TODO_FIND_A_NAME-5_17_3_1[2]_[f]12_I.emf -resize 613x868^! TODO_FIND_A_NAME-5_17_3_1[2]_[f]12_I.png
convert.exe TODO_FIND_A_NAME-5_16_3_2[2]_[f]11_I.wmf -resize 562x360^! TODO_FIND_A_NAME-5_16_3_2[2]_[f]11_I.png
convert.exe TODO_FIND_A_NAME-5_16_2_1[2]_[f]10_I.wmf -resize 562x360^! TODO_FIND_A_NAME-5_16_2_1[2]_[f]10_I.png
convert.exe TODO_FIND_A_NAME-5_19_7[2]_[f]24_I.wmf -resize 642x669^! TODO_FIND_A_NAME-5_19_7[2]_[f]24_I.png
convert.exe TODO_FIND_A_NAME-5_15_2_2_3_1_b[2]_[f]9_I.wmf -resize 569x332^! TODO_FIND_A_NAME-5_15_2_2_3_1_b[2]_[f]9_I.png
convert.exe TODO_FIND_A_NAME-5_9_3_6[2]_[f]5_I.wmf -resize 562x360^! TODO_FIND_A_NAME-5_9_3_6[2]_[f]5_I.png
convert.exe TODO_FIND_A_NAME-5_10_1_4_1[2]_[f]7_I.wmf -resize 529x177^! TODO_FIND_A_NAME-5_10_1_4_1[2]_[f]7_I.png
convert.exe TODO_FIND_A_NAME-5_9_2_5[2]_[f]4_I.wmf -resize 508x243^! TODO_FIND_A_NAME-5_9_2_5[2]_[f]4_I.png
convert.exe TODO_FIND_A_NAME-5_11_3_1[2]_[f]8_I.emf -resize 615x871^! TODO_FIND_A_NAME-5_11_3_1[2]_[f]8_I.png

REM Step 2: Delete all input files
del TODO_FIND_A_NAME-5_9_7[2]_[f]6_I.wmf
del TODO_FIND_A_NAME-5_7_5[2]_[f]3_I.wmf
del TODO_FIND_A_NAME-5_4_4_1[2]_[f]1_I.emf
del TODO_FIND_A_NAME-5_19_2_5[2]_[f]22_I.wmf
del TODO_FIND_A_NAME-5_19_3_6[2]_[f]23_I.wmf
del TODO_FIND_A_NAME-5_6_3_1[2]_[f]2_I.emf
del TODO_FIND_A_NAME-5_17_3_1[2]_[f]12_I.emf
del TODO_FIND_A_NAME-5_16_3_2[2]_[f]11_I.wmf
del TODO_FIND_A_NAME-5_16_2_1[2]_[f]10_I.wmf
del TODO_FIND_A_NAME-5_19_7[2]_[f]24_I.wmf
del TODO_FIND_A_NAME-5_15_2_2_3_1_b[2]_[f]9_I.wmf
del TODO_FIND_A_NAME-5_9_3_6[2]_[f]5_I.wmf
del TODO_FIND_A_NAME-5_10_1_4_1[2]_[f]7_I.wmf
del TODO_FIND_A_NAME-5_9_2_5[2]_[f]4_I.wmf
del TODO_FIND_A_NAME-5_11_3_1[2]_[f]8_I.emf
echo DONE!
