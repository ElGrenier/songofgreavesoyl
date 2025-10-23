scoreboard players set @r[distance=..15,scores={char=0},team=yellow] Queue 1
scoreboard players set @r[distance=..15,scores={char=0},team=purple] Queue 1
execute as @a[scores={Queue=1..}] run function messages:lobby_char_select
tp @a[scores={Queue=1..}] 242.48 14.00 -125.51
