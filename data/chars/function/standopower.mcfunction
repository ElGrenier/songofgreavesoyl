


#execute at @a[scores={char=19}] run summon skeleton ~ ~ ~ {Silent:1b,NoAI:1b,Health:1000f,Rotation:[0F,60F],Tags:["body"],CustomName:'{"text":"Lunatic"}',ArmorItems:[{id:'minecraft:leather_boots',Count:1b,tag:{display:{color:16743918}}},{id:'minecraft:leather_leggings',Count:1b,tag:{display:{color:7388469}}},{id:'minecraft:leather_chestplate',Count:1b,tag:{display:{color:3648361}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2075967975,179061098,-1884561182,1752039427],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTRkNzRlODExZGE2ZjJiZDllNmY5NmJlZmEzZGJmMTc0MTU3ZTM2MDI5OGNiMDExNmI2NWY2MjU3MDgyNzgifX19"}]}}}}],Attributes:[{Name:max_health,Base:1000}]}
#tp @e[tag=body] @a[scores={char=19},limit=1]
clear @a[scores={char=19}]
scoreboard players set @a[scores={char=19}] char 666



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

function chars:666demon
item replace entity @s hotbar.4 with minecraft:enchanted_book[minecraft:custom_name={text:"Kit Description",color:"dark_green",bold:1b},minecraft:lore=[{text:"Drop this for detailed",color:"green"},{text:"description of your",color:"green"},{text:"character's spells",color:"green"}]] 1
item replace entity @s hotbar.6 with minecraft:white_banner[minecraft:custom_name={text:"Surrender",color:"white",bold:1b},minecraft:lore=[{text:"Surrender vote must be unanimous",color:"gray"}]] 1

effect give @a[scores={char=666}] minecraft:instant_health 1 3
effect give @a[scores={char=666}] minecraft:speed 1 2
