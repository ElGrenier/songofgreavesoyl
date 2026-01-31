kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_sword"}}]

scoreboard players set @e[tag=!siren_abyssflow_uninitiated] siren_abyssflow_damage 0
scoreboard players set @e[tag=!siren_abyssflow_uninitiated] siren_blood_heal 0
tag @e add siren_abyssflow_uninitiated

#passive

effect give @a[tag=form_stitched,scores={char=53}] resistance 2 0 true

scoreboard players add @a[scores={char=53}] stitches_counter 1

scoreboard players remove @a[tag=form_stitched,scores={char=53,stitches_counter=8..}] stitches 1
scoreboard players add @a[tag=form_siren,scores={char=53,stitches_counter=8..}] stitches 1

scoreboard players set @a[scores={char=53,stitches_counter=8..}] stitches_counter 0

scoreboard players set @a[tag=form_stitched,scores={char=53,stitches=101..}] stitches 100
scoreboard players set @a[tag=form_siren,scores={char=53,stitches=..0}] stitches 0

execute at @a[tag=form_siren,scores={char=53}] run particle falling_dust{block_state:{Name:"minecraft:bubble_coral"}} ~ ~1 ~ 0.4 0.6 0.4 0.1 1
execute at @a[tag=form_siren,scores={char=53}] run particle block{block_state:{Name:"minecraft:bubble_coral"}} ~ ~0.5 ~ 0.3 0.8 0.3 0.1 1

execute as @a[tag=form_stitched,scores={char=53}] run title @s[scores={char=53}] actionbar [{text:"[",bold:1b,color:"dark_purple",type:"text"},{text:" Stitches Durability: ",color:"gray",bold:0b,type:"text"},{score:{name:"@s",objective:"stitches"},color:"light_purple",bold:0b,type:"score"},{text:"% ",color:"light_purple",bold:0b,type:"text"},{text:"]",bold:1b,color:"dark_purple",type:"text"}]
execute as @a[tag=form_siren,scores={char=53}] run title @s[scores={char=53}] actionbar [{text:">",bold:1b,color:"dark_red",type:"text"},{text:" Stitches Durability: ",color:"gray",bold:0b,type:"text"},{score:{name:"@s",objective:"stitches"},color:"red",bold:0b,type:"score"},{text:"% ",color:"red",bold:0b,type:"text"},{text:"<",bold:1b,color:"dark_red",type:"text"}]


#transform to siren

tag @a[tag=form_stitched,scores={char=53,stitches=..-1}] add transform_to_siren

execute at @a[tag=transform_to_siren] run playsound entity.allay.death master @a[distance=..15] ~ ~ ~ 0.3 1.2 1
execute at @a[tag=transform_to_siren] run playsound entity.player.hurt master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @a[tag=transform_to_siren] run playsound entity.squid.death master @a[distance=..15] ~ ~ ~ 0.8 0.8 1
execute at @a[tag=transform_to_siren] run playsound entity.drowned.death master @a[distance=..15] ~ ~ ~ 1 1.5 1
execute at @a[tag=transform_to_siren] run particle falling_dust{block_state:{Name:"minecraft:bubble_coral"}} ~ ~1 ~ 3 2 3 0.1 100
execute at @a[tag=transform_to_siren] run particle block{block_state:{Name:"minecraft:bubble_coral"}} ~ ~1 ~ 3 2 3 0.1 100
scoreboard players set @a[tag=transform_to_siren] s1_timer 380
scoreboard players set @a[tag=transform_to_siren] s2_timer 100
scoreboard players set @a[tag=transform_to_siren] spellCD1 20
scoreboard players set @a[tag=transform_to_siren] spellCD2 20
clear @a[tag=transform_to_siren] leather_chestplate

tag @a[tag=transform_to_siren] add form_siren
tag @a[tag=transform_to_siren] remove form_stitched
tag @a[tag=transform_to_siren] remove transform_to_siren

#transform to stitched

tag @a[tag=form_siren,scores={char=53,stitches=100..}] add transform_to_stitched

execute at @a[tag=transform_to_stitched] run playsound item.armor.equip_leather master @a[distance=..15] ~ ~ ~ 1 2 1
execute at @a[tag=transform_to_stitched] run playsound entity.witch.death master @a[distance=..15] ~ ~ ~ 1 1.5 1
execute at @a[tag=transform_to_stitched] run playsound entity.witch.ambient master @a[distance=..15] ~ ~ ~ 0.5 1.5 1
execute at @a[tag=transform_to_stitched] run particle falling_dust{block_state:{Name:"minecraft:bubble_coral"}} ~ ~1 ~ 0.5 0.8 0.5 0.1 30
scoreboard players set @a[tag=transform_to_stitched] spell_sire_3 1
scoreboard players set @a[tag=transform_to_stitched] spell_sire_4 1
scoreboard players set @a[tag=transform_to_stitched] s1_timer 380
scoreboard players set @a[tag=transform_to_stitched] s2_timer 100
scoreboard players set @a[tag=transform_to_stitched] spellCD1 20
scoreboard players set @a[tag=transform_to_stitched] spellCD2 20
clear @a[tag=transform_to_stitched] leather_chestplate

tag @a[tag=transform_to_stitched] add form_stitched
tag @a[tag=transform_to_stitched] remove form_siren
tag @a[tag=transform_to_stitched] remove transform_to_stitched



# Boched Surgery/Abyssflow Dance - what if Aatrox and Malenia had a child

scoreboard players set @a[scores={char=53,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=53,s1_timer=1,CC_silence=1..}] s1_timer 480

execute at @a[scores={char=53}] unless entity @e[tag=abyssflow_visual_1] run summon marker ~ ~ ~ {Tags:["abyssflow_visual_1","abyssflow_visuals"]}
execute at @a[scores={char=53}] unless entity @e[tag=abyssflow_visual_2] run summon marker ~ ~ ~ {Tags:["abyssflow_visual_2","abyssflow_visuals"]}
execute at @a[scores={char=53}] run tp @e[tag=abyssflow_visuals] ~ ~1 ~
execute as @e[tag=abyssflow_visual_1] at @s run tp @s ~ ~ ~ ~15 ~
execute as @e[tag=abyssflow_visual_2] at @s run tp @s ~ ~ ~ ~-15 ~


execute at @a[scores={char=53,death_dash_reset=1..}] run kill @e[tag=siren_dashes]
execute at @a[scores={char=53,universal_death=1..}] run kill @e[tag=siren_dashes]
execute at @a[scores={char=53,CC_grounded=1..}] run kill @e[tag=siren_dashes]
execute at @a[scores={char=53,CC_root=1..}] run kill @e[tag=siren_dashes]
execute at @a[scores={char=53,CC_stun=1..}] run kill @e[tag=siren_dashes]
execute at @a[scores={char=53,CC_silence=1..}] run kill @e[tag=siren_dashes]


execute as @e[tag=siren_dashes] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=siren_dashes] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=siren_dashes] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=siren_dashes] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=siren_dashes] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=siren_dashes] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s


scoreboard players add @e[tag=siren_dashes] stitches 1

# Botched Surgery HERE

clear @a[scores={s1_timer=1..,char=53}] *[minecraft:custom_data={s1:1}]
clear @a[scores={s1_timer_recast=1..,char=53}] *[minecraft:custom_data={s1:2}]
clear @a[scores={s3_timer=1..,char=53}] *[minecraft:custom_data={s3:1}]
execute at @a[tag=form_stitched,scores={char=53,s1_timer=2,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["abyssblade","siren_dashes","entities_stitchedsiren"]}
tp @e[tag=abyssblade,limit=1] @a[scores={char=53,s1_timer=2},limit=1]
execute at @a[scores={char=53,s1_timer=2},limit=1] run tp @e[tag=abyssblade,limit=1] ~ ~0.5 ~

execute at @a[tag=form_stitched,scores={char=53,s1_timer_recast=2,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["abyssblade","siren_dashes","entities_stitchedsiren"]}
tp @e[tag=abyssblade,limit=1] @a[scores={char=53,s1_timer_recast=2},limit=1]
execute at @a[scores={char=53,s1_timer_recast=2},limit=1] run tp @e[tag=abyssblade,limit=1] ~ ~0.5 ~

execute at @a[tag=form_stitched,scores={char=53,s3_timer=2,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["abyssblade","siren_dashes","entities_stitchedsiren"]}
tp @e[tag=abyssblade,limit=1] @a[scores={char=53,s3_timer=2},limit=1]
execute at @a[scores={char=53,s3_timer=2},limit=1] run tp @e[tag=abyssblade,limit=1] ~ ~0.5 ~

execute as @e[tag=abyssblade] at @s run tp @s ^ ^ ^0.9
execute at @e[tag=abyssblade] run particle sweep_attack ~ ~1 ~ 0.2 0.6 0.2 0.1 3 normal

tp @a[tag=form_stitched,scores={char=53,death_dash_reset=0}] @e[tag=abyssblade,limit=1]

execute as @e[tag=abyssblade,scores={stitches=1}] at @s run particle crit ^0.2 ^1 ^1.5 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=2}] at @s run particle crit ^0.4 ^1 ^1.5 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=3}] at @s run particle crit ^0.6 ^1 ^1.5 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=4}] at @s run particle crit ^0.8 ^1 ^1.5 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=5}] at @s run particle crit ^1 ^1 ^1.5 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=6}] at @s run particle crit ^1.2 ^1 ^1.5 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=7}] at @s run particle crit ^1.4 ^1 ^1.5 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=8}] at @s run particle crit ^1.6 ^1 ^1.5 0 0 0 0 50 normal

execute as @e[tag=abyssblade,scores={stitches=1}] at @s run particle crit ^-0.2 ^1 ^1.5 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=2}] at @s run particle crit ^-0.4 ^1 ^1.5 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=3}] at @s run particle crit ^-0.6 ^1 ^1.5 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=4}] at @s run particle crit ^-0.8 ^1 ^1.5 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=5}] at @s run particle crit ^-1 ^1 ^1.5 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=6}] at @s run particle crit ^-1.2 ^1 ^1.5 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=7}] at @s run particle crit ^-1.4 ^1 ^1.5 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=8}] at @s run particle crit ^-1.6 ^1 ^1.5 0 0 0 0 50 normal


execute as @e[tag=abyssblade,scores={stitches=1}] at @s run particle crit ^0.2 ^1 ^1.1 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=2}] at @s run particle crit ^0.4 ^1 ^1.1 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=3}] at @s run particle crit ^0.6 ^1 ^1.1 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=4}] at @s run particle crit ^0.8 ^1 ^1.1 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=5}] at @s run particle crit ^1 ^1 ^1.1 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=6}] at @s run particle crit ^1.2 ^1 ^1.1 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=7}] at @s run particle crit ^1.4 ^1 ^1.1 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=8}] at @s run particle crit ^1.6 ^1 ^1.1 0 0 0 0 50 normal

execute as @e[tag=abyssblade,scores={stitches=1}] at @s run particle crit ^-0.2 ^1 ^1.1 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=2}] at @s run particle crit ^-0.4 ^1 ^1.1 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=3}] at @s run particle crit ^-0.6 ^1 ^1.1 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=4}] at @s run particle crit ^-0.8 ^1 ^1.1 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=5}] at @s run particle crit ^-1 ^1 ^1.1 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=6}] at @s run particle crit ^-1.2 ^1 ^1.1 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=7}] at @s run particle crit ^-1.4 ^1 ^1.1 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=8}] at @s run particle crit ^-1.6 ^1 ^1.1 0 0 0 0 50 normal


execute as @e[tag=abyssblade,scores={stitches=1}] at @s run particle crit ^0.2 ^1 ^0.8 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=2}] at @s run particle crit ^0.4 ^1 ^0.8 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=3}] at @s run particle crit ^0.6 ^1 ^0.8 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=4}] at @s run particle crit ^0.8 ^1 ^0.8 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=5}] at @s run particle crit ^1 ^1 ^0.8 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=6}] at @s run particle crit ^1.2 ^1 ^0.8 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=7}] at @s run particle crit ^1.4 ^1 ^0.8 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=8}] at @s run particle crit ^1.6 ^1 ^0.8 0 0 0 0 50 normal

execute as @e[tag=abyssblade,scores={stitches=1}] at @s run particle crit ^-0.2 ^1 ^0.8 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=2}] at @s run particle crit ^-0.4 ^1 ^0.8 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=3}] at @s run particle crit ^-0.6 ^1 ^0.8 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=4}] at @s run particle crit ^-0.8 ^1 ^0.8 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=5}] at @s run particle crit ^-1 ^1 ^0.8 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=6}] at @s run particle crit ^-1.2 ^1 ^0.8 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=7}] at @s run particle crit ^-1.4 ^1 ^0.8 0 0 0 0 50 normal
execute as @e[tag=abyssblade,scores={stitches=8}] at @s run particle crit ^-1.6 ^1 ^0.8 0 0 0 0 50 normal



execute at @e[tag=abyssblade,scores={stitches=8}] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 1 1.4 1

execute at @e[tag=abyssblade] positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=53}] Team run tag @s add siren_botched

execute at @e[tag=siren_botched] run kill @e[tag=abyssblade]
execute at @e[tag=siren_botched] run particle sweep_attack ~ ~1.4 ~ 0.15 0.1 0.15 0.1 10
execute at @e[tag=siren_botched] run playsound entity.player.attack.sweep master @a[distance=..15] ~ ~ ~ 1 1.7 1
damage @e[tag=siren_botched,limit=1] 4 generic by @p[scores={char=53}] from @p[scores={char=53}]
tag @e remove siren_botched

# Abyssflow Dance HERE
#I am Kahni, Blade of Kraken King, and I have never known defeat

execute at @a[tag=form_siren,scores={char=53,s1_timer=2,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["abyssdance","siren_dashes","entities_stitchedsiren"]}
tp @e[tag=abyssdance,limit=1] @a[scores={char=53,s1_timer=2},limit=1]
execute at @a[scores={char=53,s1_timer=2},limit=1] run tp @e[tag=abyssdance,limit=1] ~ ~0.5 ~

execute at @a[tag=form_siren,scores={char=53,s1_timer_recast=2,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["abyssdance","siren_dashes","entities_stitchedsiren"]}
tp @e[tag=abyssdance,limit=1] @a[scores={char=53,s1_timer_recast=2},limit=1]
execute at @a[scores={char=53,s1_timer_recast=2},limit=1] run tp @e[tag=abyssdance,limit=1] ~ ~0.5 ~


data modify entity @e[tag=abyssdance,limit=1] Rotation set from entity @p[scores={char=53}] Rotation
execute at @e[tag=abyssdance,scores={stitches=1},limit=1] run tp @e[tag=abyssdance,limit=1] ~ ~0.5 ~

execute as @e[tag=abyssdance] at @s run tp @s ^ ^ ^1.1
#execute at @e[tag=abyssdance] run particle sweep_attack ~ ~1 ~ 1.5 2 1.5 0.1 10 normal
execute at @e[tag=abyssdance] run particle falling_dust{block_state:{Name:"minecraft:bubble_coral"}} ~ ~1 ~ 1.5 2 1.5 0.1 5 normal

tp @a[tag=form_siren,scores={char=53,death_dash_reset=0}] @e[tag=abyssdance,limit=1]



execute at @e[tag=abyssdance] as @e[distance=..3,tag=valid_spell_target,scores={siren_abyssflow_damage=0}] unless score @s Team = @p[scores={char=53}] Team run scoreboard players set @s siren_abyssflow_damage 1


scoreboard players add @e[scores={siren_abyssflow_damage=1..}] siren_abyssflow_damage 1

execute at @e[scores={siren_abyssflow_damage=2}] run particle sweep_attack ~ ~0.4 ~ 0.15 0 0.15 0.1 10
execute at @e[scores={siren_abyssflow_damage=6}] run particle sweep_attack ~ ~0.9 ~ 0.15 0 0.15 0.1 10
execute at @e[scores={siren_abyssflow_damage=11}] run particle sweep_attack ~ ~1.4 ~ 0.15 0 0.15 0.1 10
execute at @e[scores={siren_abyssflow_damage=2}] run playsound entity.player.attack.sweep master @a[distance=..15] ~ ~ ~ 1 1.7 1
execute as @e[scores={siren_abyssflow_damage=2}] run damage @s 6 generic by @p[scores={char=53}] from @p[scores={char=53}]
scoreboard players set @e[scores={siren_abyssflow_damage=15..}] siren_abyssflow_damage 0

#the rest
execute at @e[tag=siren_dashes,scores={stitches=2}] run playsound entity.player.attack.nodamage master @a[distance=..10] ~ ~ ~ 1 0.8 1

execute at @e[tag=abyssdance,scores={stitches=2}] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @e[tag=abyssdance,scores={stitches=4}] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 1 1 1
execute at @e[tag=abyssdance,scores={stitches=6}] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 1 1.2 1
execute at @e[tag=abyssdance,scores={stitches=8}] run playsound entity.player.attack.knockback master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @e[tag=siren_dashes,scores={stitches=8}] as @a[scores={char=53}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

execute at @e[tag=abyssdance,scores={stitches=2}] positioned ~ ~1 ~ run function chars:siren_particle_slash_small
execute at @e[tag=abyssdance,scores={stitches=4}] positioned ~ ~1 ~ run function chars:siren_particle_slash_small
execute at @e[tag=abyssdance,scores={stitches=6}] positioned ~ ~1 ~ run function chars:siren_particle_slash_small

execute at @e[tag=abyssdance,scores={stitches=8}] positioned ~ ~1 ~ run function chars:siren_particle_slash_big
execute at @e[tag=abyssdance,scores={stitches=8}] run particle bubble_pop ~ ~1 ~ 2 2 2 0 400
kill @e[tag=siren_dashes,scores={stitches=8..}]


# Stitch Up/Rip the Wounds - what if [V??oid Fiend] and Cthulhu had a child

scoreboard players set @a[scores={char=53,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=53,s2_timer=1,CC_silence=1..}] s2_timer 100

# Stitch Up HERE

effect give @a[tag=form_stitched,scores={char=53,s2_timer=1,CC_silence=0}] instant_health
scoreboard players add @a[tag=form_stitched,scores={char=53,s2_timer=1,CC_silence=0}] stitches 20

execute at @a[tag=form_stitched,scores={char=53,s2_timer=1,CC_silence=0}] run particle crit ~ ~1 ~ 0.3 0.6 0.3 0 50
execute at @a[tag=form_stitched,scores={char=53,s2_timer=5,CC_silence=0}] run particle crit ~ ~1 ~ 0.3 0.6 0.3 0 50
execute at @a[tag=form_stitched,scores={char=53,s2_timer=1,CC_silence=0}] run playsound item.armor.equip_diamond master @a[distance=..10] ~ ~ ~ 0.8 2 1
execute at @a[tag=form_stitched,scores={char=53,s2_timer=5,CC_silence=0}] run playsound item.armor.equip_diamond master @a[distance=..10] ~ ~ ~ 0.8 1.8 1
execute at @a[tag=form_stitched,scores={char=53,s2_timer=10,CC_silence=0}] run playsound item.armor.equip_diamond master @a[distance=..10] ~ ~ ~ 0.8 2 1
execute at @a[tag=form_stitched,scores={char=53,s2_timer=1,CC_silence=0}] run playsound entity.squid.hurt master @a[distance=..10] ~ ~ ~ 0.4 1.8 1
execute at @a[tag=form_stitched,scores={char=53,s2_timer=1,CC_silence=0}] run particle block{block_state:{Name:"minecraft:water"}} ~ ~0.5 ~ 2 0.5 2 0.1 100
execute at @a[tag=form_stitched,scores={char=53,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["siren_bleed","entities_stitchedsiren"]}
execute at @a[tag=form_stitched,scores={char=53,s2_timer=1,CC_silence=0}] as @a[distance=0.5..6,tag=valid_spell_target] if score @s Team = @p[scores={char=52}] Team run tag @s add stitched_by_siren

execute at @e[tag=stitched_by_siren] run particle falling_dust{block_state:{Name:"minecraft:water"}} ~ ~1 ~ 0.5 0.6 0.5 0.1 10
execute at @e[tag=stitched_by_siren] run particle falling_dust{block_state:{Name:"minecraft:bubble_coral"}} ~ ~1 ~ 0.5 0.6 0.5 0.1 50
execute at @e[tag=stitched_by_siren] run playsound entity.player.splash.high_speed ambient @a[distance=..10] ~ ~ ~ 0.4 2 1
execute at @e[tag=stitched_by_siren] run playsound item.armor.equip_diamond master @a[distance=..10] ~ ~ ~ 0.8 2 1
effect give @a[tag=stitched_by_siren] instant_health
tag @e remove stitched_by_siren


execute at @e[tag=siren_bleed] unless entity @e[tag=abyssblood_visual_1] run summon block_display ~ ~1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bubble_coral_block"},Tags:["abyssblood_visual_1","abyssblood_visuals","entities_stitchedsiren"]}
execute at @e[tag=siren_bleed] unless entity @e[tag=abyssblood_visual_2] run summon block_display ~ ~1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bubble_coral_block"},Tags:["abyssblood_visual_2","abyssblood_visuals","entities_stitchedsiren"]}
execute at @e[tag=siren_bleed] unless entity @e[tag=abyssblood_visual_3] run summon block_display ~ ~1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bubble_coral_block"},Tags:["abyssblood_visual_3","abyssblood_visuals","entities_stitchedsiren"]}
execute at @e[tag=siren_bleed] unless entity @e[tag=abyssblood_visual_4] run summon block_display ~ ~1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bubble_coral_block"},Tags:["abyssblood_visual_4","abyssblood_visuals","entities_stitchedsiren"]}
execute at @e[tag=siren_bleed] unless entity @e[tag=abyssblood_visual_5] run summon block_display ~ ~1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bubble_coral_block"},Tags:["abyssblood_visual_5","abyssblood_visuals","entities_stitchedsiren"]}
execute at @e[tag=siren_bleed] unless entity @e[tag=abyssblood_visual_6] run summon block_display ~ ~1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bubble_coral_block"},Tags:["abyssblood_visual_6","abyssblood_visuals","entities_stitchedsiren"]}
execute at @e[tag=siren_bleed] unless entity @e[tag=abyssblood_visual_7] run summon block_display ~ ~1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bubble_coral_block"},Tags:["abyssblood_visual_7","abyssblood_visuals","entities_stitchedsiren"]}
execute at @e[tag=siren_bleed] unless entity @e[tag=abyssblood_visual_8] run summon block_display ~ ~1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bubble_coral_block"},Tags:["abyssblood_visual_8","abyssblood_visuals","entities_stitchedsiren"]}


execute as @e[tag=abyssblood_visual_1] at @s run tp @s ~0.7 ~ ~
execute as @e[tag=abyssblood_visual_2] at @s run tp @s ~-0.7 ~ ~
execute as @e[tag=abyssblood_visual_3] at @s run tp @s ~ ~ ~0.7
execute as @e[tag=abyssblood_visual_4] at @s run tp @s ~ ~ ~-0.7
execute as @e[tag=abyssblood_visual_5] at @s run tp @s ~0.6 ~ ~0.6
execute as @e[tag=abyssblood_visual_6] at @s run tp @s ~-0.6 ~ ~-0.6
execute as @e[tag=abyssblood_visual_7] at @s run tp @s ~0.6 ~ ~-0.6
execute as @e[tag=abyssblood_visual_8] at @s run tp @s ~-0.6 ~ ~0.6

kill @e[tag=siren_bleed]

execute at @e[tag=abyssblood_visuals] run particle block{block_state:{Name:"minecraft:bubble_coral"}} ~ ~ ~ 0.3 0.1 0.3 0.1 8
scoreboard players add @e[tag=abyssblood_visuals] stitches 1
kill @e[tag=abyssblood_visuals,scores={stitches=8..}]

# Rip the Wounds HERE

scoreboard players set @a[tag=form_siren,scores={char=53,s2_timer=1,HP=..4}] spellCD2 20
scoreboard players set @a[tag=form_siren,scores={char=53,s2_timer=1,HP=..4}] s2_timer 100

execute as @a[tag=form_siren,scores={char=53,s2_timer=1,CC_silence=0,HP=5..}] at @s positioned ^ ^ ^1 run damage @s 4
scoreboard players remove @a[tag=form_siren,scores={char=53,s2_timer=1,CC_silence=0}] stitches 20

execute at @a[tag=form_siren,scores={char=53,s2_timer=1,CC_silence=0}] run playsound entity.witch.hurt master @a[distance=..10] ~ ~ ~ 0.8 1.5 1
execute at @a[tag=form_siren,scores={char=53,s2_timer=1,CC_silence=0}] run playsound entity.witch.hurt master @a[distance=..10] ~ ~ ~ 0.8 1.5 1
execute at @a[tag=form_siren,scores={char=53,s2_timer=1,CC_silence=0}] run playsound item.bucket.empty_tadpole master @a[distance=..10] ~ ~ ~ 0.6 1.5 1
execute at @a[tag=form_siren,scores={char=53,s2_timer=1,CC_silence=0}] run playsound entity.squid.hurt master @a[distance=..10] ~ ~ ~ 0.4 1.2 1
execute at @a[tag=form_siren,scores={char=53,s2_timer=1,CC_silence=0}] run playsound item.bucket.empty master @a[distance=..10] ~ ~ ~ 1 2 1

execute at @a[tag=form_siren,scores={char=53,s2_timer=1,CC_silence=0}] run particle falling_dust{block_state:{Name:"minecraft:bubble_coral"}} ~ ~0.5 ~ 2 0.5 2 0.1 100
execute at @a[tag=form_siren,scores={char=53,s2_timer=1,CC_silence=0}] run particle sweep_attack ~ ~1 ~ 0.1 0 0.1 0 100
execute at @a[tag=form_siren,scores={char=53,s2_timer=1,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bubble_coral_block"},Tags:["bloody_cone_1","blood_splash","projectile","entities_stitchedsiren"]}
execute at @a[tag=form_siren,scores={char=53,s2_timer=1,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bubble_coral_block"},Tags:["bloody_cone_2","blood_splash","projectile","entities_stitchedsiren"]}
execute at @a[tag=form_siren,scores={char=53,s2_timer=1,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bubble_coral_block"},Tags:["bloody_cone_3","blood_splash","projectile","entities_stitchedsiren"]}
execute at @a[tag=form_siren,scores={char=53,s2_timer=1,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bubble_coral_block"},Tags:["bloody_cone_4","blood_splash","projectile","entities_stitchedsiren"]}
execute at @a[tag=form_siren,scores={char=53,s2_timer=1,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bubble_coral_block"},Tags:["bloody_cone_5","blood_splash","projectile","entities_stitchedsiren"]}
execute at @a[tag=form_siren,scores={char=53,s2_timer=1,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bubble_coral_block"},Tags:["bloody_cone_6","blood_splash","projectile","entities_stitchedsiren"]}
execute at @a[tag=form_siren,scores={char=53,s2_timer=1,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bubble_coral_block"},Tags:["bloody_cone_7","blood_splash","projectile","entities_stitchedsiren"]}
execute at @a[tag=form_siren,scores={char=53,s2_timer=1,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bubble_coral_block"},Tags:["bloody_cone_8","blood_splash","projectile","entities_stitchedsiren"]}
execute at @a[tag=form_siren,scores={char=53,s2_timer=1,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:bubble_coral_block"},Tags:["bloody_cone_9","blood_splash","projectile","entities_stitchedsiren"]}


scoreboard players operation @e[tag=projectile,tag=blood_splash] Team = @p[scores={char=53}] Team
execute as @e[tag=blood_splash] run tp @p[scores={char=53,s2_timer=1}]
execute at @a[scores={char=53,s2_timer=1,CC_silence=0}] as @e[tag=blood_splash] at @s run tp @s ~ ~1 ~ 

execute at @a[scores={char=53,s2_timer=1,CC_silence=0}] as @e[tag=bloody_cone_1] run rotate @s ~40 ~
execute at @a[scores={char=53,s2_timer=1,CC_silence=0}] as @e[tag=bloody_cone_2] run rotate @s ~30 ~
execute at @a[scores={char=53,s2_timer=1,CC_silence=0}] as @e[tag=bloody_cone_3] run rotate @s ~20 ~
execute at @a[scores={char=53,s2_timer=1,CC_silence=0}] as @e[tag=bloody_cone_4] run rotate @s ~10 ~
execute at @a[scores={char=53,s2_timer=1,CC_silence=0}] as @e[tag=bloody_cone_5] run rotate @s ~ ~
execute at @a[scores={char=53,s2_timer=1,CC_silence=0}] as @e[tag=bloody_cone_6] run rotate @s ~-10 ~
execute at @a[scores={char=53,s2_timer=1,CC_silence=0}] as @e[tag=bloody_cone_7] run rotate @s ~-20 ~
execute at @a[scores={char=53,s2_timer=1,CC_silence=0}] as @e[tag=bloody_cone_8] run rotate @s ~-30 ~
execute at @a[scores={char=53,s2_timer=1,CC_silence=0}] as @e[tag=bloody_cone_9] run rotate @s ~-40 ~


execute as @e[tag=blood_splash] at @s run tp @s ^ ^ ^0.6


execute at @e[tag=blood_splash] as @e[distance=..3,tag=valid_spell_target,scores={siren_blood_heal=0}] unless score @s Team = @p[scores={char=53}] Team run scoreboard players set @s siren_blood_heal 1


execute at @a[scores={char=53,s2_timer=15..}] run kill @e[tag=blood_splash]


scoreboard players add @e[scores={siren_blood_heal=1..}] siren_blood_heal 1
execute at @e[scores={siren_blood_heal=2}] run particle falling_dust{block_state:{Name:"minecraft:bubble_coral"}} ~ ~1 ~ 0.5 0.8 0.5 0.1 50
execute at @e[scores={siren_blood_heal=2}] run playsound entity.player.splash.high_speed ambient @a[distance=..10] ~ ~ ~ 0.4 2 1
execute as @a[tag=!form_siren,tag=!form_stitched,scores={siren_blood_heal=3}] if score @s Team = @p[scores={char=53}] Team run effect give @s instant_health
execute as @e[scores={siren_blood_heal=3}] unless score @s Team = @p[scores={char=53}] Team run effect give @s slowness 2 3
execute as @e[scores={siren_blood_heal=3}] unless score @s Team = @p[scores={char=53}] Team run damage @s 6 generic by @p[scores={char=53}] from @p[scores={char=53}]
execute as @e[scores={siren_blood_heal=3}] unless score @s Team = @p[scores={char=53}] Team run damage @s 6 generic by @p[scores={char=53}] from @p[scores={char=53}]

scoreboard players set @e[scores={siren_blood_heal=40..}] siren_blood_heal 0


execute at @e[tag=blood_splash] run particle minecraft:falling_dust{block_state:{Name:"minecraft:bubble_coral"}} ~ ~ ~ 1 0.3 1 0.1 1
execute at @e[tag=blood_splash] run particle block{block_state:{Name:"minecraft:bubble_coral"}} ~ ~ ~ 0 0 0 0.1 5
execute at @e[tag=blood_splash] run particle bubble_pop ~ ~ ~ 0.2 0.2 0.2 0.1 5


# siren

scoreboard players set @a[scores={s1_timer=200,char=53}] spellCD1 200
scoreboard players add @a[scores={s1_timer=1..,char=53}] s1_timer 1
scoreboard players add @a[scores={s1_timer_recast=1..,char=53}] s1_timer_recast 1
scoreboard players add @a[scores={s3_timer=1..,char=53}] s3_timer 1
scoreboard players set @a[scores={s1_timer=401..,char=53}] s3_timer 0
scoreboard players set @a[scores={s1_timer=401..,char=53}] s1_timer_recast 0
scoreboard players set @a[scores={s1_timer=401..,char=53}] s1_timer 0


scoreboard players set @a[scores={s2_timer=1,char=53}] spellCD2 120
scoreboard players add @a[scores={s2_timer=1..,char=53}] s2_timer 1
scoreboard players set @a[scores={s2_timer=121..,char=53}] s2_timer 0

execute as @a[scores={char=53}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword",Slot:0b}]}] run clear @a[scores={char=53}] iron_sword
item replace entity @a[tag=form_stitched,scores={char=53}] hotbar.0 with iron_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Scalpel"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.5d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1
item replace entity @a[tag=form_siren,scores={char=53}] hotbar.0 with iron_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Scalpel"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:aqua_affinity":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.5d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1


#stitched
execute as @a[tag=form_stitched,scores={char=53,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=53}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[tag=form_stitched,scores={char=53,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:shears",minecraft:custom_name={text:"Botched Surgery",color:"dark_aqua",bold:1b}] 1

execute as @a[tag=form_stitched,scores={char=53,s1_timer=10..,s1_timer_recast=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=53}] carrot_on_a_stick[custom_data={s1:2}]
item replace entity @a[tag=form_stitched,scores={char=53,s1_timer=20..199,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:2},minecraft:item_model="minecraft:shears",minecraft:custom_name={text:"Botched Surgery (Second)",color:"dark_aqua",bold:1b}] 1

execute as @a[tag=form_stitched,scores={char=53,s1_timer=10..,s1_timer_recast=10..,s3_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=53}] carrot_on_a_stick[custom_data={s3:1}]
item replace entity @a[tag=form_stitched,scores={char=53,s1_timer=20..199,s1_timer_recast=20..,s3_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s3:1},minecraft:item_model="minecraft:shears",minecraft:custom_name={text:"Botched Surgery (Third)",color:"dark_aqua",bold:1b}] 1


execute as @a[tag=form_stitched,scores={char=53,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=53}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[tag=form_stitched,scores={char=53,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:nether_sprouts",minecraft:custom_name={text:"Stitch Up",color:"dark_aqua",bold:1b}] 1

#siren
execute as @a[tag=form_siren,scores={char=53,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=53}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[tag=form_siren,scores={char=53,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:tube_coral_fan",minecraft:custom_name={text:"Abyssflow Dance",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:aqua_affinity":1}] 1

execute as @a[tag=form_siren,scores={char=53,s1_timer=10..199,s1_timer_recast=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=53}] carrot_on_a_stick[custom_data={s1:2}]
item replace entity @a[tag=form_siren,scores={char=53,s1_timer=20..199,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:2},minecraft:item_model="minecraft:tube_coral_fan",minecraft:custom_name={text:"Abyssflow Dance (Second)",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:aqua_affinity":1}] 1

execute as @a[tag=form_siren,scores={char=53,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=53}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[tag=form_siren,scores={char=53,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:bubble_coral",minecraft:custom_name={text:"Rip the Wounds",color:"dark_aqua",bold:1b}] 1


tag @a[scores={char=53},tag=!form_stitched,tag=!form_siren] add form_stitched