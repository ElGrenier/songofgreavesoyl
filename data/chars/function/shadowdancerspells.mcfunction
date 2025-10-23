kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:black_wool"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:music_disc_stal"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_shovel"}}]


#umbra

#summon skeleton ~ ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["umbra_cleave","umbra"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4340289}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:4340289}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4340289}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;471355576,-2144645552,-2071773487,1626073258],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjdiM2ZhZDZkODEwMjYxM2Q4ODQ0MTMwOTZhNGNlYTQyNjQzMGYxZGFkZGNiYTI5ZWRkNGE0ZTM5NjM3ZDQ0MiJ9fX0="}]}}}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:19999980,ShowParticles:0b},{Id:15,Amplifier:1b,Duration:19999980,ShowParticles:1b}]}

execute at @e[tag=umbra] run particle minecraft:falling_dust{block_state:{Name:"minecraft:black_wool"}} ~ ~1.5 ~ 0.4 0.6 0.4 0.001 5


#Adumbrate

scoreboard players set @a[scores={char=55,spell_shad_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=55,spell_shad_1_1=1,CC_silence=1..}] spell_shad_1_1 120


execute at @e[tag=umbra_cleave] unless entity @e[tag=gaiveslash_umbra_visual_core] run summon minecraft:marker ~ ~ ~ {Tags:["gaiveslash_umbra_visual_core"]}
execute at @e[tag=umbra_cleave] unless entity @e[tag=gaiveslash_umbra_visual_1] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["gaiveslash_umbra_visual_1","glavie_umbra_visuals"],Pose:{LeftArm:[130.0f,0.0f,90.0f]}}
execute at @e[tag=umbra_cleave] unless entity @e[tag=gaiveslash_umbra_visual_2] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["gaiveslash_umbra_visual_2","glavie_umbra_visuals"],Pose:{LeftArm:[130.0f,0.0f,90.0f]}}

execute at @a[scores={char=55}] unless entity @e[tag=gaiveslash_visual_core] run summon minecraft:marker ~ ~ ~ {Tags:["gaiveslash_visual_core"]}
execute at @a[scores={char=55}] unless entity @e[tag=gaiveslash_visual_1] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["gaiveslash_visual_1","glavie_visuals"],Pose:{LeftArm:[130.0f,0.0f,90.0f]}}
execute at @a[scores={char=55}] unless entity @e[tag=gaiveslash_visual_2] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["gaiveslash_visual_2","glavie_visuals"],Pose:{LeftArm:[130.0f,0.0f,90.0f]}}

execute as @a[scores={char=55}] at @s run tp @e[tag=gaiveslash_visual_core] ~ ~ ~
execute as @e[tag=gaiveslash_visual_core] at @s run tp @s ~ ~ ~ ~30 0
execute as @e[tag=gaiveslash_visual_core] at @s run tp @e[tag=gaiveslash_visual_1] ^-0.3 ^ ^1.5
execute as @e[tag=gaiveslash_visual_core] at @s run tp @e[tag=gaiveslash_visual_2] ^-0.3 ^ ^-1.5
execute as @e[tag=gaiveslash_visual_1] at @s run tp @s ~ ~ ~ facing entity @e[tag=gaiveslash_visual_core,limit=1]
execute as @e[tag=gaiveslash_visual_2] at @s run tp @s ~ ~ ~ facing entity @e[tag=gaiveslash_visual_core,limit=1]

execute as @e[tag=umbra_cleave] at @s run tp @e[tag=gaiveslash_umbra_visual_core] ~ ~ ~
execute as @e[tag=gaiveslash_umbra_visual_core] at @s run tp @s ~ ~ ~ ~30 0
execute as @e[tag=gaiveslash_umbra_visual_core] at @s run tp @e[tag=gaiveslash_umbra_visual_1] ^-0.3 ^ ^2
execute as @e[tag=gaiveslash_umbra_visual_core] at @s run tp @e[tag=gaiveslash_umbra_visual_2] ^-0.3 ^ ^-2
execute as @e[tag=gaiveslash_umbra_visual_1] at @s run tp @s ~ ~ ~ facing entity @e[tag=gaiveslash_umbra_visual_core,limit=1]
execute as @e[tag=gaiveslash_umbra_visual_2] at @s run tp @s ~ ~ ~ facing entity @e[tag=gaiveslash_umbra_visual_core,limit=1]



execute at @a[scores={char=55,spell_shad_1_1=2}] run summon minecraft:skeleton ~ ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["umbra_cleave","umbra"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:19999980,show_particles:0b},{id:"minecraft:blindness",amplifier:1b,duration:19999980}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":4340289,"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:silence"}},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":4340289},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":4340289,"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:bolt"}},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;471355576,-2144645552,-2071773487,1626073258],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjdiM2ZhZDZkODEwMjYxM2Q4ODQ0MTMwOTZhNGNlYTQyNjQzMGYxZGFkZGNiYTI5ZWRkNGE0ZTM5NjM3ZDQ0MiJ9fX0="}]}},count:1}}}
tp @e[tag=umbra_cleave,limit=1] @a[scores={char=55,spell_shad_1_1=2},limit=1]

execute at @a[scores={char=55,spell_shad_1_1=1..5,CC_silence=0}] run data merge entity @e[type=minecraft:armor_stand,tag=gaiveslash_visual_1,limit=1] {equipment:{offhand:{id:"minecraft:netherite_shovel",count:1}}}
execute at @a[scores={char=55,spell_shad_1_1=1..5,CC_silence=0}] run data merge entity @e[type=minecraft:armor_stand,tag=gaiveslash_visual_2,limit=1] {equipment:{offhand:{id:"minecraft:netherite_shovel",count:1}}}
execute at @a[scores={char=55,spell_shad_1_1=2,CC_silence=0}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=55,spell_shad_1_1=5,CC_silence=0}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 1.1 1
execute at @a[scores={char=55,spell_shad_1_1=10..11}] run data merge entity @e[type=minecraft:armor_stand,tag=gaiveslash_visual_1,limit=1] {equipment:{offhand:{id:"minecraft:air",count:1}}}
execute at @a[scores={char=55,spell_shad_1_1=10..11}] run data merge entity @e[type=minecraft:armor_stand,tag=gaiveslash_visual_2,limit=1] {equipment:{offhand:{id:"minecraft:air",count:1}}}
execute at @a[scores={char=55,spell_shad_1_1=1..11,CC_silence=0}] at @e[tag=glavie_visuals] run particle minecraft:sweep_attack ~ ~0.5 ~ 1 0.5 1 0.001 1 force
execute at @a[scores={char=55,spell_shad_1_1=1..10,CC_silence=0},team=yellow] run scoreboard players set @a[distance=..3,scores={shadowdash_damage_2=0},team=purple] shadowdash_damage_2 1
execute at @a[scores={char=55,spell_shad_1_1=1..10,CC_silence=0},team=purple] run scoreboard players set @a[distance=..3,scores={shadowdash_damage_2=0},team=yellow] shadowdash_damage_2 1
execute at @a[scores={char=55,spell_shad_1_1=1..10,CC_silence=0},team=yellow] run effect give @a[distance=..3,team=purple] minecraft:slowness 2 1
execute at @a[scores={char=55,spell_shad_1_1=1..10,CC_silence=0},team=purple] run effect give @a[distance=..3,team=yellow] minecraft:slowness 2 1



execute at @a[scores={char=55,spell_shad_1_1=31..35,CC_silence=0}] run data merge entity @e[type=minecraft:armor_stand,tag=gaiveslash_umbra_visual_1,limit=1] {equipment:{offhand:{id:"minecraft:netherite_shovel",count:1}}}
execute at @a[scores={char=55,spell_shad_1_1=31..35,CC_silence=0}] run data merge entity @e[type=minecraft:armor_stand,tag=gaiveslash_umbra_visual_2,limit=1] {equipment:{offhand:{id:"minecraft:netherite_shovel",count:1}}}
execute at @a[scores={char=55,spell_shad_1_1=32,CC_silence=0}] at @e[tag=umbra_cleave] run playsound minecraft:entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=55,spell_shad_1_1=35,CC_silence=0}] at @e[tag=umbra_cleave] run playsound minecraft:entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 0.7 1
execute at @a[scores={char=55,spell_shad_1_1=35,CC_silence=0}] at @e[tag=umbra_cleave] run playsound minecraft:entity.phantom.death master @a[distance=..12] ~ ~ ~ 1 1.2 1

execute at @a[scores={char=55,spell_shad_1_1=31..40,CC_silence=0},team=yellow] at @e[tag=umbra_cleave] run effect give @a[distance=..3,team=purple] minecraft:blindness 2
execute at @a[scores={char=55,spell_shad_1_1=31..40,CC_silence=0},team=purple] at @e[tag=umbra_cleave] run effect give @a[distance=..3,team=yellow] minecraft:blindness 2
execute at @a[scores={char=55,spell_shad_1_1=31..40,CC_silence=0},team=yellow] at @e[tag=umbra_cleave] run effect give @a[distance=..3,team=purple] minecraft:slowness 2 1
execute at @a[scores={char=55,spell_shad_1_1=31..40,CC_silence=0},team=purple] at @e[tag=umbra_cleave] run effect give @a[distance=..3,team=yellow] minecraft:slowness 2 1
execute at @a[scores={char=55,spell_shad_1_1=31..40,CC_silence=0},team=yellow] at @e[tag=umbra_cleave] run scoreboard players set @a[distance=..3,scores={shadowdash_damage_2=0},team=purple] shadowdash_damage_2 1
execute at @a[scores={char=55,spell_shad_1_1=31..40,CC_silence=0},team=purple] at @e[tag=umbra_cleave] run scoreboard players set @a[distance=..3,scores={shadowdash_damage_2=0},team=yellow] shadowdash_damage_2 1

execute at @a[scores={char=55,spell_shad_1_1=40..41}] run data merge entity @e[type=minecraft:armor_stand,tag=gaiveslash_umbra_visual_1,limit=1] {equipment:{offhand:{id:"minecraft:air",count:1}}}
execute at @a[scores={char=55,spell_shad_1_1=40..41}] run data merge entity @e[type=minecraft:armor_stand,tag=gaiveslash_umbra_visual_2,limit=1] {equipment:{offhand:{id:"minecraft:air",count:1}}}
execute at @a[scores={char=55,spell_shad_1_1=31..32,CC_silence=0}] at @e[tag=glavie_umbra_visuals] run particle minecraft:sweep_attack ~ ~0.5 ~ 1 0.5 1 0.001 1 force
execute at @a[scores={char=55,spell_shad_1_1=31..32,CC_silence=0}] at @e[tag=glavie_umbra_visuals] run particle minecraft:block{block_state:{Name:"minecraft:black_wool"}} ~ ~0.5 ~ 1 0.3 1 0.001 50 force
execute at @a[scores={char=55,spell_shad_1_1=45}] run tp @e[tag=umbra_cleave] ~ ~-200 ~
execute at @a[scores={char=55,spell_shad_1_1=45}] run kill @e[tag=umbra_cleave]





#shrouded step

scoreboard players set @a[scores={char=55,spell_shad_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=55,spell_shad_2_1=1,CC_silence=1..}] spell_shad_2_1 220

execute at @a[scores={char=55,death_dash_reset=1..}] run kill @e[tag=shadowdash]
execute at @a[scores={char=55,universal_death=1..}] run kill @e[tag=shadowdash]
execute at @a[scores={char=55,CC_grounded=1..}] run kill @e[tag=shadowdash]
execute at @a[scores={char=55,CC_root=1..}] run kill @e[tag=shadowdash]
execute at @a[scores={char=55,CC_stun=1..}] run kill @e[tag=shadowdash]
execute at @a[scores={char=55,CC_silence=1..}] run kill @e[tag=shadowdash]

effect give @a[scores={char=55,spell_shad_2_1=2,CC_silence=0}] minecraft:slow_falling 1 1 true
execute at @a[scores={char=55,spell_shad_2_1=1..2}] run kill @e[tag=shadowdash]

execute at @a[scores={char=55,spell_shad_2_1=1,CC_silence=0}] run playsound minecraft:entity.player.attack.weak master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=55,spell_shad_2_1=2}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["shadowdash"],NoGravity:1b}
execute at @a[scores={char=55,spell_shad_2_1=2}] run summon minecraft:skeleton ~ ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["umbra_dash","umbra"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:19999980,show_particles:0b},{id:"minecraft:blindness",amplifier:1b,duration:19999980}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":4340289,"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:silence"}},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":4340289},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":4340289,"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:bolt"}},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;471355576,-2144645552,-2071773487,1626073258],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjdiM2ZhZDZkODEwMjYxM2Q4ODQ0MTMwOTZhNGNlYTQyNjQzMGYxZGFkZGNiYTI5ZWRkNGE0ZTM5NjM3ZDQ0MiJ9fX0="}]}},count:1}}}

tp @e[tag=shadowdash,limit=1] @a[scores={char=55,spell_shad_2_1=2},limit=1]
tp @e[tag=umbra_dash,limit=1] @a[scores={char=55,spell_shad_2_1=2},limit=1]
execute at @a[scores={char=55,spell_shad_2_1=2},limit=1] run tp @e[tag=shadowdash,limit=1] ~ ~0.5 ~
execute at @a[scores={char=55,spell_shad_2_1=2},limit=1] run tp @e[tag=umbra_dash,limit=1] ~ ~0.5 ~

execute as @e[tag=shadowdash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=shadowdash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=shadowdash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=shadowdash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=shadowdash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=shadowdash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=shadowdash] at @s run tp @s ^ ^ ^1.1

tp @a[scores={char=55,spell_shad_2_1=2..10,death_dash_reset=0}] @e[tag=shadowdash,limit=1]
execute at @a[scores={char=55,spell_shad_2_1=10}] run kill @e[tag=shadowdash]
execute as @a[scores={char=55,spell_shad_2_1=10}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
effect clear @a[scores={char=55,spell_shad_2_1=10..11,CC_silence=0}] minecraft:slow_falling

execute at @a[scores={char=55,spell_shad_2_1=1..10,CC_silence=0}] run particle minecraft:squid_ink ~ ~1.5 ~ 0.4 0.8 0.4 0.001 2
execute at @a[scores={char=55,spell_shad_2_1=1..10,CC_silence=0}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:black_wool"}} ~ ~1.5 ~ 0.4 0.8 0.4 0.001 10
execute at @a[scores={char=55,spell_shad_2_1=1..10,CC_silence=0}] run particle sweep_attack ~ ~1 ~ 0.8 0.5 0.8 0.1 1 normal


execute at @a[scores={char=55,spell_shad_2_1=31,CC_silence=0}] at @e[tag=umbra_dash] run playsound minecraft:entity.wither_skeleton.ambient master @a[distance=..12] ~ ~ ~ 0.4 0.5 1
execute at @a[scores={char=55,spell_shad_2_1=31,CC_silence=0}] at @e[tag=umbra_dash] run playsound minecraft:entity.phantom.death master @a[distance=..12] ~ ~ ~ 0.6 1.5 1
execute at @a[scores={char=55,spell_shad_2_1=31,CC_silence=0}] at @e[tag=umbra_dash] run playsound minecraft:entity.phantom.hurt master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=55,spell_shad_2_1=31..45,CC_silence=0}] as @e[tag=umbra_dash] at @s run tp @s ^ ^ ^1.2
execute at @a[scores={char=55,spell_shad_2_1=45}] run tp @e[tag=umbra_dash] ~ ~-200 ~
execute at @a[scores={char=55,spell_shad_2_1=45}] run kill @e[tag=umbra_dash]


execute at @a[scores={char=55,spell_shad_2_1=31..40,CC_silence=0},team=yellow] at @e[tag=umbra_dash] run scoreboard players set @a[distance=..3,scores={shadowdash_damage=0},team=purple] shadowdash_damage 1
execute at @a[scores={char=55,spell_shad_2_1=31..40,CC_silence=0},team=purple] at @e[tag=umbra_dash] run scoreboard players set @a[distance=..3,scores={shadowdash_damage=0},team=yellow] shadowdash_damage 1
execute at @a[scores={char=55,spell_shad_2_1=31..40,CC_silence=0},team=yellow] at @e[tag=umbra_dash] run effect give @a[distance=..3,team=purple] minecraft:blindness 2
execute at @a[scores={char=55,spell_shad_2_1=31..40,CC_silence=0},team=purple] at @e[tag=umbra_dash] run effect give @a[distance=..3,team=yellow] minecraft:blindness 2

execute at @a[scores={char=55,spell_shad_2_1=1..10,CC_silence=0},team=yellow] if entity @e[tag=shadowdash] run scoreboard players set @a[distance=..2,scores={shadowdash_damage=0},team=purple] shadowdash_damage 1
execute at @a[scores={char=55,spell_shad_2_1=1..10,CC_silence=0},team=purple] if entity @e[tag=shadowdash] run scoreboard players set @a[distance=..2,scores={shadowdash_damage=0},team=yellow] shadowdash_damage 1


execute if entity @p[scores={char=55},team=purple] as @a[scores={shadowdash_damage_2=2},team=yellow] run damage @s 5 generic by @p[scores={char=55}] from @p[scores={char=55}]
execute if entity @p[scores={char=55},team=yellow] as @a[scores={shadowdash_damage_2=2},team=purple] run damage @s 5 generic by @p[scores={char=55}] from @p[scores={char=55}]
scoreboard players add @a[scores={shadowdash_damage_2=1..}] shadowdash_damage_2 1
scoreboard players set @a[scores={shadowdash_damage_2=10..}] shadowdash_damage_2 0

execute if entity @p[scores={char=55},team=purple] as @a[scores={shadowdash_damage=2},team=yellow] run damage @s 4 generic by @p[scores={char=55}] from @p[scores={char=55}]
execute if entity @p[scores={char=55},team=yellow] as @a[scores={shadowdash_damage=2},team=purple] run damage @s 4 generic by @p[scores={char=55}] from @p[scores={char=55}]
scoreboard players add @a[scores={shadowdash_damage=1..}] shadowdash_damage 1
scoreboard players set @a[scores={shadowdash_damage=10..}] shadowdash_damage 0

# shadowdancer

scoreboard players add @a[scores={spell_shad_1=1..}] spell_shad_1_1 1
item replace entity @a[scores={char=55,spell_shad_1_1=140..}] hotbar.1 with minecraft:black_wool[minecraft:custom_name={text:"Adumbrate",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_shad_1_1=141..}] spell_shad_1 0
scoreboard players set @a[scores={spell_shad_1_1=141..}] spell_shad_1_1 0
scoreboard players set @a[scores={spell_shad_1_1=1}] spellCD1 140

scoreboard players add @a[scores={spell_shad_2=1..}] spell_shad_2_1 1
item replace entity @a[scores={char=55,spell_shad_2_1=240..}] hotbar.2 with minecraft:music_disc_stal[minecraft:custom_name={text:"Shrouded Step",color:"dark_aqua",bold:1b},minecraft:dyed_color=0] 1
scoreboard players set @a[scores={spell_shad_2_1=240..}] spell_shad_2 0
scoreboard players set @a[scores={spell_shad_2_1=240..}] spell_shad_2_1 0
scoreboard players set @a[scores={spell_shad_2_1=1}] spellCD2 240

execute as @a[scores={char=55}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_shovel",Slot:0b}]}] run clear @a[scores={char=55}] minecraft:netherite_shovel
item replace entity @a[scores={char=55}] hotbar.0 with minecraft:netherite_shovel[minecraft:custom_name={bold:1b,color:"gray",text:"Glavie"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=55,spell_shad_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:black_wool",Slot:1b}]}] run clear @a[scores={char=55}] minecraft:black_wool
item replace entity @a[scores={char=55,spell_shad_1=0}] hotbar.1 with minecraft:black_wool[minecraft:custom_name={text:"Adumbrate",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=55,spell_shad_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:music_disc_stal",Slot:2b}]}] run clear @a[scores={char=55}] minecraft:music_disc_stal
item replace entity @a[scores={char=55,spell_shad_2=0}] hotbar.2 with minecraft:music_disc_stal[minecraft:custom_name={text:"Shrouded Step",color:"dark_aqua",bold:1b},minecraft:dyed_color=0] 1