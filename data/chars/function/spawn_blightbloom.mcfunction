summon minecraft:marker ~ ~ ~ {Tags:["blightbloom_seed"]}
execute store result entity @e[type=minecraft:marker,tag=blightbloom_seed,limit=1] Pos[0] double 1 run data get entity @s LastDeathLocation.pos[0]
execute store result entity @e[type=minecraft:marker,tag=blightbloom_seed,limit=1] Pos[1] double 1 run data get entity @s LastDeathLocation.pos[1]
execute store result entity @e[type=minecraft:marker,tag=blightbloom_seed,limit=1] Pos[2] double 1 run data get entity @s LastDeathLocation.pos[2]
execute at @e[tag=blightbloom_seed,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["blightbloom_flower"],equipment:{head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-1024195144,1726172889,-2009291185,-1756937064],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDMzMTFjZTQ4MDdlZmNmMzk5Mjk5ZmFkYzk1ZjMyYjQzOGY1MTBjOThlZmRmNjM5Y2U5MTdmMjdlYjVlMDg0OSJ9fX0="}]}},count:1}}}
kill @e[type=minecraft:marker,tag=blightbloom_seed,limit=1]
#say bloom