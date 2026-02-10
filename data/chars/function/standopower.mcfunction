


#execute at @a[scores={char=19}] run summon skeleton ~ ~ ~ {Silent:1b,NoAI:1b,Health:1000f,Rotation:[0F,60F],Tags:["body"],CustomName:'{"text":"Lunatic"}',ArmorItems:[{id:'minecraft:leather_boots',Count:1b,tag:{display:{color:16743918}}},{id:'minecraft:leather_leggings',Count:1b,tag:{display:{color:7388469}}},{id:'minecraft:leather_chestplate',Count:1b,tag:{display:{color:3648361}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2075967975,179061098,-1884561182,1752039427],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTRkNzRlODExZGE2ZjJiZDllNmY5NmJlZmEzZGJmMTc0MTU3ZTM2MDI5OGNiMDExNmI2NWY2MjU3MDgyNzgifX19"}]}}}}],Attributes:[{Name:max_health,Base:1000}]}
#tp @e[tag=body] @a[scores={char=19},limit=1]
clear @a[scores={char=19}]
scoreboard players set @a[scores={char=19}] char 666

scoreboard players set @s spellCD1 0
scoreboard players set @s spellCD2 0
scoreboard players set @s spellCD3 0
clear @s minecraft:barrier


effect give @a[scores={char=666}] regeneration 1 6
effect give @a[scores={char=666}] speed 1 2
