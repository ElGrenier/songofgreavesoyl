kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:tube_coral_fan"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:dead_tube_coral_fan"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_sprouts"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bubble_coral"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_sword"}}]


#passive

execute as @a[tag=form_stitched,scores={char=53}] run title @s[scores={char=53}] actionbar [{text:"[",bold:1b,color:"dark_purple",type:"text"},{text:" Stitches Durability: ",color:"gray",bold:0b,type:"text"},{score:{name:"@s",objective:"stitches"},color:"light_purple",bold:0b,type:"score"},{text:"% ",color:"light_purple",bold:0b,type:"text"},{text:"]",bold:1b,color:"dark_purple",type:"text"}]
execute as @a[tag=form_siren,scores={char=53}] run title @s[scores={char=53}] actionbar [{text:">",bold:1b,color:"dark_red",type:"text"},{text:" Stitches Durability: ",color:"gray",bold:0b,type:"text"},{score:{name:"@s",objective:"stitches"},color:"red",bold:0b,type:"score"},{text:"% ",color:"red",bold:0b,type:"text"},{text:"<",bold:1b,color:"dark_red",type:"text"}]

effect give @a[tag=form_stitched,scores={char=53}] minecraft:resistance 2 0 true

scoreboard players add @a[scores={char=53}] stitches_counter 1
#scoreboard players add @a[scores={char=53},tag=form_siren] stitches_counter 1

scoreboard players remove @a[tag=form_stitched,scores={char=53,stitches_counter=8..}] stitches 1
scoreboard players add @a[tag=form_siren,scores={char=53,stitches_counter=8..}] stitches 1

scoreboard players set @a[scores={char=53,stitches_counter=8..}] stitches_counter 0

scoreboard players set @a[tag=form_stitched,scores={char=53,stitches=101..}] stitches 100
scoreboard players set @a[tag=form_siren,scores={char=53,stitches=..0}] stitches 0

execute at @a[tag=form_siren,scores={char=53}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:bubble_coral"}} ~ ~1 ~ 0.5 1 0.5 0.1 1
execute at @a[tag=form_siren,scores={char=53}] run particle minecraft:block{block_state:{Name:"minecraft:bubble_coral"}} ~ ~1 ~ 0.3 0.8 0.3 0.1 5


#transform to siren

tag @a[tag=form_stitched,scores={char=53,stitches=..-1}] add transform_to_siren

execute at @a[tag=transform_to_siren] run playsound minecraft:entity.player.hurt master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @a[tag=transform_to_siren] run playsound minecraft:entity.squid.death master @a[distance=..15] ~ ~ ~ 0.8 0.8 1
execute at @a[tag=transform_to_siren] run playsound minecraft:entity.drowned.death master @a[distance=..15] ~ ~ ~ 1 1.5 1
execute at @a[tag=transform_to_siren] run particle minecraft:falling_dust{block_state:{Name:"minecraft:bubble_coral"}} ~ ~1 ~ 3 2 3 0.1 100
execute at @a[tag=transform_to_siren] run particle minecraft:block{block_state:{Name:"minecraft:bubble_coral"}} ~ ~1 ~ 3 2 3 0.1 100
scoreboard players set @a[tag=transform_to_siren] spell_sire_1 1
scoreboard players set @a[tag=transform_to_siren] spell_sire_2 1
scoreboard players set @a[tag=transform_to_siren] spell_sire_3 1
scoreboard players set @a[tag=transform_to_siren] spell_sire_4 1
scoreboard players set @a[tag=transform_to_siren] spell_sire_1_1 380
scoreboard players set @a[tag=transform_to_siren] spell_sire_2_1 140
scoreboard players set @a[tag=transform_to_siren] spellCD1 20
scoreboard players set @a[tag=transform_to_siren] spellCD2 20
clear @a[tag=transform_to_siren] minecraft:tube_coral_fan
clear @a[tag=transform_to_siren] minecraft:dead_tube_coral_fan
clear @a[tag=transform_to_siren] minecraft:nether_sprouts
clear @a[tag=transform_to_siren] minecraft:bubble_coral

tag @a[tag=transform_to_siren] add form_siren
tag @a[tag=transform_to_siren] remove form_stitched
tag @a[tag=transform_to_siren] remove transform_to_siren

#transform to stitched

tag @a[tag=form_siren,scores={char=53,stitches=100..}] add transform_to_stitched

execute at @a[tag=transform_to_stitched] run playsound minecraft:entity.witch.death master @a[distance=..15] ~ ~ ~ 1 1.2 1
execute at @a[tag=transform_to_stitched] run particle minecraft:falling_dust{block_state:{Name:"minecraft:bubble_coral"}} ~ ~1 ~ 0.5 0.8 0.5 0.1 30
scoreboard players set @a[tag=transform_to_stitched] spell_sire_1 1
scoreboard players set @a[tag=transform_to_stitched] spell_sire_2 1
scoreboard players set @a[tag=transform_to_stitched] spell_sire_3 1
scoreboard players set @a[tag=transform_to_stitched] spell_sire_4 1
scoreboard players set @a[tag=transform_to_stitched] spell_sire_1_1 380
scoreboard players set @a[tag=transform_to_stitched] spell_sire_2_1 120
scoreboard players set @a[tag=transform_to_stitched] spellCD1 20
scoreboard players set @a[tag=transform_to_stitched] spellCD2 20
clear @a[tag=transform_to_stitched] minecraft:tube_coral_fan
clear @a[tag=transform_to_stitched] minecraft:dead_tube_coral_fan
clear @a[tag=transform_to_stitched] minecraft:nether_sprouts
clear @a[tag=transform_to_stitched] minecraft:bubble_coral

tag @a[tag=transform_to_stitched] add form_stitched
tag @a[tag=transform_to_stitched] remove form_siren
tag @a[tag=transform_to_stitched] remove transform_to_stitched



# Abussflow Dance - what if Aatrox and Malenia had a child

scoreboard players set @a[scores={char=53,spell_sire_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=53,spell_sire_1_1=1,CC_silence=1..}] spell_sire_1_1 480

execute at @a[scores={char=53}] unless entity @e[tag=abyssflow_visual_1] run summon minecraft:marker ~ ~ ~ {Tags:["abyssflow_visual_1","abyssflow_visuals"]}
execute at @a[scores={char=53}] unless entity @e[tag=abyssflow_visual_2] run summon minecraft:marker ~ ~ ~ {Tags:["abyssflow_visual_2","abyssflow_visuals"]}
execute at @a[scores={char=53}] run tp @e[tag=abyssflow_visuals] ~ ~1 ~
execute as @e[tag=abyssflow_visual_1] at @s run tp @s ~ ~ ~ ~25 ~
execute as @e[tag=abyssflow_visual_2] at @s run tp @s ~ ~ ~ ~-25 ~


execute at @a[scores={char=53,death_dash_reset=1..}] run kill @e[tag=siren_dashes]
execute at @a[scores={char=53,universal_death=1..}] run kill @e[tag=siren_dashes]
execute at @a[scores={char=53,CC_grounded=1..}] run kill @e[tag=siren_dashes]
execute at @a[scores={char=53,CC_root=1..}] run kill @e[tag=siren_dashes]
execute at @a[scores={char=53,CC_stun=1..}] run kill @e[tag=siren_dashes]
execute at @a[scores={char=53,CC_silence=1..}] run kill @e[tag=siren_dashes]

#execute at @a[scores={char=53,spell_sire_1_1=2,CC_silence=0}] run playsound entity.blaze.shoot master @a[distance=..10] ~ ~ ~ 1.0 2.0 1.0
execute at @a[tag=form_stitched,scores={char=53,spell_sire_1_1=2,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["abyssblade","siren_dashes"]}
execute at @a[tag=form_stitched,scores={char=53,spell_sire_1=2,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["abyssblade","siren_dashes"]}
execute at @a[tag=form_stitched,scores={char=53,spell_sire_1=23,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["abyssblade","siren_dashes"]}
execute at @a[tag=form_siren,scores={char=53,spell_sire_1_1=2,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["abyssdance","siren_dashes"]}
execute at @a[tag=form_siren,scores={char=53,spell_sire_4=2,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["abyssdance","siren_dashes"]}

item replace entity @a[tag=form_stitched,scores={char=53,spell_sire_1_1=20}] hotbar.1 with minecraft:dead_tube_coral_fan[minecraft:custom_name={text:"Botched Surgery",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:aqua_affinity":1}] 1
item replace entity @a[tag=form_siren,scores={char=53,spell_sire_1_1=20}] hotbar.1 with minecraft:tube_coral_fan[minecraft:custom_name={text:"Abyssflow Dance",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:aqua_affinity":1}] 1

scoreboard players add @e[tag=siren_dashes] stitches 1

data modify entity @e[tag=abyssblade,limit=1] Rotation set from entity @p[scores={char=53}] Rotation
execute at @e[tag=abyssblade,scores={stitches=1},limit=1] run tp @e[tag=abyssblade,limit=1] ~ ~0.5 ~

data modify entity @e[tag=abyssdance,limit=1] Rotation set from entity @p[scores={char=53}] Rotation
execute at @e[tag=abyssdance,scores={stitches=1},limit=1] run tp @e[tag=abyssdance,limit=1] ~ ~0.5 ~

execute as @e[tag=siren_dashes] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=siren_dashes] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=siren_dashes] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=siren_dashes] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=siren_dashes] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=siren_dashes] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

#execute at @e[tag=siren_dashes] run scoreboard players set @a[scores={char=53}] CC_intangible 2
#execute at @e[tag=siren_dashes] run effect give @a[scores={char=53}] resistance 1 100 true

execute as @e[tag=abyssblade] at @s run tp @s ^ ^ ^0.9
execute as @e[tag=abyssdance] at @s run tp @s ^ ^ ^1.1
execute at @e[tag=abyssblade] run particle minecraft:sweep_attack ~ ~1 ~ 0.2 0.6 0.2 0.1 3 normal
execute at @e[tag=abyssdance] run particle minecraft:sweep_attack ~ ~1 ~ 1.5 2 1.5 0.1 10 normal
execute at @e[tag=abyssdance] run particle minecraft:falling_dust{block_state:{Name:"minecraft:bubble_coral"}} ~ ~1 ~ 1.5 2 1.5 0.1 5 normal

tp @a[tag=form_stitched,scores={char=53,death_dash_reset=0}] @e[tag=abyssblade,limit=1]
tp @a[tag=form_siren,scores={char=53,death_dash_reset=0}] @e[tag=abyssdance,limit=1]

execute at @e[tag=abyssblade] at @e[tag=abyssflow_visual_1] run particle minecraft:crit ^ ^ ^1.5 0.01 0.01 0.01 0.1 10 normal
execute at @e[tag=abyssblade] at @e[tag=abyssflow_visual_1] run particle minecraft:crit ^ ^ ^-1.5 0.01 0.01 0.01 0.1 10 normal
execute at @e[tag=abyssblade] at @e[tag=abyssflow_visual_1] run particle minecraft:crit ^1.5 ^ ^ 0.01 0.01 0.01 0.1 10 normal
execute at @e[tag=abyssblade] at @e[tag=abyssflow_visual_1] run particle minecraft:crit ^-1.5 ^ ^ 0.01 0.01 0.01 0.1 10 normal


execute at @e[tag=abyssdance] at @e[tag=abyssflow_visual_2] run particle minecraft:crit ^ ^ ^2 0.01 0.01 0.01 0.1 15 normal
execute at @e[tag=abyssdance] at @e[tag=abyssflow_visual_2] run particle minecraft:crit ^ ^ ^-2 0.01 0.01 0.01 0.1 15 normal
execute at @e[tag=abyssdance] at @e[tag=abyssflow_visual_2] run particle minecraft:crit ^2 ^ ^ 0.01 0.01 0.01 0.1 15 normal
execute at @e[tag=abyssdance] at @e[tag=abyssflow_visual_2] run particle minecraft:crit ^-2 ^ ^ 0.01 0.01 0.01 0.1 15 normal

execute at @e[tag=abyssdance] at @e[tag=abyssflow_visual_2] run particle minecraft:crit ^ ^1 ^2.5 0.01 0.01 0.01 0.1 10 normal
execute at @e[tag=abyssdance] at @e[tag=abyssflow_visual_2] run particle minecraft:crit ^ ^1 ^-2.5 0.01 0.01 0.01 0.1 10 normal
execute at @e[tag=abyssdance] at @e[tag=abyssflow_visual_2] run particle minecraft:crit ^2.5 ^1 ^ 0.01 0.01 0.01 0.1 10 normal
execute at @e[tag=abyssdance] at @e[tag=abyssflow_visual_2] run particle minecraft:crit ^-2.5 ^1 ^ 0.01 0.01 0.01 0.1 10 normal
execute at @e[tag=abyssdance] at @e[tag=abyssflow_visual_2] run particle minecraft:crit ^ ^-1 ^2.5 0.01 0.01 0.01 0.1 10 normal
execute at @e[tag=abyssdance] at @e[tag=abyssflow_visual_2] run particle minecraft:crit ^ ^-1 ^-2.5 0.01 0.01 0.01 0.1 10 normal
execute at @e[tag=abyssdance] at @e[tag=abyssflow_visual_2] run particle minecraft:crit ^2.5 ^-1 ^ 0.01 0.01 0.01 0.1 10 normal
execute at @e[tag=abyssdance] at @e[tag=abyssflow_visual_2] run particle minecraft:crit ^-2.5 ^-1 ^ 0.01 0.01 0.01 0.1 10 normal

execute at @e[tag=siren_dashes,scores={stitches=2}] run playsound minecraft:entity.player.attack.nodamage master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @e[tag=abyssblade,scores={stitches=8}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 1 1.4 1
execute at @e[tag=abyssdance,scores={stitches=8}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @e[tag=siren_dashes,scores={stitches=8}] as @a[scores={char=53}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
execute at @e[tag=siren_dashes,scores={stitches=8..}] run effect clear @a[scores={char=53}] minecraft:resistance
kill @e[tag=siren_dashes,scores={stitches=8..}]

#surgery dash

execute at @e[tag=abyssblade] if entity @a[scores={char=53},team=yellow] at @p[distance=..1.5,team=purple] run playsound minecraft:entity.player.attack.sweep master @a[distance=..15] ~ ~ ~ 1 1.7 1
execute at @e[tag=abyssblade] if entity @a[scores={char=53},team=yellow] as @p[distance=..1.5,team=purple] run damage @s 4 generic by @p[scores={char=53}] from @p[scores={char=53}]
execute at @e[tag=abyssblade] if entity @a[scores={char=53},team=yellow] if entity @p[distance=..1.5,team=purple] run kill @e[tag=abyssblade]

execute at @e[tag=abyssblade] if entity @a[scores={char=53},team=purple] at @p[distance=..1.5,team=yellow] run playsound minecraft:entity.player.attack.sweep master @a[distance=..15] ~ ~ ~ 1 1.7 1
execute at @e[tag=abyssblade] if entity @a[scores={char=53},team=purple] as @p[distance=..1.5,team=yellow] run damage @s 4 generic by @p[scores={char=53}] from @p[scores={char=53}]
execute at @e[tag=abyssblade] if entity @a[scores={char=53},team=purple] if entity @p[distance=..1.5,team=yellow] run kill @e[tag=abyssblade]

#I am Kahni, Blade of Kraken King, and I have never known defeat

execute at @e[tag=abyssdance] if entity @a[scores={char=53},team=yellow] at @p[distance=..3,team=purple] run playsound minecraft:entity.player.attack.sweep master @a[distance=..15] ~ ~ ~ 1 1.7 1
execute at @e[tag=abyssdance] if entity @a[scores={char=53},team=yellow] as @a[distance=..3,team=purple] run damage @s 6 generic by @p[scores={char=53}] from @p[scores={char=53}]
execute at @e[tag=abyssdance] if entity @a[scores={char=53},team=yellow] if entity @p[distance=..3,team=purple] run kill @e[tag=abyssdance]

execute at @e[tag=abyssdance] if entity @a[scores={char=53},team=purple] at @p[distance=..3,team=yellow] run playsound minecraft:entity.player.attack.sweep master @a[distance=..15] ~ ~ ~ 1 1.7 1
execute at @e[tag=abyssdance] if entity @a[scores={char=53},team=purple] as @a[distance=..3,team=purple] run damage @s 6 generic by @p[scores={char=53}] from @p[scores={char=53}]
execute at @e[tag=abyssdance] if entity @a[scores={char=53},team=purple] if entity @p[distance=..3,team=yellow] run kill @e[tag=abyssdance]

#recast

scoreboard players add @a[scores={spell_sire_1=2..21}] spell_sire_1 1
item replace entity @a[tag=form_stitched,scores={char=53,spell_sire_1=21}] hotbar.1 with minecraft:dead_tube_coral_fan[minecraft:custom_name={text:"Botched Surgery",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:aqua_affinity":1}] 1
scoreboard players set @a[scores={spell_sire_1=23..}] spell_sire_1 100
scoreboard players set @a[scores={spell_sire_1_1=200..}] spell_sire_1 1
clear @a[scores={spell_sire_1_1=200..}] minecraft:dead_tube_coral_fan
clear @a[scores={spell_sire_1_1=200..}] minecraft:tube_coral_fan

scoreboard players add @a[scores={spell_sire_4=2..10}] spell_sire_4 1

# Stitch Up/Rip the Wounds - what if [V??oid Fiend] and Cthulhu had a child

scoreboard players set @a[scores={char=53,spell_sire_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=53,spell_sire_2_1=1,CC_silence=1..}] spell_sire_2_1 100

scoreboard players set @a[tag=form_siren,scores={char=53,spell_sire_2_1=1,HP=..4}] spellCD2 20
scoreboard players set @a[tag=form_siren,scores={char=53,spell_sire_2_1=1,HP=..4}] spell_sire_2_1 100

execute as @a[tag=form_siren,scores={char=53,spell_sire_2_1=1,CC_silence=0,HP=5..}] at @s positioned ^ ^ ^1 run damage @s 4
effect give @a[tag=form_stitched,scores={char=53,spell_sire_2_1=1,CC_silence=0}] minecraft:instant_health
scoreboard players add @a[tag=form_stitched,scores={char=53,spell_sire_2_1=1,CC_silence=0}] stitches 20
scoreboard players remove @a[tag=form_siren,scores={char=53,spell_sire_2_1=1,CC_silence=0}] stitches 20

execute at @a[tag=form_siren,scores={char=53,spell_sire_2_1=1,CC_silence=0}] run playsound minecraft:item.bucket.empty_tadpole master @a[distance=..10] ~ ~ ~ 0.6 1.5 1
execute at @a[tag=form_siren,scores={char=53,spell_sire_2_1=1,CC_silence=0}] run playsound minecraft:entity.squid.hurt master @a[distance=..10] ~ ~ ~ 0.4 1.2 1
execute at @a[tag=form_siren,scores={char=53,spell_sire_2_1=1,CC_silence=0}] run playsound minecraft:item.bucket.empty master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[tag=form_siren,scores={char=53,spell_sire_2_1=1,CC_silence=0}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:bubble_coral"}} ~ ~0.5 ~ 2 0.5 2 0.1 100

execute at @a[tag=form_siren,scores={char=53,spell_sire_2_1=2,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["blood_splash"]}
tp @e[tag=blood_splash,limit=1] @a[scores={char=53,spell_sire_2_1=1..2},limit=1]
execute as @e[tag=blood_splash] at @s run tp @s ^ ^ ^0.6

execute at @e[tag=blood_splash] if entity @a[scores={char=53},team=yellow] run effect give @a[distance=..2.5,team=purple] minecraft:slowness 2 3
execute at @e[tag=blood_splash] if entity @a[scores={char=53},team=purple] run effect give @a[distance=..2.5,team=yellow] minecraft:slowness 2 3
execute at @e[tag=blood_splash] if entity @a[scores={char=53},team=yellow] run scoreboard players set @a[distance=..2.5,scores={siren_blood_splash_damage=0},team=purple] siren_blood_splash_damage 1
execute at @e[tag=blood_splash] if entity @a[scores={char=53},team=purple] run scoreboard players set @a[distance=..2.5,scores={siren_blood_splash_damage=0},team=yellow] siren_blood_splash_damage 1
execute at @e[tag=blood_splash] if entity @a[scores={char=53},team=yellow] run scoreboard players set @a[distance=..2.5,scores={siren_blood_heal=0},team=yellow] siren_blood_heal 1
execute at @e[tag=blood_splash] if entity @a[scores={char=53},team=purple] run scoreboard players set @a[distance=..2.5,scores={siren_blood_heal=0},team=purple] siren_blood_heal 1
execute at @a[scores={char=53,spell_sire_2_1=15..}] run kill @e[tag=blood_splash]

scoreboard players add @a[scores={siren_blood_splash_damage=1..}] siren_blood_splash_damage 1

execute as @a[scores={siren_blood_splash_damage=3,CC_intangible=0}] at @s run damage @s 6 generic by @p[scores={char=53}] from @p[scores={char=53}]

execute at @a[scores={siren_blood_splash_damage=3}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:bubble_coral"}} ~ ~0.8 ~ 0.4 0.7 0.4 0.1 5

scoreboard players set @a[scores={siren_blood_splash_damage=40..}] siren_blood_splash_damage 0

scoreboard players add @a[scores={siren_blood_heal=1..}] siren_blood_heal 1

effect give @a[tag=!form_siren,tag=!form_stitched,scores={siren_blood_heal=2}] minecraft:instant_health
execute at @a[scores={siren_blood_heal=2}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:bubble_coral"}} ~ ~1 ~ 0.5 0.8 0.5 0.1 50
execute at @a[scores={siren_blood_heal=2}] run playsound minecraft:entity.player.splash.high_speed ambient @a[distance=..10] ~ ~ ~ 0.4 2 1

scoreboard players set @a[scores={siren_blood_heal=40..}] siren_blood_heal 0



execute at @e[tag=blood_splash] run particle minecraft:falling_dust{block_state:{Name:"minecraft:bubble_coral"}} ~ ~1 ~ 1 0.3 1 0.1 5
execute at @e[tag=blood_splash] run particle minecraft:block{block_state:{Name:"minecraft:bubble_coral"}} ^-1.6 ^1.2 ^-1.2 0.1 0.1 0.1 0.1 8
execute at @e[tag=blood_splash] run particle minecraft:block{block_state:{Name:"minecraft:bubble_coral"}} ^-0.8 ^1.2 ^-0.6 0.1 0.1 0.1 0.1 8
execute at @e[tag=blood_splash] run particle minecraft:block{block_state:{Name:"minecraft:bubble_coral"}} ^ ^1.2 ^ 0.1 0.1 0.1 0.1 8
execute at @e[tag=blood_splash] run particle minecraft:block{block_state:{Name:"minecraft:bubble_coral"}} ^0.8 ^1.2 ^-0.6 0.1 0.1 0.1 0.1 8
execute at @e[tag=blood_splash] run particle minecraft:block{block_state:{Name:"minecraft:bubble_coral"}} ^1.6 ^1.2 ^-1.2 0.1 0.1 0.1 0.1 8

execute at @a[tag=form_stitched,scores={char=53,spell_sire_2_1=1,CC_silence=0}] run playsound minecraft:item.armor.equip_diamond master @a[distance=..10] ~ ~ ~ 0.8 2 1
execute at @a[tag=form_stitched,scores={char=53,spell_sire_2_1=10,CC_silence=0}] run playsound minecraft:item.armor.equip_diamond master @a[distance=..10] ~ ~ ~ 0.8 2 1
execute at @a[tag=form_stitched,scores={char=53,spell_sire_2_1=1,CC_silence=0}] run playsound minecraft:entity.squid.hurt master @a[distance=..10] ~ ~ ~ 0.4 1.8 1
execute at @a[tag=form_stitched,scores={char=53,spell_sire_2_1=1,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~0.5 ~ 2 0.5 2 0.1 100
execute at @a[tag=form_stitched,scores={char=53,spell_sire_2_1=1,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["siren_bleed"]}
execute at @a[tag=form_stitched,scores={char=53,spell_sire_2_1=1,CC_silence=0},team=purple] run effect give @a[distance=0.5..6,team=purple] minecraft:instant_health
execute at @a[tag=form_stitched,scores={char=53,spell_sire_2_1=1,CC_silence=0},team=yellow] run effect give @a[distance=0.5..6,team=yellow] minecraft:instant_health

execute at @a[tag=form_stitched,scores={char=53,spell_sire_2_1=1,CC_silence=0},team=purple] at @a[distance=0.5..6,team=purple] run playsound minecraft:entity.player.splash.high_speed ambient @a[distance=..10] ~ ~ ~ 0.4 2 1
execute at @a[tag=form_stitched,scores={char=53,spell_sire_2_1=1,CC_silence=0},team=yellow] at @a[distance=0.5..6,team=yellow] run playsound minecraft:entity.player.splash.high_speed ambient @a[distance=..10] ~ ~ ~ 0.4 2 1

execute at @a[tag=form_stitched,scores={char=53,spell_sire_2_1=1,CC_silence=0},team=purple] at @a[distance=0.5..6,team=purple] run particle minecraft:falling_dust{block_state:{Name:"minecraft:bubble_coral"}} ~ ~1 ~ 0.5 0.8 0.5 0.1 50
execute at @a[tag=form_stitched,scores={char=53,spell_sire_2_1=1,CC_silence=0},team=yellow] at @a[distance=0.5..6,team=yellow] run particle minecraft:falling_dust{block_state:{Name:"minecraft:bubble_coral"}} ~ ~1 ~ 0.5 0.8 0.5 0.1 50

execute at @e[tag=siren_bleed] unless entity @e[tag=abyssblood_visual_1] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["abyssblood_visual_1","abyssblood_visuals"],Marker:1b,equipment:{}}
execute at @e[tag=siren_bleed] unless entity @e[tag=abyssblood_visual_2] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[45.0f,0.0f],Small:1b,Invisible:1b,Tags:["abyssblood_visual_2","abyssblood_visuals"],Marker:1b,equipment:{}}
execute at @e[tag=siren_bleed] unless entity @e[tag=abyssblood_visual_3] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[90.0f,0.0f],Small:1b,Invisible:1b,Tags:["abyssblood_visual_3","abyssblood_visuals"],Marker:1b,equipment:{}}
execute at @e[tag=siren_bleed] unless entity @e[tag=abyssblood_visual_4] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[135.0f,0.0f],Small:1b,Invisible:1b,Tags:["abyssblood_visual_4","abyssblood_visuals"],Marker:1b,equipment:{}}
execute at @e[tag=siren_bleed] unless entity @e[tag=abyssblood_visual_5] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[180.0f,0.0f],Small:1b,Invisible:1b,Tags:["abyssblood_visual_5","abyssblood_visuals"],Marker:1b,equipment:{}}
execute at @e[tag=siren_bleed] unless entity @e[tag=abyssblood_visual_6] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[-135.0f,0.0f],Small:1b,Invisible:1b,Tags:["abyssblood_visual_6","abyssblood_visuals"],Marker:1b,equipment:{}}
execute at @e[tag=siren_bleed] unless entity @e[tag=abyssblood_visual_7] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[-90.0f,0.0f],Small:1b,Invisible:1b,Tags:["abyssblood_visual_7","abyssblood_visuals"],Marker:1b,equipment:{}}
execute at @e[tag=siren_bleed] unless entity @e[tag=abyssblood_visual_8] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[-45.0f,0.0f],Small:1b,Invisible:1b,Tags:["abyssblood_visual_8","abyssblood_visuals"],Marker:1b,equipment:{}}

kill @e[tag=siren_bleed]

execute as @e[tag=abyssblood_visual_1] at @s run tp @s ~0.7 ~ ~
execute as @e[tag=abyssblood_visual_2] at @s run tp @s ~-0.7 ~ ~
execute as @e[tag=abyssblood_visual_3] at @s run tp @s ~ ~ ~0.7
execute as @e[tag=abyssblood_visual_4] at @s run tp @s ~ ~ ~-0.7
execute as @e[tag=abyssblood_visual_5] at @s run tp @s ~0.6 ~ ~0.6
execute as @e[tag=abyssblood_visual_6] at @s run tp @s ~-0.6 ~ ~-0.6
execute as @e[tag=abyssblood_visual_7] at @s run tp @s ~0.6 ~ ~-0.6
execute as @e[tag=abyssblood_visual_8] at @s run tp @s ~-0.6 ~ ~0.6

execute at @e[tag=abyssblood_visuals] run particle minecraft:block{block_state:{Name:"minecraft:bubble_coral"}} ~ ~0.5 ~ 0.2 0.2 0.2 0.1 8
scoreboard players add @e[tag=abyssblood_visuals] stitches 1
kill @e[tag=abyssblood_visuals,scores={stitches=8..}]


# siren

scoreboard players add @a[tag=form_stitched,scores={spell_sire_1=1..}] spell_sire_1_1 1
scoreboard players add @a[tag=form_siren,scores={spell_sire_4=1..}] spell_sire_1_1 1
item replace entity @a[tag=form_stitched,scores={char=53,spell_sire_1_1=400..}] hotbar.1 with minecraft:dead_tube_coral_fan[minecraft:custom_name={text:"Botched Surgery",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:aqua_affinity":1}] 1
item replace entity @a[tag=form_siren,scores={char=53,spell_sire_1_1=400..}] hotbar.1 with minecraft:tube_coral_fan[minecraft:custom_name={text:"Abyssflow Dance",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:aqua_affinity":1}] 1
scoreboard players set @a[scores={spell_sire_1_1=401..}] spell_sire_1 0
scoreboard players set @a[scores={spell_sire_1_1=401..}] spell_sire_4 0
scoreboard players set @a[scores={spell_sire_1_1=401..}] spell_sire_1_1 0
scoreboard players set @a[scores={spell_sire_1_1=199..200}] spellCD1 200

scoreboard players add @a[tag=form_stitched,scores={spell_sire_2=1..}] spell_sire_2_1 1
scoreboard players add @a[tag=form_siren,scores={spell_sire_3=1..}] spell_sire_2_1 1
item replace entity @a[tag=form_stitched,scores={char=53,spell_sire_2_1=120..}] hotbar.2 with minecraft:nether_sprouts[minecraft:custom_name={text:"Stitch Up",color:"dark_aqua",bold:1b}] 1
item replace entity @a[tag=form_siren,scores={char=53,spell_sire_2_1=120..}] hotbar.2 with minecraft:bubble_coral[minecraft:custom_name={text:"Rip the Wounds",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_sire_2_1=121..}] spell_sire_2 0
scoreboard players set @a[scores={spell_sire_2_1=121..}] spell_sire_3 0
scoreboard players set @a[scores={spell_sire_2_1=121..}] spell_sire_2_1 0
scoreboard players set @a[scores={spell_sire_2_1=1}] spellCD2 120

execute as @a[scores={char=53}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword",Slot:0b}]}] run clear @a[scores={char=53}] minecraft:iron_sword
item replace entity @a[tag=form_stitched,scores={char=53}] hotbar.0 with minecraft:iron_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Scalpel"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.5d,operation:"add_multiplied_base",slot:"mainhand"}]] 1
item replace entity @a[tag=form_siren,scores={char=53}] hotbar.0 with minecraft:iron_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Scalpel"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:aqua_affinity":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.5d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[tag=form_stitched,scores={char=53,spell_sire_1=0,spell_sire_4=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:dead_tube_coral_fan",Slot:1b}]}] run clear @a[scores={char=53}] minecraft:dead_tube_coral_fan
item replace entity @a[tag=form_stitched,scores={char=53,spell_sire_1=0,spell_sire_4=0}] hotbar.1 with minecraft:dead_tube_coral_fan[minecraft:custom_name={text:"Botched Surgery",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:aqua_affinity":1}] 1

execute as @a[tag=form_siren,scores={char=53,spell_sire_1=0,spell_sire_4=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:tube_coral_fan",Slot:1b}]}] run clear @a[scores={char=53}] minecraft:tube_coral_fan
item replace entity @a[tag=form_siren,scores={char=53,spell_sire_1=0,spell_sire_4=0}] hotbar.1 with minecraft:tube_coral_fan[minecraft:custom_name={text:"Abyssflow Dance",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:aqua_affinity":1}] 1


execute as @a[tag=form_stitched,scores={char=53,spell_sire_2=0,spell_sire_3=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:nether_sprouts",Slot:2b}]}] run clear @a[scores={char=53}] minecraft:nether_sprouts
item replace entity @a[tag=form_stitched,scores={char=53,spell_sire_2=0,spell_sire_3=0}] hotbar.2 with minecraft:nether_sprouts[minecraft:custom_name={text:"Stitch Up",color:"dark_aqua",bold:1b}] 1

execute as @a[tag=form_siren,scores={char=53,spell_sire_2=0,spell_sire_3=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bubble_coral",Slot:2b}]}] run clear @a[scores={char=53}] minecraft:bubble_coral
item replace entity @a[tag=form_siren,scores={char=53,spell_sire_2=0,spell_sire_3=0}] hotbar.2 with minecraft:bubble_coral[minecraft:custom_name={text:"Rip the Wounds",color:"dark_aqua",bold:1b}] 1