kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_pickaxe"}}]


#sacrifice

scoreboard players remove @a[scores={shaman_damage=1..}] shaman_damage 1

scoreboard players set @a[advancements={chars:shaman_breath=true}] shaman_damage 100
advancement revoke @a[advancements={chars:shaman_breath=true}] only chars:shaman_breath

execute at @a[scores={universal_death=1..,shaman_damage=1..}] run tag @a[scores={char=54}] add shamansacrifice
scoreboard players set @a[scores={universal_death=1..,shaman_damage=1..}] shaman_damage 0

execute at @a[tag=shamansacrifice,scores={char=54}] run playsound entity.guardian.death master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @a[tag=shamansacrifice,scores={char=54}] run playsound entity.player.splash.high_speed master @a[distance=..15] ~ ~ ~ 0.3 0.8 1
execute at @a[tag=shamansacrifice,scores={char=54}] run particle block{block_state:{Name:"minecraft:water"}} ~ ~0.2 ~ 6 0.2 6 1 300

execute at @a[tag=shamansacrifice,scores={char=54}] as @a[distance=..10,tag=valid_spell_target] if score @s Team = @p[scores={char=54}] Team at @s run particle falling_dust{block_state:{Name:"minecraft:lapis_block"}} ~ ~ ~ 0.1 0.7 0.1 0.0001 50

execute at @a[tag=shamansacrifice,scores={char=54}] as @a[distance=..10,tag=valid_spell_target] unless score @s Team = @p[scores={char=54}] Team run scoreboard players set @s CC_stun 20
execute at @a[tag=shamansacrifice,scores={char=54}] as @a[distance=..10,tag=valid_spell_target] if score @s Team = @p[scores={char=54}] Team run effect give @s instant_health

execute at @a[tag=shamansacrifice,scores={char=54}] as @e[distance=..10,tag=valid_spell_target] unless score @s Team = @p[scores={char=54}] Team at @s run summon item_display ~ ~-.5 ~ {Tags:["sacrifice_visuals","entities_shaman"],item: {count: 1, id: "minecraft:blue_stained_glass"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.0f, 0.0f]},teleport_duration:1}
execute at @a[tag=shamansacrifice,scores={char=54}] as @e[distance=..10,tag=valid_spell_target] unless score @s Team = @p[scores={char=54}] Team at @s run summon item_display ~ ~-1 ~ {Tags:["sacrifice_visuals","entities_shaman"],item: {count: 1, id: "minecraft:blue_stained_glass"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.0f, 0.0f]},teleport_duration:1}
execute at @a[tag=shamansacrifice,scores={char=54}] as @e[distance=..10,tag=valid_spell_target] unless score @s Team = @p[scores={char=54}] Team at @s run summon item_display ~ ~-1.5 ~ {Tags:["sacrifice_visuals","entities_shaman"],item: {count: 1, id: "minecraft:blue_stained_glass"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.0f, 0.0f]},teleport_duration:1}
execute at @a[tag=shamansacrifice,scores={char=54}] as @e[distance=..10,tag=valid_spell_target] unless score @s Team = @p[scores={char=54}] Team at @s run summon item_display ~ ~-2 ~ {Tags:["sacrifice_visuals","entities_shaman"],item: {count: 1, id: "minecraft:blue_stained_glass"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.0f, 0.0f]},teleport_duration:1}
execute at @a[tag=shamansacrifice,scores={char=54}] as @e[distance=..10,tag=valid_spell_target] unless score @s Team = @p[scores={char=54}] Team at @s run summon item_display ~ ~-2.5 ~ {Tags:["sacrifice_visuals","entities_shaman"],item: {count: 1, id: "minecraft:blue_stained_glass"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.0f, 0.0f]},teleport_duration:1}

execute as @e[tag=sacrifice_visuals] at @s run tp @s ~ ~ ~ facing entity @p[scores={char=54}]
execute as @e[tag=sacrifice_visuals] at @s run tp @s ~ ~0.25 ~ ~ 0
scoreboard players add @e[tag=sacrifice_visuals] shaman_damage 1
kill @e[tag=sacrifice_visuals,scores={shaman_damage=15..}]

tag @a[scores={char=54}] remove shamansacrifice

#breath of the deep

scoreboard players set @a[scores={char=54,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=54,s1_timer=1,CC_silence=1..}] s1_timer 120

execute at @a[scores={char=54}] as @a[distance=1..10] if score @s Team = @p[scores={char=54}] Team run tag @s add shaman_valid_breath_target
execute at @a[scores={char=54}] as @a[distance=10.1..] if score @s Team = @p[scores={char=54}] Team run tag @s remove shaman_valid_breath_target
execute at @a[scores={char=54}] as @a unless score @s Team = @p[scores={char=54}] Team run tag @s remove shaman_valid_breath_target

execute at @a[scores={char=54,s1_timer=1,CC_silence=0}] unless entity @a[distance=1..10,tag=shaman_valid_breath_target] run title @a[scores={char=54}] times 0 20 0
execute at @a[scores={char=54,s1_timer=1,CC_silence=0}] unless entity @a[distance=1..10,tag=shaman_valid_breath_target] run title @a[scores={char=54}] actionbar {text:"No allies within range",color:red,bold:1b}
execute at @a[scores={char=54,s1_timer=1,CC_silence=0}] unless entity @a[distance=1..10,tag=shaman_valid_breath_target] run scoreboard players set @a[scores={char=54}] spellCD1 20
execute at @a[scores={char=54,s1_timer=1,CC_silence=0}] unless entity @a[distance=1..10,tag=shaman_valid_breath_target] run scoreboard players set @a[scores={char=54}] s1_timer 120

execute at @a[scores={char=54,s1_timer=1,CC_silence=0}] as @p[distance=1..10,tag=shaman_valid_breath_target] run tag @s add shaman_heal

scoreboard players set @p[tag=shaman_heal] regen 0
scoreboard players set @p[tag=shaman_heal] abysssigil 100
execute at @p[tag=shaman_heal] run particle dust{color:[0.376,0.509,0.713],scale:1} ~ ~0.5 ~ 0.5 0.8 0.1 1 30
#execute at @p[tag=shaman_heal] run particle falling_dust{block_state:{Name:"minecraft:lapis_block"}} ~ ~0.5 ~ 0.5 0.8 0.5 1 20
execute at @p[tag=shaman_heal] run particle block{block_state:{Name:"minecraft:water"}} ~ ~0.5 ~ 0.5 0.8 0.5 1 100
execute at @p[tag=shaman_heal] run playsound entity.player.splash.high_speed master @a[distance=..15] ~ ~ ~ 1 2 1
execute at @p[tag=shaman_heal] run playsound entity.guardian.ambient master @a[distance=..15] ~ ~ ~ 0.5 2 1
effect give @p[tag=shaman_heal] instant_health
effect give @p[tag=shaman_heal] regeneration 4 2
execute as @a[scores={char=54,s1_timer=1,CC_silence=0}] at @s run tp @s ~ ~ ~ facing entity @p[tag=shaman_heal]

tag @a remove shaman_heal

#execute at @a[scores={abysssigil=1..}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:lapis_block"}} ~ ~0.2 ~ 0.5 0.2 0.5 0.1 2
scoreboard players remove @a[scores={abysssigil=1..}] abysssigil 1

#abyssal effigy

scoreboard players set @a[scores={char=54,s2_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=54,s2_timer=1,CC_silence=1..}] spell_luna_1_1 480

execute at @a[scores={char=54,s2_timer=1,CC_silence=0}] run playsound block.stone.place master @a[distance=..15] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=54,s2_timer=1,CC_silence=0}] run playsound entity.elder_guardian.ambient master @a[distance=..15] ~ ~ ~ 0.3 2 1
execute at @a[scores={char=54,s2_timer=1,CC_silence=0}] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["effigy","entities_shaman"],active_effects:[{id:"minecraft:water_breathing",amplifier:1b,duration:19980}],equipment:{chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":12232374},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1413038341,884754513,-1528686373,1863512262],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTZmMmM1OTBlM2IwODU1MmMwZjU4YjRkMjVjZjFjYzIxMWY2ODRiMTBkYzNhY2UzYTM1YzI5NmU2MzJiYTAyNyJ9fX0="}]}},count:1}}}
execute at @a[scores={char=54,s2_timer=1,CC_silence=0}] run summon block_display ~ ~ ~ {Tags:["effigy_base","entities_shaman"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,0f,-0.3f],scale:[0.6f,0.9f,0.6f]},block_state:{Name:"minecraft:basalt"}}

execute at @e[tag=effigy] as @a[distance=..12,scores={universal_damagetaken=1..}] unless score @s Team = @p[scores={char=54}] Team run tag @s add shaman_cursed
execute at @e[tag=effigy] as @a[distance=..12,scores={universal_damagetaken_shield=1..}] unless score @s Team = @p[scores={char=54}] Team run tag @s add shaman_cursed

execute as @e[tag=effigy] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=effigy] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=effigy_base] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=effigy_base] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

execute as @e[tag=effigy] at @s run particle dust{color:[0.376,0.509,0.713],scale:2} ^ ^ ^12 0.1 0.2 0.1 0 10
execute as @e[tag=effigy] at @s run particle dust{color:[0.376,0.509,0.713],scale:2} ^ ^ ^-12 0.1 0.2 0.1 0 10
execute as @e[tag=effigy] at @s run particle dust{color:[0.376,0.509,0.713],scale:2} ^12 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=effigy] at @s run particle dust{color:[0.376,0.509,0.713],scale:2} ^-12 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=effigy] at @s run particle dust{color:[0.376,0.509,0.713],scale:2} ^8.5 ^ ^8.5 0.1 0.2 0.1 0 10
execute as @e[tag=effigy] at @s run particle dust{color:[0.376,0.509,0.713],scale:2} ^-8.5 ^ ^-8.5 0.1 0.2 0.1 0 10
execute as @e[tag=effigy] at @s run particle dust{color:[0.376,0.509,0.713],scale:2} ^8.5 ^ ^-8.5 0.1 0.2 0.1 0 10
execute as @e[tag=effigy] at @s run particle dust{color:[0.376,0.509,0.713],scale:2} ^-8.5 ^ ^8.5 0.1 0.2 0.1 0 10

scoreboard players set @a[tag=shaman_cursed] shaman_damage 100
scoreboard players set @a[tag=shaman_cursed] CC_defiled 40
effect give @a[tag=shaman_cursed] slowness 2 2
execute at @a[tag=shaman_cursed] run particle block{block_state:{Name:"minecraft:dark_prismarine"}} ~ ~0.5 ~ 0.3 0.6 0.3 1 5

tag @a remove shaman_cursed

execute at @a[scores={char=54,s2_timer=200}] at @e[tag=effigy] run particle block{block_state:{Name:"minecraft:water"}} ~ ~0.6 ~ 0.6 0.8 0.6 1 40
execute at @a[scores={char=54,s2_timer=200}] at @e[tag=effigy] run playsound entity.player.splash.high_speed master @a[distance=..15] ~ ~ ~ 0.5 0.8 1
execute at @a[scores={char=54,s2_timer=200}] at @e[tag=effigy] run playsound entity.elder_guardian.death master @a[distance=..15] ~ ~ ~ 1 2 1
execute at @a[scores={char=54,s2_timer=200}] run kill @e[tag=effigy]
execute at @a[scores={char=54,s2_timer=200}] run kill @e[tag=effigy_base]

execute as @e[tag=effigy] at @s run tp @s ~ ~ ~ ~2 ~
execute at @e[tag=effigy] run particle bubble ~ ~ ~ 8 2 8 0.001 10
execute at @e[tag=effigy] run particle falling_dust{block_state:{Name:"minecraft:lapis_block"}} ~ ~0.6 ~ 0.6 0.8 0.6 1 1
execute at @e[tag=effigy] run particle block{block_state:{Name:"minecraft:water"}} ~ ~0.6 ~ 0.5 0.8 0.5 1 1

# shaman

scoreboard players set @a[scores={char=54}] MaxHP 24

scoreboard players set @a[scores={s1_timer=1,char=54}] spellCD1 140
scoreboard players add @a[scores={s1_timer=1..,char=54}] s1_timer 1
scoreboard players set @a[scores={s1_timer=141..,char=54}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=54}] spellCD2 500
scoreboard players add @a[scores={s2_timer=1..,char=54}] s2_timer 1
scoreboard players set @a[scores={s2_timer=501..,char=54}] s2_timer 0

execute as @a[scores={char=54}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_pickaxe",Slot:0b}]}] run clear @a[scores={char=54}] wooden_pickaxe
item replace entity @a[scores={char=54}] hotbar.0 with minecraft:wooden_pickaxe[minecraft:custom_name={bold:1b,color:"gray",text:"Rusted Hook"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}],custom_data={shaman:1}] 1

execute as @a[scores={char=54,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=54}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=54,s1_timer=0}] hotbar.1 with carrot_on_a_stick[minecraft:custom_name={text:"Breath of the Deep",color:"dark_aqua",bold:1b},item_model="blue_stained_glass",custom_data={s1:1}]

execute as @a[scores={char=54,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=54}] minecraft:warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=54,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[minecraft:custom_name={text:"Abyssal Effigy",color:"dark_aqua",bold:1b},item_model="player_head",custom_data={s2:1},minecraft:profile={id:[I;1413038341,884754513,-1528686373,1863512262],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTZmMmM1OTBlM2IwODU1MmMwZjU4YjRkMjVjZjFjYzIxMWY2ODRiMTBkYzNhY2UzYTM1YzI5NmU2MzJiYTAyNyJ9fX0="}]}] 1