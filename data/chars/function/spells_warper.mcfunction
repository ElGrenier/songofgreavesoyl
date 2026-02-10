kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_axe"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_pearl"}}]


# void dust

scoreboard players set @e[scores={char=4,s1_timer=2}] warper_empower 1
scoreboard players set @e[scores={char=4,s2_timer=20}] warper_empower 1
scoreboard players set @e[scores={char=4,s1_timer_recast=1}] warper_empower 1

execute at @e[scores={char=4,s1_timer=2}] run item replace entity @a[scores={char=4}] hotbar.0 with minecraft:netherite_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Claws"},minecraft:max_damage=1,minecraft:enchantments={"minecraft:power":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:5.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1
execute at @e[scores={char=4,s2_timer=20}] run item replace entity @a[scores={char=4}] hotbar.0 with minecraft:netherite_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Claws"},minecraft:max_damage=1,minecraft:enchantments={"minecraft:power":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:5.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1
execute at @e[scores={char=4,s1_timer_recast=1}] run item replace entity @a[scores={char=4}] hotbar.0 with minecraft:netherite_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Claws"},minecraft:max_damage=1,minecraft:enchantments={"minecraft:power":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:5.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1

execute at @a[scores={char=4,warper_empower=2..}] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=4}] Team run effect give @s blindness 2
execute at @a[scores={char=4,warper_empower=2..}] run particle smoke ~ ~ ~ 2 1 2 0.001 200 normal
execute at @a[scores={char=4,warper_empower=2..}] run particle squid_ink ~ ~ ~ 1.5 0.5 1.5 0.1 100
execute at @a[scores={char=4,warper_empower=2..}] run playsound entity.wither.ambient master @a[distance=..7] ~ ~ ~ 0.3 1.5 1

scoreboard players set @a[scores={char=4,warper_empower=2..}] warper_empower 0

# blink/return

execute at @a[scores={char=4,universal_death=1..}] run kill @e[type=minecraft:ender_pearl]
execute at @a[scores={char=4,CC_grounded=1..}] run kill @e[type=minecraft:ender_pearl]
execute at @a[scores={char=4,CC_root=1..}] run kill @e[type=minecraft:ender_pearl]
execute at @a[scores={char=4,CC_stun=1..}] run kill @e[type=minecraft:ender_pearl]
execute at @a[scores={char=4,CC_silence=1..}] run kill @e[type=minecraft:ender_pearl]

scoreboard players set @a[scores={char=4,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=4,s1_timer=1,CC_silence=1..}] s1_timer 180

clear @a[scores={char=4,s1_timer=1..20}] ender_pearl
execute at @a[scores={char=4,s1_timer=1,CC_silence=0}] run kill @e[tag=WarperMarker]
scoreboard players set @a[scores={char=4,s1_timer=1..2}] s1_timer_recast 0
execute at @a[scores={char=4,s1_timer=2,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["WarperMarker","entities_warper"]}
execute at @a[scores={char=4,s1_timer=3}] run tp @e[tag=WarperMarker] @p[scores={char=4}]

execute at @e[tag=WarperMarker] run particle portal ~ ~1 ~ 0.2 0.3 0.2 0.1 3 normal
execute at @e[tag=WarperMarker] run particle smoke ~ ~1 ~ 0.2 0.3 0.2 0.001 4 normal


# return

#execute unless entity @e[tag=WarperMarker] run scoreboard players set @a[scores={char=4,s1_timer_recast=1,CC_silence=0}] spellCD2 20
#execute unless entity @e[tag=WarperMarker] run scoreboard players set @a[scores={char=4,s1_timer_recast=1,CC_silence=0}] s2_timer 240


teleport @a[scores={char=4,s1_timer_recast=1,CC_silence=0}] @e[tag=WarperMarker,limit=1]
execute at @a[scores={char=4,s1_timer_recast=1,CC_silence=0}] run particle smoke ~ ~ ~ 2 2 2 0.001 50 normal
execute at @a[scores={char=4,s1_timer_recast=1,CC_silence=0}] run particle portal ~ ~ ~ 2 2 2 0.001 50 normal
execute at @a[scores={char=4,s1_timer_recast=1,CC_silence=0}] run kill @e[tag=WarperMarker]
execute at @a[scores={char=4,s1_timer_recast=1,CC_silence=0}] run playsound entity.enderman.teleport master @a[distance=..20] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=4,s1_timer_recast=1,CC_silence=0}] run clear @a[scores={char=4}] *[minecraft:custom_data={s1:2}]

execute at @a[scores={char=4,universal_death=1..}] run kill @e[tag=WarperMarker]

#scoreboard players set @a[scores={char=4,s1_timer_recast=1..}] s1_timer_recast 0

execute at @a[scores={char=4,s1_timer=198..199}] run kill @e[tag=WarperMarker]

# tresspass

scoreboard players set @a[scores={char=4,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=4,s2_timer=1,CC_silence=1..}] s2_timer 260

execute at @a[scores={char=4,s2_timer=1,CC_silence=0}] run playsound entity.enderman.teleport master @a[distance=..20] ~ ~ ~ 1 1.5 1
execute at @a[scores={char=4,s2_timer=1,CC_silence=0}] run particle smoke ~ ~ ~ 0.1 1 0.5 0.001 100 normal
execute at @a[scores={char=4,s2_timer=1,CC_silence=0}] run particle smoke ~ ~ ~ 0.5 1 0.5 0.001 100 normal
execute at @a[scores={char=4,s2_timer=1,CC_silence=0}] run particle portal ~ ~ ~ 0.1 1 0.1 0.001 100 normal
tag @a[scores={char=4,s2_timer=1,CC_silence=0}] add invisible
effect give @a[scores={char=4,s2_timer=1,CC_silence=0}] speed 2 3 true
effect give @a[scores={char=4,s2_timer=1,CC_silence=0}] invisibility 2 3 true
effect give @a[scores={char=4,s2_timer=1,CC_silence=0}] weakness 2 100 true
effect give @a[scores={char=4,s2_timer=1,CC_silence=0}] resistance 2 100 true
item replace entity @a[scores={char=4,s2_timer=1..2,CC_silence=0}] armor.head with stone[item_model=air,minecraft:custom_name="aaaa",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:10.0d,operation:"add_value",slot:"head"}]] 1
item replace entity @a[scores={char=4,s2_timer=1..2,CC_silence=0}] armor.chest with air
item replace entity @a[scores={char=4,s2_timer=1..2,CC_silence=0}] armor.legs with air
item replace entity @a[scores={char=4,s2_timer=1..2,CC_silence=0}] armor.feet with air

tag @a[scores={char=4,s2_timer=20}] remove invisible
effect clear @a[scores={char=4,s2_timer=20}] speed
effect clear @a[scores={char=4,s2_timer=20}] invisibility
effect clear @a[scores={char=4,s2_timer=20}] weakness
effect clear @a[scores={char=4,s2_timer=20}] resistance
execute at @a[scores={char=4,s2_timer=20}] run playsound entity.enderman.teleport master @a[distance=..20] ~ ~ ~ 1 2 1
execute at @a[scores={char=4,s2_timer=20}] run particle smoke ~ ~ ~ 0.4 1 0.4 0.001 100 normal
execute at @a[scores={char=4,s2_timer=20}] run particle portal ~ ~ ~ 0.4 1 0.4 0.001 50 normal



# warper

#scoreboard players set @a[scores={s1_timer=1,char=4}] spellCD1 200
scoreboard players set @a[scores={s1_use_warper=1..,char=4}] s1_timer 1
scoreboard players add @a[scores={s1_timer=1..,char=4}] s1_timer 1
scoreboard players add @a[scores={s1_timer_recast=1..,char=4}] s1_timer_recast 1
scoreboard players set @a[scores={s1_timer=201..,char=4}] s1_timer_recast 0
scoreboard players set @a[scores={s1_timer=201..,char=4}] s1_timer 0
scoreboard players set @a[scores={char=4,s1_use_warper=1..,char=4}] s1_use_warper 0

scoreboard players set @a[scores={s2_timer=1,char=4}] spellCD2 280
scoreboard players add @a[scores={s2_timer=1..,char=4}] s2_timer 1
scoreboard players set @a[scores={s2_timer=281..,char=4}] s2_timer 0

execute as @a[scores={char=4,CC_disarm=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_axe",Slot:0b}]}] run clear @a[scores={char=4}] netherite_axe
item replace entity @a[scores={char=4,warper_empower=0,CC_disarm=0}] hotbar.0 with netherite_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Claws"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:4.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1
item replace entity @a[scores={char=4,warper_empower=1,CC_disarm=0}] hotbar.0 with netherite_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Claws"},minecraft:max_damage=1,minecraft:enchantments={"minecraft:power":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:5.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1

execute as @a[scores={char=4,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:ender_pearl",Slot:1b}]}] run clear @a[scores={char=4}] ender_pearl
item replace entity @a[scores={char=4,s1_timer=0,CC_silence=0}] hotbar.1 with ender_pearl[minecraft:custom_name={text:"Blink",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=4,s1_timer=10..,s1_timer_recast=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=4}] carrot_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=4,s1_timer=10..20,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[damage=0,max_damage=10,custom_data={s1:2},minecraft:item_model="minecraft:ender_eye",minecraft:custom_name={text:"Return",color:"gray",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
item replace entity @a[scores={char=4,s1_timer=21..40,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[damage=1,max_damage=10,custom_data={s1:2},minecraft:item_model="minecraft:ender_eye",minecraft:custom_name={text:"Return",color:"gray",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
item replace entity @a[scores={char=4,s1_timer=41..60,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[damage=2,max_damage=10,custom_data={s1:2},minecraft:item_model="minecraft:ender_eye",minecraft:custom_name={text:"Return",color:"gray",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
item replace entity @a[scores={char=4,s1_timer=61..80,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[damage=3,max_damage=10,custom_data={s1:2},minecraft:item_model="minecraft:ender_eye",minecraft:custom_name={text:"Return",color:"gray",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
item replace entity @a[scores={char=4,s1_timer=81..100,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[damage=4,max_damage=10,custom_data={s1:2},minecraft:item_model="minecraft:ender_eye",minecraft:custom_name={text:"Return",color:"gray",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
item replace entity @a[scores={char=4,s1_timer=101..120,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[damage=5,max_damage=10,custom_data={s1:2},minecraft:item_model="minecraft:ender_eye",minecraft:custom_name={text:"Return",color:"gray",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
item replace entity @a[scores={char=4,s1_timer=121..140,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[damage=6,max_damage=10,custom_data={s1:2},minecraft:item_model="minecraft:ender_eye",minecraft:custom_name={text:"Return",color:"gray",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
item replace entity @a[scores={char=4,s1_timer=141..160,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[damage=7,max_damage=10,custom_data={s1:2},minecraft:item_model="minecraft:ender_eye",minecraft:custom_name={text:"Return",color:"gray",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
item replace entity @a[scores={char=4,s1_timer=161..180,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[damage=8,max_damage=10,custom_data={s1:2},minecraft:item_model="minecraft:ender_eye",minecraft:custom_name={text:"Return",color:"gray",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
item replace entity @a[scores={char=4,s1_timer=181..200,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[damage=9,max_damage=10,custom_data={s1:2},minecraft:item_model="minecraft:ender_eye",minecraft:custom_name={text:"Return",color:"gray",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=4,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=4}] warped_fungus_on_a_stick[custom_data={s2:2}]
item replace entity @a[scores={char=4,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:silence_armor_trim_smithing_template",minecraft:custom_name={text:"Trespass",color:"dark_aqua",bold:1b}] 1
