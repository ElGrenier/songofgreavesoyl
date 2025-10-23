kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:blue_stained_glass"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_pickaxe"}}]



#sacrifice

scoreboard players remove @a[scores={shaman_damage=1..}] shaman_damage 1

execute at @a[scores={universal_hit=1..,char=54},team=yellow] run scoreboard players set @p[distance=..5,team=purple] shaman_damage 100
execute at @a[scores={universal_hit=1..,char=54},team=purple] run scoreboard players set @p[distance=..5,team=yellow] shaman_damage 100
execute at @a[scores={universal_hit=1..,abysssigil=1..},team=yellow] if entity @a[scores={char=54},team=yellow] run scoreboard players set @p[distance=..5,team=purple] shaman_damage 100
execute at @a[scores={universal_hit=1..,abysssigil=1..},team=purple] if entity @a[scores={char=54},team=purple] run scoreboard players set @p[distance=..5,team=yellow] shaman_damage 100


execute at @a[scores={universal_death=1..,shaman_damage=1..}] run tag @a[scores={char=54}] add shamansacrifice
scoreboard players set @a[scores={universal_death=1..,shaman_damage=1..}] shaman_damage 0

execute at @a[tag=shamansacrifice,scores={char=54}] run playsound minecraft:entity.guardian.death master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @a[tag=shamansacrifice,scores={char=54}] run playsound minecraft:entity.player.splash.high_speed master @a[distance=..15] ~ ~ ~ 0.3 0.8 1
execute at @a[tag=shamansacrifice,scores={char=54}] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~0.2 ~ 6 0.2 6 1 300


execute at @a[tag=shamansacrifice,scores={char=54},team=yellow] at @a[distance=..10,team=purple] run particle minecraft:falling_dust{block_state:{Name:"minecraft:lapis_block"}} ~ ~ ~ 0.1 0.7 0.1 0.0001 50

execute at @a[tag=shamansacrifice,scores={char=54},team=yellow] run scoreboard players set @a[distance=..10,team=purple] CC_stun 20
execute at @a[tag=shamansacrifice,scores={char=54},team=yellow] run effect give @a[distance=..10,scores={abysssigil=0},team=yellow] minecraft:instant_health
execute at @a[tag=shamansacrifice,scores={char=54},team=yellow] run effect give @a[distance=..10,scores={abysssigil=1..},team=yellow] minecraft:instant_health 1 1

execute at @a[tag=shamansacrifice,scores={char=54},team=purple] at @a[distance=..10,team=yellow] run particle minecraft:falling_dust{block_state:{Name:"minecraft:lapis_block"}} ~ ~ ~ 0.1 0.7 0.1 0.0001 50

execute at @a[tag=shamansacrifice,scores={char=54},team=purple] run scoreboard players set @a[distance=..10,team=yellow] CC_stun 20
execute at @a[tag=shamansacrifice,scores={char=54},team=purple] run effect give @a[distance=..10,scores={abysssigil=0},team=purple] minecraft:instant_health
execute at @a[tag=shamansacrifice,scores={char=54},team=purple] run effect give @a[distance=..10,scores={abysssigil=1..},team=purple] minecraft:instant_health 1 1

execute at @a[tag=shamansacrifice,scores={char=54},team=yellow] at @a[distance=..10,team=purple] run summon minecraft:armor_stand ~ ~-0.5 ~ {Small:1b,Invisible:1b,Tags:["sacrifice_visuals"],Marker:1b,equipment:{head:{id:"minecraft:blue_stained_glass",count:1}}}
execute at @a[tag=shamansacrifice,scores={char=54},team=yellow] at @a[distance=..10,team=purple] run summon minecraft:armor_stand ~ ~-1 ~ {Small:1b,Invisible:1b,Tags:["sacrifice_visuals"],Marker:1b,equipment:{head:{id:"minecraft:blue_stained_glass",count:1}}}
execute at @a[tag=shamansacrifice,scores={char=54},team=yellow] at @a[distance=..10,team=purple] run summon minecraft:armor_stand ~ ~-1.5 ~ {Small:1b,Invisible:1b,Tags:["sacrifice_visuals"],Marker:1b,equipment:{head:{id:"minecraft:blue_stained_glass",count:1}}}
execute at @a[tag=shamansacrifice,scores={char=54},team=yellow] at @a[distance=..10,team=purple] run summon minecraft:armor_stand ~ ~-2 ~ {Small:1b,Invisible:1b,Tags:["sacrifice_visuals"],Marker:1b,equipment:{head:{id:"minecraft:blue_stained_glass",count:1}}}
execute at @a[tag=shamansacrifice,scores={char=54},team=yellow] at @a[distance=..10,team=purple] run summon minecraft:armor_stand ~ ~-2.5 ~ {Small:1b,Invisible:1b,Tags:["sacrifice_visuals"],Marker:1b,equipment:{head:{id:"minecraft:blue_stained_glass",count:1}}}

execute at @a[tag=shamansacrifice,scores={char=54},team=purple] at @a[distance=..10,team=yellow] run summon minecraft:armor_stand ~ ~-0.5 ~ {Small:1b,Invisible:1b,Tags:["sacrifice_visuals"],Marker:1b,equipment:{head:{id:"minecraft:blue_stained_glass",count:1}}}
execute at @a[tag=shamansacrifice,scores={char=54},team=purple] at @a[distance=..10,team=yellow] run summon minecraft:armor_stand ~ ~-1 ~ {Small:1b,Invisible:1b,Tags:["sacrifice_visuals"],Marker:1b,equipment:{head:{id:"minecraft:blue_stained_glass",count:1}}}
execute at @a[tag=shamansacrifice,scores={char=54},team=purple] at @a[distance=..10,team=yellow] run summon minecraft:armor_stand ~ ~-1.5 ~ {Small:1b,Invisible:1b,Tags:["sacrifice_visuals"],Marker:1b,equipment:{head:{id:"minecraft:blue_stained_glass",count:1}}}
execute at @a[tag=shamansacrifice,scores={char=54},team=purple] at @a[distance=..10,team=yellow] run summon minecraft:armor_stand ~ ~-2 ~ {Small:1b,Invisible:1b,Tags:["sacrifice_visuals"],Marker:1b,equipment:{head:{id:"minecraft:blue_stained_glass",count:1}}}
execute at @a[tag=shamansacrifice,scores={char=54},team=purple] at @a[distance=..10,team=yellow] run summon minecraft:armor_stand ~ ~-2.5 ~ {Small:1b,Invisible:1b,Tags:["sacrifice_visuals"],Marker:1b,equipment:{head:{id:"minecraft:blue_stained_glass",count:1}}}

execute as @e[tag=sacrifice_visuals] at @s run tp @s ~ ~ ~ facing entity @p[scores={char=54}]
execute as @e[tag=sacrifice_visuals] at @s run tp @s ~ ~0.2 ~
scoreboard players add @e[tag=sacrifice_visuals] shaman_damage 1
kill @e[tag=sacrifice_visuals,scores={shaman_damage=20..}]

tag @a[scores={char=54}] remove shamansacrifice

#breath of the deep

scoreboard players set @a[scores={char=54,spell_sham_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=54,spell_sham_1_1=1,CC_silence=1..}] spell_luna_1_1 120

execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=yellow] unless entity @a[distance=1..12,team=yellow] run scoreboard players set @a[scores={char=54,spell_sham_1_1=1,CC_silence=0}] spellCD1 20
execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=yellow] unless entity @a[distance=1..12,team=yellow] run scoreboard players set @a[scores={char=54,spell_sham_1_1=1,CC_silence=0}] spell_sham_1_1 140
execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=purple] unless entity @a[distance=1..12,team=purple] run scoreboard players set @a[scores={char=54,spell_sham_1_1=1,CC_silence=0}] spellCD1 20
execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=purple] unless entity @a[distance=1..12,team=purple] run scoreboard players set @a[scores={char=54,spell_sham_1_1=1,CC_silence=0}] spell_sham_1_1 140

execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=yellow] run tag @p[distance=1..10,team=yellow] add shaman_heal
execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=purple] run tag @p[distance=1..10,team=purple] add shaman_heal

#execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0}] run playsound entity.player.splash.high_speed master @a[distance=..15] ~ ~ ~ 1 2 1

#execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=yellow] run scoreboard players set @p[distance=1..10,team=yellow] regen 0
#execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=yellow] run effect give @p[distance=1..10,scores={abysssigil=1..},team=yellow] minecraft:instant_health
#execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=yellow] run scoreboard players set @p[distance=1..10,scores={abysssigil=0},team=yellow] abysssigil 100
#execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=yellow] at @p[distance=1..10,team=yellow] run particle minecraft:falling_dust{block_state:{Name:"minecraft:lapis_block"}} ~ ~0.5 ~ 0.5 0.8 0.5 1 20
#execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=yellow] at @p[distance=1..10,team=yellow] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~0.5 ~ 0.5 0.8 0.5 1 100
#execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=yellow] at @p[distance=1..10,team=yellow] run playsound minecraft:entity.player.splash.high_speed master @a[distance=..15] ~ ~ ~ 1 2 1
#execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=yellow] at @p[distance=1..10,team=yellow] run playsound minecraft:entity.guardian.ambient master @a[distance=..15] ~ ~ ~ 1 2 1
#execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=yellow] run effect give @p[distance=1..10,team=yellow] minecraft:regeneration 4 2
#execute as @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=yellow] at @s run tp @s ~ ~ ~ facing entity @p[distance=1..10,team=yellow]


#execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=purple] run scoreboard players set @p[distance=1..10,team=purple] regen 0
#execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=purple] run effect give @p[distance=1..10,scores={abysssigil=1..},team=purple] minecraft:instant_health
#execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=purple] run scoreboard players set @p[distance=1..10,scores={abysssigil=0},team=purple] abysssigil 100
#execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=purple] at @p[distance=1..10,team=purple] run particle minecraft:falling_dust{block_state:{Name:"minecraft:lapis_block"}} ~ ~0.5 ~ 0.5 0.8 0.5 1 20
#execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=purple] at @p[distance=1..10,team=purple] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~0.5 ~ 0.5 0.8 0.5 1 100
#execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=purple] at @p[distance=1..10,team=purple] run playsound minecraft:entity.player.splash.high_speed master @a[distance=..15] ~ ~ ~ 1 2 1
#execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=purple] at @p[distance=1..10,team=purple] run playsound minecraft:entity.guardian.ambient master @a[distance=..15] ~ ~ ~ 1 2 1
#execute at @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=purple] run effect give @p[distance=1..10,team=purple] minecraft:regeneration 4 2
#execute as @a[scores={char=54,spell_sham_1_1=1,CC_silence=0},team=purple] at @s run tp @s ~ ~ ~ facing entity @p[distance=1..10,team=purple]

scoreboard players set @p[tag=shaman_heal] regen 0
scoreboard players set @p[tag=shaman_heal] abysssigil 100
execute at @p[tag=shaman_heal] run particle minecraft:falling_dust{block_state:{Name:"minecraft:lapis_block"}} ~ ~0.5 ~ 0.5 0.8 0.5 1 20
execute at @p[tag=shaman_heal] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~0.5 ~ 0.5 0.8 0.5 1 100
execute at @p[tag=shaman_heal] run playsound minecraft:entity.player.splash.high_speed master @a[distance=..15] ~ ~ ~ 1 2 1
execute at @p[tag=shaman_heal] run playsound minecraft:entity.guardian.ambient master @a[distance=..15] ~ ~ ~ 1 2 1
effect give @p[tag=shaman_heal] minecraft:instant_health
effect give @p[tag=shaman_heal] minecraft:regeneration 4 2
execute as @a[scores={char=54,spell_sham_1_1=1,CC_silence=0}] at @s run tp @s ~ ~ ~ facing entity @p[tag=shaman_heal]

tag @a remove shaman_heal

#execute at @a[scores={abysssigil=1..}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:lapis_block"}} ~ ~0.2 ~ 0.5 0.2 0.5 0.1 2
scoreboard players remove @a[scores={abysssigil=1..}] abysssigil 1

#abyssal effigy

scoreboard players set @a[scores={char=54,spell_sham_2_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=54,spell_sham_2_1=1,CC_silence=1..}] spell_luna_1_1 480

execute at @a[scores={char=54,spell_sham_2_1=1,CC_silence=0}] run playsound minecraft:block.stone.place master @a[distance=..15] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=54,spell_sham_2_1=1,CC_silence=0}] run playsound minecraft:entity.elder_guardian.ambient master @a[distance=..15] ~ ~ ~ 0.3 2 1
execute at @a[scores={char=54,spell_sham_2_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["effigy"],active_effects:[{id:"minecraft:water_breathing",amplifier:1b,duration:19980}],equipment:{chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":12232374},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1413038341,884754513,-1528686373,1863512262],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTZmMmM1OTBlM2IwODU1MmMwZjU4YjRkMjVjZjFjYzIxMWY2ODRiMTBkYzNhY2UzYTM1YzI5NmU2MzJiYTAyNyJ9fX0="}]}},count:1}}}

execute at @e[tag=effigy] if entity @a[scores={char=54},team=yellow] run scoreboard players set @a[distance=..12,scores={universal_damagetaken=1..},team=purple] shaman_damage 100
execute at @e[tag=effigy] if entity @a[scores={char=54},team=yellow] run scoreboard players set @a[distance=..12,scores={universal_damagetaken=1..},team=purple] CC_defiled 40
execute at @e[tag=effigy] if entity @a[scores={char=54},team=yellow] run effect give @a[distance=..12,scores={universal_damagetaken=1..},team=purple] minecraft:slowness 2 2
execute at @e[tag=effigy] if entity @a[scores={char=54},team=yellow] at @a[distance=..12,scores={universal_damagetaken=1..},team=purple] run particle minecraft:block{block_state:{Name:"minecraft:dark_prismarine"}} ~ ~0.5 ~ 0.3 0.6 0.3 1 5

execute at @e[tag=effigy] if entity @a[scores={char=54},team=purple] run scoreboard players set @a[distance=..12,scores={universal_damagetaken=1..},team=yellow] shaman_damage 100
execute at @e[tag=effigy] if entity @a[scores={char=54},team=purple] run scoreboard players set @a[distance=..12,scores={universal_damagetaken=1..},team=yellow] CC_defiled 40
execute at @e[tag=effigy] if entity @a[scores={char=54},team=purple] run effect give @a[distance=..12,scores={universal_damagetaken=1..},team=yellow] minecraft:slowness 2 2
execute at @e[tag=effigy] if entity @a[scores={char=54},team=purple] at @a[distance=..12,scores={universal_damagetaken=1..},team=yellow] run particle minecraft:block{block_state:{Name:"minecraft:dark_prismarine"}} ~ ~0.5 ~ 0.3 0.6 0.3 1 5

execute at @a[scores={char=54,spell_sham_2_1=200}] at @e[tag=effigy] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~0.6 ~ 0.6 0.8 0.6 1 40
execute at @a[scores={char=54,spell_sham_2_1=200}] at @e[tag=effigy] run playsound minecraft:entity.player.splash.high_speed master @a[distance=..15] ~ ~ ~ 0.5 0.8 1
execute at @a[scores={char=54,spell_sham_2_1=200}] at @e[tag=effigy] run playsound minecraft:entity.elder_guardian.death master @a[distance=..15] ~ ~ ~ 1 2 1
execute at @a[scores={char=54,spell_sham_2_1=200}] run kill @e[tag=effigy]

execute as @e[tag=effigy] at @s run tp @s ~ ~ ~ ~2 ~
execute at @e[tag=effigy] run particle minecraft:bubble ~ ~ ~ 8 2 8 0.001 10
execute at @e[tag=effigy] run particle minecraft:falling_dust{block_state:{Name:"minecraft:lapis_block"}} ~ ~0.6 ~ 0.6 0.8 0.6 1 1
execute at @e[tag=effigy] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~0.6 ~ 0.5 0.8 0.5 1 1

# shaman

scoreboard players add @a[scores={spell_sham_1=1..}] spell_sham_1_1 1
item replace entity @a[scores={char=54,spell_sham_1_1=140..}] hotbar.1 with minecraft:blue_stained_glass[minecraft:custom_name={text:"Breath of the Deep",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_sham_1_1=141..}] spell_sham_1 0
scoreboard players set @a[scores={spell_sham_1_1=141..}] spell_sham_1_1 0
scoreboard players set @a[scores={spell_sham_1_1=1}] spellCD1 140

scoreboard players add @a[scores={spell_sham_2=1..}] spell_sham_2_1 1
item replace entity @a[scores={char=54,spell_sham_2_1=500..}] hotbar.2 with minecraft:player_head[minecraft:custom_name={text:"Abyssal Effigy",color:"dark_aqua",bold:1b},minecraft:profile={id:[I;1413038341,884754513,-1528686373,1863512262],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTZmMmM1OTBlM2IwODU1MmMwZjU4YjRkMjVjZjFjYzIxMWY2ODRiMTBkYzNhY2UzYTM1YzI5NmU2MzJiYTAyNyJ9fX0="}]}] 1
scoreboard players set @a[scores={spell_sham_2_1=501..}] spell_sham_2 0
scoreboard players set @a[scores={spell_sham_2_1=501..}] spell_sham_2_1 0
scoreboard players set @a[scores={spell_sham_2_1=1}] spellCD2 500

execute as @a[scores={char=54}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_pickaxe",Slot:0b}]}] run clear @a[scores={char=54}] minecraft:wooden_pickaxe
item replace entity @a[scores={char=54}] hotbar.0 with minecraft:wooden_pickaxe[minecraft:custom_name={bold:1b,color:"gray",text:"Rusted Hook"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=54,spell_sham_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:blue_stained_glass",Slot:1b}]}] run clear @a[scores={char=54}] minecraft:blue_stained_glass
item replace entity @a[scores={char=54,spell_sham_1=0}] hotbar.1 with minecraft:blue_stained_glass[minecraft:custom_name={text:"Breath of the Deep",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=54,spell_sham_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",Slot:2b}]}] run clear @a[scores={char=54}] minecraft:player_head
execute as @a[scores={char=54,spell_sham_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",Slot:2b}]}] run clear @a[scores={char=54}] minecraft:leather_boots
item replace entity @a[scores={char=54,spell_sham_2=0}] hotbar.2 with minecraft:player_head[minecraft:custom_name={text:"Abyssal Effigy",color:"dark_aqua",bold:1b},minecraft:profile={id:[I;1413038341,884754513,-1528686373,1863512262],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTZmMmM1OTBlM2IwODU1MmMwZjU4YjRkMjVjZjFjYzIxMWY2ODRiMTBkYzNhY2UzYTM1YzI5NmU2MzJiYTAyNyJ9fX0="}]}] 1