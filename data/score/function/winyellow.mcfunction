scoreboard players set @a[scores={Team=-1}] Winner 1
execute if entity @a[scores={Team=-1,Winning=1}] run say Yellow team won
clear @a minecraft:white_banner
clear @a minecraft:red_banner
#playsound minecraft:item.goat_horn.sound.1 master @a ~ ~ ~ 1 1 1