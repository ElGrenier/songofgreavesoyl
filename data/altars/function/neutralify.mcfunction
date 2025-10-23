scoreboard players set @s Team 0
scoreboard players set @s Typo 0
scoreboard players set @s Assault 0
clone 174 4 -150 178 8 -146 ~-2 ~-1 ~-2
execute at @s run function messages:altars_neutralify
scoreboard players add @a[distance=..3] StatNeutralified 1
