kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_shovel"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:trident"}}]


#borrowed time

item replace entity @p[scores={char=17,passive_technomancer=0}] armor.head with player_head[custom_name={bold:1b,color:"aqua",text:"Dr. Keter's Helmet"},enchantments={"projectile_protection":2},attribute_modifiers=[{id:"armor",type:"max_health",amount:0.0d,operation:"add_value",slot:"head"}],profile={properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODM5ZDJkNWUwZTlhMDY0MjU5MzVhMjU3MDcwYzUwYTBkNzM1YjBmNWQ5OGE1YTliM2EyODRjNjFmNDIwNDU1YyJ9fX0="}]}] 1
item replace entity @p[scores={char=17,passive_technomancer=1..7}] armor.head with player_head[custom_name={bold:1b,color:"aqua",text:"Dr. Keter's Helmet"},enchantments={"projectile_protection":2},attribute_modifiers=[{id:"armor",type:"max_health",amount:0.0d,operation:"add_value",slot:"head"}],profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzI2NWUxMDc5Mjg3ZDQ3NmY2ODk2NzkzMGQ0MjQwZTI5YTUyYjQ2M2FiYWQ5MGZmOWJmZWI4NTc1ODRjYjMyMiJ9fX0="}]}] 1
item replace entity @p[scores={char=17,passive_technomancer=100..}] armor.head with player_head[custom_name={bold:1b,color:"aqua",text:"Dr. Keter's Helmet"},enchantments={"projectile_protection":2},attribute_modifiers=[{id:"armor",type:"max_health",amount:0.0d,operation:"add_value",slot:"head"}],profile={properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODM5ZDJkNWUwZTlhMDY0MjU5MzVhMjU3MDcwYzUwYTBkNzM1YjBmNWQ5OGE1YTliM2EyODRjNjFmNDIwNDU1YyJ9fX0="}]}] 1


title @a[scores={char=17,passive_technomancer=100..140}] actionbar [{text:"[",bold:1b,color:"dark_aqua",type:"text"},{text:"",color:"aqua",bold:0b,type:"text"},{text:"=====",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"dark_aqua",type:"text"}]
title @a[scores={char=17,passive_technomancer=140..180}] actionbar [{text:"[",bold:1b,color:"dark_aqua",type:"text"},{text:"=",color:"aqua",bold:0b,type:"text"},{text:"====",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"dark_aqua",type:"text"}]
title @a[scores={char=17,passive_technomancer=180..220}] actionbar [{text:"[",bold:1b,color:"dark_aqua",type:"text"},{text:"==",color:"aqua",bold:0b,type:"text"},{text:"===",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"dark_aqua",type:"text"}]
title @a[scores={char=17,passive_technomancer=220..260}] actionbar [{text:"[",bold:1b,color:"dark_aqua",type:"text"},{text:"===",color:"aqua",bold:0b,type:"text"},{text:"==",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"dark_aqua",type:"text"}]
title @a[scores={char=17,passive_technomancer=260..300}] actionbar [{text:"[",bold:1b,color:"dark_aqua",type:"text"},{text:"====",color:"aqua",bold:0b,type:"text"},{text:"=",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"dark_aqua",type:"text"}]
title @a[scores={char=17,passive_technomancer=300..340}] actionbar [{text:"[",bold:1b,color:"dark_aqua",type:"text"},{text:"=====",color:"aqua",bold:0b,type:"text"},{text:"",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"dark_aqua",type:"text"}]

title @a[scores={char=17,passive_technomancer=0}] actionbar [{text:"[",bold:1b,color:"dark_aqua",type:"text"},{text:" Borrowed Time is ready ",color:"gray",bold:0b,type:"text"},{text:"]",bold:1b,color:"dark_aqua",type:"text"}]
title @a[scores={char=17,passive_technomancer=1..6}] actionbar [{text:"[",bold:1b,color:"dark_aqua",type:"text"},{text:" ACTIVE ",color:"aqua",bold:0b,type:"text"},{text:"]",bold:1b,color:"dark_aqua",type:"text"}]


scoreboard players set @a[scores={char=17,in_combat=1..5,passive_technomancer=0}] passive_technomancer 1
scoreboard players add @a[scores={char=17,passive_technomancer=1..5}] passive_technomancer 1

execute at @a[scores={char=17,passive_technomancer=3}] run playsound block.piston.extend master @a[distance=..12] ~ ~ ~ 1 1.5 1 
execute at @a[scores={char=17,passive_technomancer=2..3}] run playsound item.armor.equip_iron master @a[distance=..12] ~ ~ ~ 1 0.8 1
effect give @a[scores={char=17,passive_technomancer=2..3}] absorption infinite 3 true
effect give @a[scores={char=17,passive_technomancer=2..3}] speed 3 1 true

execute at @a[scores={char=17,out_of_combat=100..101,passive_technomancer=1..100}] run playsound block.piston.contract master @a[distance=..12] ~ ~ ~ 1 1.5 1 
effect clear @a[scores={char=17,out_of_combat=100..101,passive_technomancer=1..100}] absorption
scoreboard players set @a[scores={char=17,out_of_combat=100..101,passive_technomancer=1..7}] passive_technomancer 100

scoreboard players add @a[scores={char=17,passive_technomancer=100..,in_combat=0}] passive_technomancer 1
scoreboard players set @a[scores={char=17,passive_technomancer=340..}] passive_technomancer 0

#plasma polearms (weapon switch)

execute at @a[scores={char=17,s1_timer=1}] run playsound block.lever.click master @a[distance=..6] ~ ~ ~ 0.7 1 1
execute at @a[scores={char=17,s1_timer=1}] run playsound entity.illusioner.prepare_mirror master @a[distance=..6] ~ ~ ~ 0.4 2 1
tag @a[scores={char=17,s1_timer=1},tag=techno_melee] add technomancer_switch_to_harpoon
tag @a[scores={char=17,s1_timer=1},tag=techno_ranged] add technomancer_switch_to_spear
execute at @a[scores={char=17,s1_timer=1}] run particle enchanted_hit ~ ~0.8 ~ 0.5 0.8 0.5 0.1 100
execute at @a[scores={char=17,s1_timer=1}] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:trident",count:1}}]
clear @a[scores={char=17,s1_timer=1}] trident
clear @a[scores={char=17,s1_timer=1}] diamond_shovel
scoreboard players set @a[scores={char=17,s1_timer=1}] tridentcd 0

tag @a[scores={char=17},tag=technomancer_switch_to_harpoon] remove techno_melee
tag @a[scores={char=17},tag=technomancer_switch_to_harpoon] add techno_ranged

tag @a[scores={char=17},tag=technomancer_switch_to_spear] remove techno_ranged
tag @a[scores={char=17},tag=technomancer_switch_to_spear] add techno_melee

tag @a remove technomancer_switch_to_harpoon
tag @a remove technomancer_switch_to_spear

#offhand harpoon shoots

execute at @a[scores={char=17,s0_timer=1}] run playsound item.trident.throw master @a[distance=..15] ~ ~ ~ 1 0.7 1
execute at @a[scores={char=17,s0_timer=1}] run playsound entity.zombie_villager.cure master @a[distance=..15] ~ ~ ~ 0.1 2 1
execute at @a[scores={char=17,s0_timer=1}] run summon item_display ~ ~1 ~ {teleport_duration:1,transformation:{left_rotation: [0.0f, 0.7071068f, 0.7071068f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0000012f, 0.9999998f, 0.99999946f], translation: [0.5f, -0.5f, 0.5f]},item:{id:"minecraft:trident",count:1},Tags:["techno_harpoon","projectile","entities_technomancer"]}
scoreboard players operation @e[tag=projectile,tag=techno_harpoon] Team = @p[scores={char=17}] Team
scoreboard players add @e[tag=techno_harpoon] tridentcd 1 
tp @e[tag=techno_harpoon,limit=1,scores={tridentcd=1}] @a[scores={char=17,s0_timer=1},limit=1]
execute at @a[scores={char=17,s0_timer=1,CC_silence=0}] as @e[tag=techno_harpoon,limit=1] at @s run tp @s ~ ~1.4 ~ 

execute as @e[tag=techno_harpoon,tag=come_back_to_me_you_little_shit] at @s run tp @s ~ ~ ~ facing entity @p[scores={char=17}] eyes
execute as @e[tag=techno_harpoon,tag=come_back_to_me_you_little_shit] at @s if entity @p[scores={char=17},distance=..2] run kill @s

execute as @e[tag=techno_harpoon,scores={tridentcd=1..}] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=techno_harpoon,scores={tridentcd=1..}] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=techno_harpoon,scores={tridentcd=6..},tag=!come_back_to_me_you_little_shit] at @s run tp @s ~ ~ ~ ~ ~0.5
execute as @e[tag=techno_harpoon,scores={tridentcd=10..},tag=!come_back_to_me_you_little_shit] at @s run tp @s ~ ~ ~ ~ ~0.5

execute at @e[tag=techno_harpoon] run particle enchanted_hit ~ ~ ~ 0.05 0.05 0.05 0.01 3
#execute at @e[tag=techno_harpoon] run particle dust{color:[0.67,0.67,0.67],scale:1} ~ ~ ~ 0.4 0.4 0.4 0 3

execute as @e[tag=techno_harpoon] at @s positioned ~ ~ ~ unless block ^ ^ ^0.4 #dash run playsound item.trident.hit_ground master @a[distance=..12] ~ ~ ~ 1 1.4 1
execute as @e[tag=techno_harpoon] at @s positioned ~ ~ ~ unless block ~ ~ ~ #dash run playsound item.trident.hit_ground master @a[distance=..12] ~ ~ ~ 1 1.4 1
execute as @e[tag=techno_harpoon] at @s positioned ~ ~ ~ unless block ^ ^ ^0.4 #dash run kill @s
execute as @e[tag=techno_harpoon] at @s positioned ~ ~ ~ unless block ~ ~ ~ #dash run kill @s

kill @e[tag=techno_harpoon,tag=!come_back_to_me_you_little_shit,scores={tridentcd=39..}]

execute at @e[tag=techno_harpoon] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s techno_damaged_by_trident matches 1.. unless score @s Team = @p[scores={char=17}] Team at @a[scores={char=17}] run playsound entity.experience_orb.pickup master @a[scores={char=17}] ~ ~ ~ 0.5 0.1 1
execute at @e[tag=techno_harpoon] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s techno_damaged_by_trident matches 1.. unless score @s Team = @p[scores={char=17}] Team run tag @s add techno_tridented
execute at @e[tag=come_back_to_me_you_little_shit] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s techno_damaged_by_returning_trident matches 1.. unless score @s Team = @p[scores={char=17}] Team at @a[scores={char=17}] run playsound entity.experience_orb.pickup master @a[scores={char=17}] ~ ~ ~ 0.5 0.1 1
execute at @e[tag=come_back_to_me_you_little_shit] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s techno_damaged_by_returning_trident matches 1.. unless score @s Team = @p[scores={char=17}] Team run tag @s add techno_tridented_harder

scoreboard players add @e[scores={techno_damaged_by_trident=1..}] techno_damaged_by_trident 1
scoreboard players set @e[scores={techno_damaged_by_trident=6..}] techno_damaged_by_trident 0
scoreboard players add @e[scores={techno_damaged_by_returning_trident=1..}] techno_damaged_by_returning_trident 1
scoreboard players set @e[scores={techno_damaged_by_returning_trident=6..}] techno_damaged_by_returning_trident 0

scoreboard players set @e[tag=techno_tridented] techno_damaged_by_trident 1
damage @e[tag=techno_tridented,limit=1] 4 player_attack by @p[scores={char=17}] from @p[scores={char=17}]
tag @e remove techno_tridented

scoreboard players set @e[tag=techno_tridented_harder] techno_damaged_by_returning_trident 1
damage @e[tag=techno_tridented_harder,limit=1] 8 player_attack by @p[scores={char=17}] from @p[scores={char=17}]
tag @e remove techno_tridented_harder



# parry

execute at @a[scores={char=17,s2_timer=1,CC_silence=0},tag=techno_melee] run playsound entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 .2 1
execute at @a[scores={char=17,s2_timer=3,CC_silence=0},tag=techno_melee] run playsound entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 .4 1
execute at @a[scores={char=17,s2_timer=6,CC_silence=0},tag=techno_melee] run playsound entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 .6 1
execute at @a[scores={char=17,s2_timer=9,CC_silence=0},tag=techno_melee] run playsound entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 1 .8 1

scoreboard players set @a[scores={char=17,s2_timer=1,CC_silence=0},tag=techno_melee] unstoppable 15
effect give @a[scores={char=17,s2_timer=1,CC_silence=0},tag=techno_melee] resistance 1 100 true
execute at @a[scores={char=17,s2_timer=1..15,CC_silence=0},tag=techno_melee] run particle enchanted_hit ~ ~1 ~ 0.6 0.9 0.6 0 10
execute at @a[scores={char=17,s2_timer=1..15,CC_silence=0},tag=techno_melee] run particle sweep_attack ~ ~1 ~ 0.2 0.4 0.2 0 1
tag @a[scores={char=17,s2_timer=1..15,universal_damageresisted=1..},tag=techno_melee] add techno_successful_parry
effect clear @a[scores={char=17,s2_timer=16,CC_silence=0},tag=techno_melee] resistance

execute at @a[tag=techno_successful_parry] run playsound entity.illusioner.prepare_blindness master @a[distance=..12] ~ ~ ~ 0.4 2 1
execute at @a[tag=techno_successful_parry] run playsound item.trident.thunder master @a[distance=..12] ~ ~ ~ 0.4 2 1
tag @a[tag=techno_successful_parry] add techno_parry
effect clear @a[tag=techno_successful_parry] resistance
scoreboard players set @a[tag=techno_successful_parry] unstoppable 0
tag @a remove techno_successful_parry

execute at @a[tag=techno_parry] run particle enchanted_hit ~ ~1 ~ 0.6 0.9 0.6 0 10

tag @a[scores={char=17,s2_timer=80..}] remove techno_parry
tag @a[scores={char=17,universal_hit=1..}] remove techno_parry

# harpoon recall

execute at @a[scores={char=17,s2_timer=1,CC_silence=0},tag=techno_ranged] unless entity @e[tag=techno_harpoon] run scoreboard players set @a[scores={char=17,CC_silence=0}] spellCD2 10
execute at @a[scores={char=17,s2_timer=1,CC_silence=0},tag=techno_ranged] unless entity @e[tag=techno_harpoon] run scoreboard players set @a[scores={char=17,CC_silence=0}] s2_timer 190

#execute at @a[scores={char=17,s2_timer=1,CC_silence=0},tag=techno_ranged] run playsound block.portal.trigger master @a[distance=..12] ~ ~ ~ 0.5 2 1
execute at @a[scores={char=17,s2_timer=1,CC_silence=0},tag=techno_ranged] run tag @n[tag=techno_harpoon] add come_back_to_me_you_little_shit
execute at @a[scores={char=17,s2_timer=1,CC_silence=0},tag=techno_ranged] at @n[tag=come_back_to_me_you_little_shit] run playsound entity.wither.shoot master @a[distance=..16] ~ ~ ~ 0.2 1.0 1.0
#execute at @a[scores={char=17,s2_timer=1,CC_silence=0},tag=techno_ranged] run 


# technomancer

scoreboard players set @a[scores={s0_timer=1,char=17}] spellCD0 30
scoreboard players add @a[scores={s0_timer=1..,char=17}] s0_timer 1
scoreboard players set @a[scores={s0_timer=30..,char=17}] s0_timer 0

scoreboard players set @a[scores={s1_timer=1,char=17}] spellCD1 100
scoreboard players add @a[scores={s1_timer=1..,char=17}] s1_timer 1
scoreboard players set @a[scores={s1_timer=100..,char=17}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=17}] spellCD2 200
scoreboard players add @a[scores={s2_timer=1..,char=17}] s2_timer 1
scoreboard players set @a[scores={s2_timer=201..,char=17}] s2_timer 0

scoreboard players set @a[scores={s3_timer=1,char=17}] spellCD3 200
scoreboard players add @a[scores={s3_timer=1..,char=17}] s3_timer 1
scoreboard players set @a[scores={s3_timer=201..,char=17}] s3_timer 0

execute as @a[scores={char=17},tag=techno_melee] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_shovel",Slot:0b}]}] run clear @a[scores={char=17}] diamond_shovel
item replace entity @a[scores={char=17},tag=techno_melee,tag=!techno_parry] hotbar.0 with diamond_shovel[swing_animation={type:"stab"},minecraft:custom_name={bold:1b,color:"gray",text:"Plasma Spear"},minecraft:item_model="minecraft:diamond_spear",minecraft:unbreakable={},minecraft:enchantments={"minecraft:power":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1
item replace entity @a[scores={char=17},tag=techno_melee,tag=techno_parry] hotbar.0 with diamond_shovel[swing_animation={type:"stab"},minecraft:custom_name={bold:1b,color:"gray",text:"Plasma Spear"},minecraft:item_model="minecraft:iron_spear",minecraft:unbreakable={},minecraft:enchantments={"minecraft:power":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:6.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1

execute as @a[scores={char=17},tag=techno_ranged] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:0b}]}] run clear @a[scores={char=17}] warped_fungus_on_a_stick[custom_data={s0:1}]
item replace entity @a[scores={char=17,s0_timer=0},tag=techno_ranged] hotbar.0 with warped_fungus_on_a_stick[custom_data={s0:1},minecraft:item_model="minecraft:trident",minecraft:custom_name={bold:1b,color:"gray",text:"Plasma Harpoon"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:power":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:0.0d,operation:"add_value",slot:"mainhand"}],minimum_attack_charge=1] 1

execute as @a[scores={char=17,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=17}] carrot_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=17,s1_timer=0,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:tide_armor_trim_smithing_template",minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Plasma Polearm"},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=17,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=17}] warped_fungus_on_a_stick[minecraft:custom_data={s2:1}]
item replace entity @a[scores={char=17,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:sea_lantern",minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Augumented Reflex"},minecraft:enchantments={"minecraft:power":1}] 1





execute as @a[scores={char=17},tag=techno_melee] at @s if entity @s[nbt={equipment:{offhand:{id:"minecraft:trident"}}}] run clear @a[scores={char=17}] trident


tag @a[scores={char=17},tag=!techno_melee,tag=!techno_ranged] add techno_melee