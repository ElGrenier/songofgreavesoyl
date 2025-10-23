scoreboard players set @a[distance=..4] Queue 0
#scoreboard players set @a[distance=..4,tag=!PracticeCharPick] Queue 0

team join yellow @r[distance=..4]
execute as @a[distance=..4,team=yellow] run function messages:lobby_before_char
tp @a[distance=..4,team=yellow] 287.50 15.00 -126.5

team join purple @r[distance=..4]
execute as @a[distance=..4,team=purple] run function messages:lobby_before_char
tp @a[distance=..4,team=purple] 287.50 15.00 -126.5

# 242.48 14.00 -125.51
# /tp 287.50 15.00 -126.5