kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword"}}]


#passive

scoreboard players set @a[scores={char=1,HP=11..}] slayer_p_vis 0
scoreboard players add @a[scores={char=1,HP=..10}] slayer_p_vis 1

execute at @a[scores={char=1,slayer_p_vis=4}] run particle damage_indicator ~ ~1 ~ 0.5 0.6 0.5 0.1 1
execute at @a[scores={char=1,slayer_p_vis=8}] run particle damage_indicator ~ ~1 ~ 0.5 0.6 0.5 0.1 1
execute at @a[scores={char=1,slayer_p_vis=10}] run particle angry_villager ~ ~1 ~ 0.5 0.6 0.5 0.1 1

scoreboard players set @a[scores={char=1,slayer_p_vis=11..}] slayer_p_vis 0



#breaking blow

execute at @a[scores={char=1,s1_timer=1,CC_silence=0}] run playsound entity.player.attack.crit master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=1,s1_timer=1,CC_silence=0}] run summon item_display ~ ~ ~ {Tags:["slayer_slash","projectile","entities_slayer"],item:{count:1,id:"minecraft:netherite_sword"},transformation:{left_rotation:[0.0f,0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]}}
scoreboard players operation @e[tag=projectile,tag=slayer_slash] Team = @p[scores={char=1}] Team
tp @e[tag=slayer_slash,limit=1] @a[scores={char=1,s1_timer=1},limit=1]
execute at @a[scores={char=1,s1_timer=1,CC_silence=0}] as @e[tag=slayer_slash,limit=1] at @s run tp @s ~ ~1.2 ~ 
execute at @e[tag=slayer_slash] run particle sweep_attack ~ ~ ~ 0.5 0.2 0.5 0.001 3 normal
execute at @e[tag=slayer_slash] run particle crit ~ ~ ~ 0.2 0.2 0.2 0.001 3 normal
execute as @e[tag=slayer_slash] at @s run tp @s ^ ^ ^0.7
execute at @a[scores={char=1,s1_timer=8}] run kill @e[tag=slayer_slash]


execute at @a[scores={char=1,s1_timer=3}] as @e[tag=slayer_slash] run data merge entity @s {item:{count:1,id:"minecraft:netherite_sword"},transformation:{left_rotation:[0.21263112f,0.6743797f,0.21263112f,0.6743797f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]}}
execute at @a[scores={char=1,s1_timer=6}] as @e[tag=slayer_slash] run data merge entity @s {item:{count:1,id:"minecraft:netherite_sword"},transformation:{left_rotation:[0.40557984f,0.579228f,0.40557984f,0.579228f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]}}


execute at @e[tag=slayer_slash] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=1}] Team run tag @s add slayer_slashed

scoreboard players set @e[tag=slayer_slashed] CC_disarm 40
damage @e[tag=slayer_slashed,limit=1] 4 generic by @p[scores={char=1}] from @p[scores={char=1}]
execute if entity @e[tag=slayer_slashed] run kill @e[tag=slayer_slash]
tag @e remove slayer_slashed

#slicing lunge

scoreboard players set @a[scores={char=1,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=1,s2_timer=1,CC_silence=1..}] s2_timer 240

effect give @a[scores={char=1,s2_timer=1,CC_silence=0}] speed 1 8
effect clear @a[scores={char=1,s2_timer=6,CC_silence=0}] speed
execute at @a[scores={char=1,s2_timer=10..11,CC_silence=0}] run data merge entity @e[type=minecraft:armor_stand,tag=lunge_visual_1,limit=1] {equipment:{offhand:{id:"minecraft:netherite_sword",count:1}}}
execute at @a[scores={char=1,s2_timer=10..11,CC_silence=0}] run data merge entity @e[type=minecraft:armor_stand,tag=lunge_visual_2,limit=1] {equipment:{offhand:{id:"minecraft:netherite_sword",count:1}}}
execute at @a[scores={char=1,s2_timer=10..12,CC_silence=0}] run playsound minecraft:entity.iron_golem.attack master @a[distance=..15] ~ ~ ~ 1 2 1
execute at @a[scores={char=1,s2_timer=11,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..15] ~ ~ ~ 0.6 1 1
execute at @a[scores={char=1,s2_timer=10,CC_silence=0}] run particle sweep_attack ~ ~0.5 ~ 2 0.5 2 0.001 40 force

effect give @a[scores={s2_timer=10,CC_silence=0,char=1}] absorption 3 0 true

execute at @a[scores={char=1,s2_timer=10,CC_silence=0}] as @e[distance=..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=1}] Team run tag @s add slayer_lunged

effect give @e[tag=slayer_lunged] slowness 1 3
execute if entity @e[tag=slayer_lunged] run playsound entity.player.attack.strong master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute if entity @e[tag=slayer_lunged] run effect give @a[scores={char=1}] minecraft:absorption 3 1 true
execute as @e[tag=slayer_lunged] run damage @s 4 generic by @p[scores={char=1}] from @p[scores={char=1}]
tag @e remove slayer_lunged

execute at @a[scores={char=1,s2_timer=25..26}] run data merge entity @e[type=minecraft:armor_stand,tag=lunge_visual_1,limit=1] {equipment:{offhand:{id:"minecraft:air",count:1}}}
execute at @a[scores={char=1,s2_timer=25..26}] run data merge entity @e[type=minecraft:armor_stand,tag=lunge_visual_2,limit=1] {equipment:{offhand:{id:"minecraft:air",count:1}}}


execute at @a[scores={char=1}] unless entity @e[tag=lunge_visual_core] run summon marker ~ ~ ~ {Tags:["lunge_visual_core","entities_slayer"]}
execute at @a[scores={char=1}] unless entity @e[tag=lunge_visual_1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["lunge_visual_1","lunge_swords","entities_slayer"],Pose:{LeftArm:[130.0f,0.0f,90.0f]}}
execute at @a[scores={char=1}] unless entity @e[tag=lunge_visual_2] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["lunge_visual_2","lunge_swords","entities_slayer"],Pose:{LeftArm:[130.0f,0.0f,90.0f]}}

execute as @a[scores={char=1}] at @s run tp @e[tag=lunge_visual_core] ~ ~ ~
execute as @e[tag=lunge_visual_core] at @s run tp @s ~ ~ ~ ~30 0
execute as @e[tag=lunge_visual_core] at @s run tp @e[tag=lunge_visual_1] ^-0.3 ^ ^1.5
execute as @e[tag=lunge_visual_core] at @s run tp @e[tag=lunge_visual_2] ^-0.3 ^ ^-1.5
execute as @e[tag=lunge_visual_1] at @s run tp @s ~ ~ ~ facing entity @e[tag=lunge_visual_core,limit=1]
execute as @e[tag=lunge_visual_2] at @s run tp @s ~ ~ ~ facing entity @e[tag=lunge_visual_core,limit=1]


# slayer

scoreboard players set @a[scores={char=1}] MaxHP 26

scoreboard players set @a[scores={s1_timer=1,char=1}] spellCD1 180
scoreboard players add @a[scores={s1_timer=1..,char=1}] s1_timer 1
scoreboard players set @a[scores={s1_timer=181..,char=1}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=1}] spellCD2 260
scoreboard players add @a[scores={s2_timer=1..,char=1}] s2_timer 1
scoreboard players set @a[scores={s2_timer=261..,char=1}] s2_timer 0

execute as @a[scores={char=1,CC_disarm=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_sword",Slot:0b}]}] run clear @a[scores={char=1}] netherite_sword
item replace entity @a[scores={char=1,HP=11..,CC_disarm=0}] hotbar.0 with netherite_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Sword"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1
item replace entity @a[scores={char=1,HP=..10,CC_disarm=0}] hotbar.0 with netherite_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Sword"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:power":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:4.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.5d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=1,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=1}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=1,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:glow_item_frame",minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Breaking Blow"},minecraft:max_damage=1,minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=1,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=1}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=1,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:golden_chestplate",minecraft:custom_name={text:"Slicing Lunge",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:protection":1}] 1
