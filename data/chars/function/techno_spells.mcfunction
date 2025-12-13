kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_ingot"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_nugget"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_nugget"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:trident"}}]

execute at @e[type=minecraft:trident] run particle enchanted_hit ~ ~ ~ 0.1 0.2 0.1 0.0001 7 force

execute at @a[scores={char=17,CC_disarm=1..}] run kill @e[type=minecraft:trident]

#weapon swap

#clear @a[scores={s1_timer=1..,char=17}] *[minecraft:custom_data={s1:1}]
#clear @a[scores={s1_timer=1..,char=17}] *[minecraft:custom_data={s2:1}]
#clear @a[scores={s1_timer_recast=1..,char=17}] *[minecraft:custom_data={s1:1}]
#clear @a[scores={s1_timer_recast=1..,char=17}] *[minecraft:custom_data={s2:1}]

execute at @a[scores={char=17,s1_timer=1}] run playsound block.lever.click master @a[distance=..6] ~ ~ ~ 0.5 1 1
execute at @a[scores={char=17,s1_timer=1}] run playsound entity.illusioner.prepare_mirror master @a[distance=..6] ~ ~ ~ 0.3 2 1
execute at @a[scores={char=17,s1_timer_recast=1}] run playsound block.lever.click master @a[distance=..6] ~ ~ ~ 0.5 1 1
execute at @a[scores={char=17,s1_timer_recast=1}] run playsound entity.illusioner.prepare_mirror master @a[distance=..6] ~ ~ ~ 0.3 2 1

execute at @a[scores={char=17,s1_timer=1}] run particle enchanted_hit ~ ~0.8 ~ 0.5 0.8 0.5 0.1 100
execute at @a[scores={char=17,s1_timer_recast=1}] run particle enchanted_hit ~ ~0.8 ~ 0.5 0.8 0.5 0.1 100
execute at @a[scores={char=17,s1_timer=1}] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:trident",count:1}}]
execute at @a[scores={char=17,s1_timer_recast=1}] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:trident",count:1}}]
execute at @a[scores={char=17,s1_timer=1}] run clear @a trident
execute at @a[scores={char=17,s1_timer_recast=1}] run clear @a trident

tag @a[scores={char=17,s1_timer=1}] remove techno_melee
tag @a[scores={char=17,s1_timer=1}] add techno_ranged

tag @a[scores={char=17,s1_timer_recast=1}] remove techno_ranged
tag @a[scores={char=17,s1_timer_recast=1}] add techno_melee



execute at @a[scores={char=17,s1_timer=1..2}] run scoreboard players set @a[scores={char=17}] tridentcd 0
execute at @a[scores={char=17,s1_timer_recast=1..2}] run scoreboard players set @a[scores={char=17}] tridentcd -1000000

execute at @a[scores={char=17,s1_timer=1..2}] run scoreboard players set @a[scores={char=17}] tridentcd_1 0
execute at @a[scores={char=17,s1_timer_recast=1..2}] run scoreboard players set @a[scores={char=17}] tridentcd_1 0

######## TRIDENT CD WORKAROUND

execute if entity @e[type=minecraft:trident,tag=!trident_cd_workaround] run scoreboard players set @a[scores={char=17}] tridentcd 1
tag @e[type=minecraft:trident] add trident_cd_workaround

#shocking stab


title @a[scores={char=17,s2_timer=1},tag=techno_ranged] times 0 20 0
title @a[scores={char=17,s2_timer=1},tag=techno_ranged] actionbar {text:"Only available with Spear",color:red,bold:1b}
scoreboard players set @a[scores={char=17,s2_timer=1},tag=techno_ranged] spellCD2 20
scoreboard players set @a[scores={char=17,s2_timer=1},tag=techno_ranged] s2_timer 180

scoreboard players set @a[scores={char=17,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=17,s2_timer=1,CC_silence=1..}] s2_timer 180

execute at @a[scores={char=17,s2_timer=1,CC_silence=0}] run playsound minecraft:entity.zombie_villager.cure master @a[distance=..15] ~ ~ ~ 1 2 1
execute at @a[scores={char=17,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["shocking_stab","entities_technomancer"],NoGravity:0b}
tp @e[tag=shocking_stab,limit=1] @a[scores={char=17,s2_timer=2},limit=1]

execute at @e[tag=shocking_stab] run particle minecraft:enchanted_hit ~ ~1.4 ~ 0.1 0.1 0.1 0.0001 20 normal
execute at @e[tag=shocking_stab] run particle minecraft:enchanted_hit ^ ^1.4 ^-1 0.1 0.1 0.1 0.001 20 normal
execute as @e[tag=shocking_stab] at @s run tp @s ^ ^ ^1
execute at @a[scores={char=17,s2_timer=7..}] run kill @e[tag=shocking_stab]


execute at @e[tag=shocking_stab] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=17}] Team run tag @s add technomancer_shocked

scoreboard players set @e[tag=technomancer_shocked] CC_stun 10
#execute if entity @a[tag=technomancer_shocked] run kill @e[tag=shocking_stab]
execute at @a[tag=technomancer_shocked] run playsound entity.player.hurt master @a[distance=..15] ~ ~ ~ 1 1 1
tag @e remove technomancer_shocked


execute at @e[tag=shocking_stab] if entity @a[scores={char=17},team=purple] run scoreboard players set @a[distance=..1.5,team=yellow] CC_stun 10
execute at @e[tag=shocking_stab] if entity @a[scores={char=17},team=purple] at @p[distance=..1.5,team=yellow] run playsound minecraft:entity.player.hurt master @a[distance=..15] ~ ~ ~ 1 1 1


#flash

title @a[scores={char=17,s3_timer=1},tag=techno_melee] times 0 20 0
title @a[scores={char=17,s3_timer=1},tag=techno_melee] actionbar {text:"Only available with Harpoon",color:red,bold:1b}
scoreboard players set @a[scores={char=17,s3_timer=1,CC_silence=1..}] spellCD3 20
scoreboard players set @a[scores={char=17,s3_timer=1,CC_silence=1..}] s3_timer 180

execute unless entity @e[type=minecraft:trident] run scoreboard players set @a[scores={char=17,s3_timer=1}] spellCD3 20
execute unless entity @e[type=minecraft:trident] run scoreboard players set @a[scores={char=17,s3_timer=1}] s3_timer 180


execute at @a[scores={char=17,s3_timer=1,CC_silence=0}] at @e[type=minecraft:trident,limit=1] run tp @a[scores={char=17}] ~ ~ ~
execute at @a[scores={char=17,s3_timer=1,CC_silence=0}] at @e[type=minecraft:trident,limit=1] run particle minecraft:enchanted_hit ~ ~ ~ 0.5 1 0.5 0.0001 100 force
execute at @a[scores={char=17,s3_timer=1,CC_silence=0}] at @e[type=minecraft:trident,limit=1] run playsound minecraft:entity.wither.shoot master @a[distance=..15] ~ ~ ~ 0.2 1.0 1.0
execute at @a[scores={char=17,s3_timer=1,CC_silence=0}] at @e[type=minecraft:trident,limit=1] run playsound minecraft:entity.enderman.teleport master @a[distance=..15] ~ ~ ~ 1 0.8 1

#passive
execute at @a[scores={char=17,s1_timer=1,CC_silence=0}] run effect give @a[scores={char=17}] speed 1 0 true
execute at @a[scores={char=17,s1_timer_recast=1,CC_silence=0}] run effect give @a[scores={char=17}] speed 1 0 true
execute at @a[scores={char=17,s2_timer=1,CC_silence=0}] run effect give @a[scores={char=17}] speed 1 0 true
execute at @a[scores={char=17,s3_timer=1,CC_silence=0}] run effect give @a[scores={char=17}] speed 1 0 true

execute at @a[scores={char=17,s1_timer_recast=1,CC_silence=0}] run effect give @a[scores={char=17}] absorption 2 0 true
execute at @a[scores={char=17,s1_timer=1,CC_silence=0}] run effect give @a[scores={char=17}] absorption 2 0 true


# technomancer

scoreboard players set @a[scores={char=17}] MaxHP 16

#scoreboard players set @a[scores={s1_timer=1,char=17}] spellCD1 60
#scoreboard players add @a[scores={s1_timer=1..,char=17}] s1_timer 1
#scoreboard players set @a[scores={s1_timer=61..,char=17}] s1_timer 0

#scoreboard players set @a[scores={s1_timer_recast=1,char=17}] spellCD1 60
#scoreboard players add @a[scores={s1_timer_recast=1..,char=17}] s1_timer_recast 1
#scoreboard players set @a[scores={s1_timer_recast=61..,char=17}] s1_timer_recast 0

scoreboard players set @a[scores={s1_timer=1,char=17}] s1_timer_recast 0
scoreboard players set @a[scores={s1_timer=1,char=17}] spellCD1 60
scoreboard players add @a[scores={s1_timer=1..,char=17}] s1_timer 1
scoreboard players add @a[scores={s1_timer=61..,char=17}] s1_timer_recast 0
scoreboard players set @a[scores={s1_timer=61..,char=17}] s1_timer 0

scoreboard players set @a[scores={s1_timer_recast=1,char=17}] s1_timer -1
scoreboard players set @a[scores={s1_timer_recast=1,char=17}] spellCD1 60
scoreboard players add @a[scores={s1_timer_recast=1..,char=17}] s1_timer_recast 1
scoreboard players set @a[scores={s1_timer_recast=61..,char=17}] s1_timer 0
scoreboard players set @a[scores={s1_timer_recast=61..,char=17}] s1_timer_recast 0

scoreboard players set @a[scores={s2_timer=1,char=17}] spellCD2 200
scoreboard players add @a[scores={s2_timer=1..,char=17}] s2_timer 1
scoreboard players set @a[scores={s2_timer=201..,char=17}] s2_timer 0

scoreboard players set @a[scores={s3_timer=1,char=17}] spellCD3 200
scoreboard players add @a[scores={s3_timer=1..,char=17}] s3_timer 1
scoreboard players set @a[scores={s3_timer=201..,char=17}] s3_timer 0

#scoreboard players set @a[tag=techno_ranged,scores={char=17}] s2_timer 0
#scoreboard players set @a[tag=techno_melee,scores={char=17}] s3_timer 0

execute as @a[tag=techno_melee,scores={char=17,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=17}] carrot_on_a_stick[minecraft:custom_data={s2:1}]
item replace entity @a[tag=techno_melee,scores={char=17,s1_timer=0,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:iron_ingot",minecraft:custom_name={bold:1b,color:"dark_aqua",text:"The Impaler"},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[tag=techno_ranged,scores={char=17,s1_timer_recast=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=17}] carrot_on_a_stick[minecraft:custom_data={s1:2}]
item replace entity @a[tag=techno_ranged,scores={char=17,s1_timer=0,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:2},minecraft:item_model="minecraft:gold_ingot",minecraft:custom_name={bold:1b,color:"dark_aqua",text:"The Hunt"},minecraft:enchantments={"minecraft:power":1}] 1


execute as @a[scores={char=17,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=17}] warped_fungus_on_a_stick[minecraft:custom_data={s2:1}]
item replace entity @a[scores={char=17,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:gold_nugget",minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Shocking Stab"},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=17,s3_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:3b}]}] run clear @a[scores={char=17}] carrot_on_a_stick[minecraft:custom_data={s3:1}]
item replace entity @a[scores={char=17,s3_timer=0,CC_silence=0}] hotbar.3 with carrot_on_a_stick[custom_data={s3:1},minecraft:item_model="minecraft:iron_nugget",minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Flash"},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=17},tag=techno_melee] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:trident",Slot:0b}]}] run clear @a[scores={char=17}] trident
item replace entity @a[scores={char=17},tag=techno_melee] hotbar.0 with trident[minecraft:custom_name={bold:1b,color:"gray",text:"Spear (Melee)"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:riptide":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1
execute as @a[scores={char=17},tag=techno_ranged] at @s unless entity @s[nbt={equipment:{offhand:{id:"minecraft:trident"}}}] run clear @a[scores={char=17}] trident
item replace entity @a[scores={char=17,tridentcd=0},tag=techno_ranged] weapon.offhand with trident[minecraft:custom_name={bold:1b,color:"gray",text:"Harpoon (Ranged)"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:0.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.99d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=17},tag=techno_melee] at @s if entity @s[nbt={equipment:{offhand:{id:"minecraft:trident"}}}] run clear @a[scores={char=17}] trident
scoreboard players operation @e[type=trident] Team = @p[scores={char=17}] Team

tag @a[scores={char=17},tag=!techno_melee,tag=!techno_ranged] add techno_melee