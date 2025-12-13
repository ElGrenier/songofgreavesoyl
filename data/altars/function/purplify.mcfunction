scoreboard players set @s Typo 1
scoreboard players set @s Assault 0
clone 192 4 -150 196 8 -146 ~-2 ~-1 ~-2
execute at @s run function messages:altars_purplify
scoreboard players add @a[distance=..3,team=purple] StatCaptured 1

scoreboard players add purple temp_score 10