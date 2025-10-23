
clear @a[scores={char=666}]
scoreboard players set @a[scores={char=666}] char 19

scoreboard players set @a despair 0
effect give @a[scores={char=19}] minecraft:instant_health 1 1



scoreboard players set @s spell_luna_1 0
scoreboard players set @s spell_luna_1_1 0
scoreboard players set @s spell_luna_2 0
scoreboard players set @s spell_luna_2_1 0

scoreboard players set @s spell_demo_1 0
scoreboard players set @s spell_demo_1_1 0
scoreboard players set @s spell_demo_2 0
scoreboard players set @s spell_demo_2_1 0

scoreboard players set @s spellCD1 0
scoreboard players set @s spellCD2 0
scoreboard players set @s spellCD3 0
clear @s minecraft:barrier

function chars:19lunatic
item replace entity @s hotbar.4 with minecraft:enchanted_book[minecraft:custom_name={text:"Kit Description",color:"dark_green",bold:1b},minecraft:lore=[{text:"Drop this for detailed",color:"green"},{text:"description of your",color:"green"},{text:"character's spells",color:"green"}]] 1
item replace entity @s hotbar.6 with minecraft:white_banner[minecraft:custom_name={text:"Surrender",color:"white",bold:1b},minecraft:lore=[{text:"Surrender vote must be unanimous",color:"gray"}]] 1
