kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stick"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_axe"}}]

#big warm hug

execute as @a[scores={char=19,s1_timer=1,CC_silence=0}] at @s positioned ~ ~1.1 ~ run function chars:lunatic_hug_raycast
execute at @a[scores={char=19,s1_timer=1,CC_silence=0}] run playsound entity.allay.item_taken master @a[distance=..15] ~ ~ ~ 0.9 1.4 1

execute at @a[scores={char=19,s1_timer=1,CC_silence=0}] unless entity @e[distance=0.5..,tag=hug] run scoreboard players set @a[scores={char=19}] spellCD1 10
execute at @a[scores={char=19,s1_timer=1,CC_silence=0}] unless entity @e[distance=0.5..,tag=hug] run scoreboard players set @a[scores={char=19}] s1_timer 290


tp @a[scores={char=19}] @p[distance=1..,tag=hug]
effect give @a[tag=hug] absorption 4 2
execute at @a[tag=hug] run effect give @a[scores={char=19}] absorption 4 1
execute at @a[tag=hug] run particle heart ~ ~1.5 ~ 0.5 1 0.5 0.1 20 normal
execute at @a[tag=hug] run playsound entity.allay.ambient_with_item master @a[distance=..15] ~ ~ ~ 0.6 1.2 1
execute at @a[tag=hug] run playsound item.armor.equip_leather master @a[distance=..15] ~ ~ ~ 1 0.8 1
tag @a remove hug


#kind words

execute at @a[scores={char=19}] as @a[distance=1..5] if score @s Team = @p[scores={char=19}] Team run tag @s add lunatic_valid_words_target
execute at @a[scores={char=19}] as @a[distance=5.1..] if score @s Team = @p[scores={char=19}] Team run tag @s remove lunatic_valid_words_target
execute at @a[scores={char=19}] as @a unless score @s Team = @p[scores={char=19}] Team run tag @s remove lunatic_valid_words_target

execute as @a[scores={char=19,s2_timer=1,CC_silence=0}] at @s positioned ~ ~1.3 ~ run function chars:lunatic_words_raycast
execute at @a[scores={char=19,s2_timer=1,CC_silence=0}] run playsound entity.allay.ambient_with_item master @a[distance=..15] ~ ~ ~ 0.3 0.9 1

execute at @a[scores={char=19,s2_timer=1,CC_silence=0}] run particle heart ~ ~1 ~ 2 1 2 0.1 3 normal

execute at @a[scores={char=19,s2_timer=1,CC_silence=0}] unless entity @e[distance=0.5..,tag=kindly_worded] run scoreboard players set @a[scores={char=19}] spellCD2 10
execute at @a[scores={char=19,s2_timer=1,CC_silence=0}] unless entity @e[distance=0.5..,tag=kindly_worded] run scoreboard players set @a[scores={char=19}] s2_timer 150

effect give @a[tag=kindly_worded] instant_health 1
effect give @a[tag=kindly_worded] speed 2 2
execute at @a[tag=kindly_worded] run particle heart ~ ~1 ~ 2 1 2 0.1 30 normal
execute at @a[tag=kindly_worded] run playsound entity.player.levelup master @a[distance=..8] ~ ~ ~ 0.4 1.5 1
tag @a remove kindly_worded


#despair
execute as @a[scores={char=19,despair=400}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:3b}]}] run clear @a[scores={char=19}] carrot_on_a_stick[custom_data={s3:1}]
item replace entity @a[scores={char=19,despair=400}] hotbar.3 with carrot_on_a_stick[custom_data={s3:1},minecraft:item_model="minecraft:player_head",minecraft:custom_name={text:"My Inner Friend",color:"dark_aqua",bold:1b},minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE3YTY0ZjY5MjM0YjE5MzBhNDA5Yzk1Y2I1YTM5NzBjYzE5ZWNlMWYxMTlmM2JjZjZiZGIwZTMwN2EyMmY2MyJ9fX0="}]}] 1

scoreboard players add @a[scores={char=19,out_of_combat=200..}] regen 2

scoreboard players set @a[scores={char=19,despair=401..}] despair 400
scoreboard players operation @a[scores={char=19}] despair += @a[scores={char=19}] universal_damagetaken_shield

scoreboard players set @a[scores={universal_death=1..}] despair 0
scoreboard players set @a[scores={in_combat=1..,char=19}] s0_timer 0

scoreboard players add @a[scores={char=19,out_of_combat=100..}] s0_timer 1
scoreboard players set @a[scores={s0_timer=101..,char=19}] s0_timer 60

execute at @a[scores={char=19,s0_timer=100}] run particle heart ~ ~ ~ 0.5 0.1 0.5 1 3 normal



#demon things

#stand on/off

scoreboard players set @a[scores={char=19,CC_silence=1..,s3_timer=1..}] s3_timer 0

execute at @a[scores={s4_timer=1,char=666}] run function chars:standoff
execute at @a[scores={s4_timer=1,char=19}] run particle block{block_state:{Name:"minecraft:cyan_wool"}} ~ ~ ~ 0.5 1.2 0.5 0.1 200 normal


execute at @a[scores={s3_timer=1,char=19,CC_silence=0}] run function chars:standopower
execute at @a[scores={s3_timer=1,char=666}] run playsound entity.ravager.roar master @a ~ ~ ~ 1.0 0.8 1.0
execute at @a[scores={s3_timer=1,char=666}] run particle totem_of_undying ~ ~ ~ 0.5 1.2 0.5 0.1 100 normal
scoreboard players set @a[scores={s3_timer=1,char=666}] lunatic_delay 1


execute as @a[scores={char=666,lunatic_delay=40..,char=666}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:3b}]}] run clear @a[scores={char=666}] warped_fungus_on_a_stick[custom_data={s3:1}]
item replace entity @a[scores={char=666,lunatic_delay=40..,char=666}] hotbar.3 with warped_fungus_on_a_stick[custom_data={s4:1},minecraft:item_model="minecraft:player_head",minecraft:custom_name={text:"My Mortal Host",color:"dark_aqua",bold:1b},minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmVmMDk2M2MwYTgxODg5ZDYxYWViOWU1MzFiNzE1OThkNTg5YjEyODE1OGJiNDBmNzMyNzRiOGM1ODhjMmJkMSJ9fX0"}]}] 1

effect give @a[scores={lunatic_delay=1..3,char=666}] regeneration 2 10
scoreboard players add @a[scores={lunatic_delay=1..41}] lunatic_delay 1

scoreboard players set @a[scores={s3_timer=1..,char=666}] spell_demo_3 0


scoreboard players add @a[scores={char=666,universal_kill=1..}] despair 100

scoreboard players remove @a[scores={char=666}] despair 1
execute at @a[scores={char=666,despair=..0}] run particle block{block_state:{Name:"minecraft:cyan_wool"}} ~ ~ ~ 0.5 1.2 0.5 0.1 200 normal
execute at @a[scores={char=666,despair=..0}] run function chars:standoff

#big painful beating

scoreboard players set @a[scores={char=666,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=666,s1_timer=1,CC_silence=1..}] s1_timer 240

execute at @a[scores={char=666}] as @a[distance=0.1..8] unless score @s Team = @p[scores={char=666}] Team run tag @s add demon_valid_beatdown_target
execute at @a[scores={char=666}] as @a[distance=8.1..] unless score @s Team = @p[scores={char=666}] Team run tag @s remove demon_valid_beatdown_target
execute at @a[scores={char=666}] as @a if score @s Team = @p[scores={char=666}] Team run tag @s remove demon_valid_beatdown_target

execute at @a[scores={char=666,s1_timer=1,CC_silence=0}] unless entity @a[distance=..8,tag=demon_valid_beatdown_target] run scoreboard players set @a[scores={char=666}] spellCD1 10
execute at @a[scores={char=666,s1_timer=1,CC_silence=0}] unless entity @a[distance=..8,tag=demon_valid_beatdown_target] run scoreboard players set @a[scores={char=666}] s1_timer 250

scoreboard players set @a[scores={char=666,s1_timer=2..3,CC_silence=0}] unstoppable 60


execute at @a[scores={char=666,s1_timer=2,CC_silence=0}] run playsound entity.zombie.infect master @a[distance=..10] ~ ~ ~ 1 2 1
effect give @a[scores={char=666,s1_timer=2,CC_silence=0}] resistance 1 100 true
scoreboard players set @a[scores={char=666,s1_timer=2,CC_silence=0}] CC_intangible 20
effect give @a[scores={char=666,s1_timer=2,CC_silence=0}] weakness 1 100 true
execute at @a[scores={char=666,s1_timer=2}] run summon marker ~ ~ ~ {Tags:["demondash","entities_demon"]}
tp @e[tag=demondash,limit=1] @a[scores={char=666,s1_timer=2},limit=1]
execute at @a[scores={char=666,s1_timer=2},limit=1] as @p[distance=0.5..8,tag=valid_spell_target] unless score @s Team = @p[scores={char=666}] Team run tag @s add demon_beatdown_target

execute at @a[scores={char=666,s1_timer=2}] run tp @e[tag=demondash,limit=1] ~ ~0.5 ~ facing entity @p[distance=..10,tag=demon_beatdown_target]


execute as @e[tag=demondash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=demondash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=demondash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=demondash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=demondash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=demondash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=demondash] at @s run tp @s ^ ^ ^1

tp @a[scores={char=666,s1_timer=2..9}] @e[tag=demondash,limit=1]
execute at @a[scores={char=666,s1_timer=10}] run kill @e[tag=demondash]
execute as @a[scores={char=666,s1_timer=10}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

execute at @a[scores={char=666,s1_timer=1..12,CC_silence=0}] as @p[distance=..2,tag=valid_spell_target,scores={beating=0}] unless score @s Team = @p[scores={char=666}] Team run scoreboard players set @s beating 1

scoreboard players add @a[scores={beating=1..}] beating 1
scoreboard players set @a[scores={beating=41..}] beating 0
scoreboard players set @a[scores={beating=2}] CC_knockup 30
scoreboard players set @a[scores={beating=31}] CC_crippled 80

execute at @a[scores={beating=1..}] run particle minecraft:sweep_attack ~ ~0.2 ~ 0.2 0.5 0.2 1 4
execute at @a[scores={beating=5}] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @a[scores={beating=10}] run playsound entity.player.attack.crit master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={beating=15}] run playsound entity.player.attack.crit master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={beating=20}] run playsound entity.player.attack.crit master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={beating=25}] run playsound entity.player.attack.crit master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={beating=30}] run playsound entity.player.attack.crit master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={beating=35}] run playsound entity.player.attack.crit master @a[distance=..10] ~ ~ ~ 1 0.8 1
#execute at @a[scores={beating=40}] run playsound entity.player.attack.crit master @a[distance=..10] ~ ~ ~ 1 0.3 1

#cranium breaker


scoreboard players set @a[scores={char=666,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=666,s2_timer=1,CC_silence=1..}] s2_timer 200

execute at @a[scores={char=666}] as @a[distance=0.1..6] unless score @s Team = @p[scores={char=666}] Team run tag @s add demon_valid_breaker_target
execute at @a[scores={char=666}] as @a[distance=6.1..] unless score @s Team = @p[scores={char=666}] Team run tag @s remove demon_valid_breaker_target
execute at @a[scores={char=666}] as @a if score @s Team = @p[scores={char=666}] Team run tag @s remove demon_valid_breaker_target

execute at @a[scores={char=666,s2_timer=1,CC_silence=0}] unless entity @a[distance=..6,tag=demon_valid_breaker_target] run scoreboard players set @a[scores={char=666}] spellCD2 20
execute at @a[scores={char=666,s2_timer=1,CC_silence=0}] unless entity @a[distance=..6,tag=demon_valid_breaker_target] run scoreboard players set @a[scores={char=666}] s2_timer 200

execute at @a[scores={char=666,s2_timer=2,CC_silence=0}] run playsound entity.ravager.attack master @a[distance=..10] ~ ~ ~ 1 1 1
execute at @a[scores={char=666,s2_timer=1..19,CC_silence=0}] run particle crit ~ ~1 ~ 1 1 1 0.5 10

execute at @a[scores={char=666,s2_timer=20,CC_silence=0}] as @p[distance=0.4..6,tag=valid_spell_target] unless score @s Team = @p[scores={char=666}] Team run tag @s add demon_breaker


execute as @a[scores={char=666,s2_timer=20,CC_silence=0}] at @s run tp @s ~ ~ ~ facing entity @p[distance=..6,tag=demon_breaker]
effect give @a[tag=demon_breaker] blindness 1 0
scoreboard players set @a[tag=demon_breaker] CC_stun 20
execute as @e[tag=demon_breaker] run damage @s 6 generic by @p[scores={char=666}] from @p[scores={char=666}]
execute at @e[tag=demon_breaker] run particle crit ~ ~1.5 ~ 0.2 0.2 0.2 0.5 20
execute at @e[tag=demon_breaker] run particle block{block_state:{Name:"minecraft:dirt"}} ~ ~1.5 ~ 0.2 0.2 0.2 1 50
execute at @e[tag=demon_breaker] run playsound entity.zombie.break_wooden_door master @a[distance=..10] ~ ~ ~ 1 1.2 1
execute at @e[tag=demon_breaker] run playsound entity.skeleton.hurt master @a[distance=..10] ~ ~ ~ 1 0.1 1
tag @a remove demon_breaker


execute as @a[scores={char=19,despair=..399}] run title @s[scores={char=19}] actionbar [{text:"[",bold:1b,color:"dark_green",type:"text"},{text:" Despair: ",color:"gray",bold:0b,type:"text"},{score:{name:"@s",objective:"despair"},color:"green",bold:0b,type:"score"},{text:"/",color:"dark_green",bold:1b,type:"text"},{text:"400 ",color:"green",bold:0b,type:"text"},{text:"]",bold:1b,color:"dark_green",type:"text"}]
execute as @a[scores={char=19,despair=400..}] run title @s[scores={char=19}] actionbar [{text:"[",bold:1b,color:"dark_green",type:"text"},{text:" MY TURN! ",color:"green",bold:0b,type:"text"},{text:"]",bold:1b,color:"dark_green",type:"text"}]

execute as @a[scores={char=666}] run title @s[scores={char=666}] actionbar [{text:"[",bold:1b,color:"dark_green",type:"text"},{text:" Despair: ",bold:0b,color:"gray",type:"text"},{score:{name:"@s",objective:"despair"},color:"green",bold:0b,type:"score"},{text:"/",color:"dark_green",bold:1b,type:"text"},{text:"400 ",color:"green",bold:0b,type:"text"},{text:"]",bold:1b,color:"dark_green",type:"text"}]



# lunatic

scoreboard players set @a[scores={s1_timer=1,char=19}] spellCD1 300
scoreboard players add @a[scores={s1_timer=1..,char=19}] s1_timer 1
scoreboard players set @a[scores={s1_timer=301..,char=19}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=19}] spellCD2 160
scoreboard players add @a[scores={s2_timer=1..,char=19}] s2_timer 1
scoreboard players set @a[scores={s2_timer=161..,char=19}] s2_timer 0

scoreboard players add @a[scores={s4_timer=1..,char=19}] s4_timer 1
scoreboard players set @a[scores={s4_timer=20..,char=19}] s4_timer 0

execute as @a[scores={char=19}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stick",Slot:0b}]}] run clear @a[scores={char=19}] stick
item replace entity @a[scores={char=19}] hotbar.0 with minecraft:stick[minecraft:custom_name={bold:1b,color:"gray",text:"Stick"},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"},{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"}],minimum_attack_charge=1] 1

execute as @a[scores={char=19,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=19}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=19,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:axolotl_spawn_egg",minecraft:custom_name={text:"Big Warm hug",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=19,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=19}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=19,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:book",minecraft:custom_name={text:"Kind Words",color:"dark_aqua",bold:1b}] 1


# demon

scoreboard players set @a[scores={s1_timer=1,char=666}] spellCD1 260
scoreboard players add @a[scores={s1_timer=1..,char=666}] s1_timer 1
scoreboard players set @a[scores={s1_timer=261..,char=666}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=666}] spellCD2 220
scoreboard players add @a[scores={s2_timer=1..,char=666}] s2_timer 1
scoreboard players set @a[scores={s2_timer=221..,char=666}] s2_timer 0

scoreboard players add @a[scores={s3_timer=1..,char=666}] s3_timer 1
scoreboard players set @a[scores={s3_timer=20..,char=666}] s3_timer 0

execute as @a[scores={char=666}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_axe",Slot:0b}]}] run clear @a[scores={char=666}] golden_axe
item replace entity @a[scores={char=666}] hotbar.0 with minecraft:golden_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Claws"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:4.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1

execute as @a[scores={char=666,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=666}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=666,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:glowstone_dust",minecraft:custom_name={text:"Big Painful Beating",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=666,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=666}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=666,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:sunflower",minecraft:custom_name={text:"Cranium Breaker",color:"dark_aqua",bold:1b}] 1
