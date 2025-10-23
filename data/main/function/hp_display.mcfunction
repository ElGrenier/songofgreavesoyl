execute store result score @s trueHP run data get entity @s Health
execute if score @s trueHP matches ..0 run scoreboard players set @s trueHP 1
execute store result storage main:hp_display temp1 int 1 run scoreboard players get @s trueHP
execute store result score @s ABS run data get entity @s AbsorptionAmount
execute store result storage main:hp_display temp2 int 1 run scoreboard players get @s ABS
function main:hp_display2 with storage main:hp_display