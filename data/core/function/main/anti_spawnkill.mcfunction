execute as @e[tag=SpawnPurple] at @s run effect give @a[distance=..3,team=yellow] minecraft:instant_damage 1 0 true
execute as @e[tag=SpawnYellow] at @s run effect give @a[distance=..3,team=purple] minecraft:instant_damage 1 0 true

execute as @e[tag=SpawnPurple] at @s run effect give @a[distance=..3,team=purple] minecraft:resistance 2 100 true
execute as @e[tag=SpawnYellow] at @s run effect give @a[distance=..3,team=yellow] minecraft:resistance 2 100 true

execute as @e[tag=SpawnPurple] at @s run kill @e[type=minecraft:item,distance=..5,nbt={Item:{id:"minecraft:tnt"}}]
execute as @e[tag=SpawnYellow] at @s run kill @e[type=minecraft:item,distance=..5,nbt={Item:{id:"minecraft:tnt"}}]
