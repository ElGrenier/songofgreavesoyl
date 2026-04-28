
execute as @a if entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] run scoreboard players set @s resistance 20
execute as @a if entity @s[nbt={active_effects:[{id:"minecraft:resistance",amplifier:1b}]}] run scoreboard players set @s resistance 40
execute as @a if entity @s[nbt={active_effects:[{id:"minecraft:resistance",amplifier:2b}]}] run scoreboard players set @s resistance 60
execute as @a if entity @s[nbt={active_effects:[{id:"minecraft:resistance",amplifier:3b}]}] run scoreboard players set @s resistance 80
execute as @a if entity @s[nbt={active_effects:[{id:"minecraft:resistance",amplifier:4b}]}] run scoreboard players set @s resistance 100

execute store result score @s MaxHP run attribute @s max_health get
execute store result score @s trueHP run data get entity @s Health
execute if score @s trueHP matches ..0 run scoreboard players set @s trueHP 1
execute store result storage core:main/hp_display temp1 int 1 run scoreboard players get @s trueHP
execute store result score @s ABS run data get entity @s AbsorptionAmount
execute store result storage core:main/hp_display temp2 int 1 run scoreboard players get @s ABS
execute store result storage core:main/hp_display temp3 int 1 run scoreboard players get @s MaxHP
execute store result storage core:main/hp_display temp4 int 1 run scoreboard players get @s resistance
function core:main/hp_display2 with storage core:main/hp_display