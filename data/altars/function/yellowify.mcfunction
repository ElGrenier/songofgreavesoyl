scoreboard players set @s Typo -1
scoreboard players set @s Assault 0
clone 183 4 -150 187 8 -146 ~-2 ~-1 ~-2
execute at @s run function messages:altars_yellowify
scoreboard players add @a[distance=..3,team=yellow] StatCaptured 1

scoreboard players add .yellow score 10