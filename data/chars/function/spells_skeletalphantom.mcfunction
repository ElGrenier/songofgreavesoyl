kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_shovel"}}]



# calcium drain

effect give @a[scores={char=13,universal_hit=20..,livesteal_cd=0}] regeneration 1 3 true
scoreboard players set @a[scores={char=13,universal_hit=1..,livesteal_cd=0}] livesteal_cd 1
scoreboard players add @a[scores={char=13,livesteal_cd=1..}] livesteal_cd 1
scoreboard players set @a[scores={char=13,livesteal_cd=40..}] livesteal_cd 0

effect give @a[scores={char=13,universal_kill=1..,CC_defiled=0}] regeneration 2 3 true
execute at @a[scores={char=13,universal_kill=1..}] run playsound entity.wither.hurt master @a[distance=..10] ~ ~ ~ 1. 1.0 1.0

#dread

scoreboard players set @a[scores={char=13,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=13,s1_timer=1,CC_silence=1..}] s1_timer 240

execute at @a[scores={char=13,s1_timer=2,CC_silence=0}] run playsound entity.enderman.scream master @a[distance=..10] ~ ~ ~ 1.0 0.7 1.0
execute at @a[scores={char=13,s1_timer=2,CC_silence=0}] run particle smoke ~ ~ ~ 3 2 3 0.00001 100 force
execute at @a[scores={char=13,s1_timer=1,CC_silence=0}] as @p[distance=0.5..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=13}] Team run tag @s add skeletal_fear

scoreboard players set @a[tag=skeletal_fear] CC_disarm 40
execute as @a[tag=skeletal_fear] at @s run tp @s ~ ~ ~ facing entity @p[distance=0.5..,scores={char=13}]
execute as @a[tag=skeletal_fear] at @s run tp @s ~ ~ ~ ~-180 ~
execute at @a[tag=skeletal_fear] at @s run particle smoke ~ ~1.5 ~ 0.5 0.5 0.5 0.01 50 force
tag @a remove skeletal_fear

#dead hatred

scoreboard players set @a[scores={char=13,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=13,s2_timer=1,CC_silence=1..}] s2_timer 360

tag @a[scores={char=13,s2_timer=1}] add invisible
effect give @a[scores={char=13,s2_timer=1}] invisibility 3 0 true
effect give @a[scores={char=13,s2_timer=1}] speed 3 1 true
effect give @a[scores={char=13,s2_timer=1}] weakness 3 100 true
effect give @a[scores={char=13,s2_timer=1}] resistance 3 100 true
scoreboard players set @a[scores={char=13,s2_timer=1}] CC_intangible 60
item replace entity @a[scores={char=13,s2_timer=1}] armor.head with player_head[minecraft:custom_name="Skull",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:8.0d,operation:"add_value",slot:"head"},{id:"armor",type:"minecraft:knockback_resistance",amount:1.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-672593164,1073039141,-1481174912,860659466],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2JjYmJmOTRkNjAzNzQzYTFlNzE0NzAyNmUxYzEyNDBiZDk4ZmU4N2NjNGVmMDRkY2FiNTFhMzFjMzA5MTRmZCJ9fX0="}]}] 1
item replace entity @a[scores={char=13,s2_timer=1}] armor.chest with air
item replace entity @a[scores={char=13,s2_timer=1}] armor.legs with air
item replace entity @a[scores={char=13,s2_timer=1}] armor.feet with air

execute at @a[scores={char=13,s2_timer=1..60}] run particle smoke ~ ~ ~ 2.5 1.5 2.5 0.0001 40
execute at @a[scores={char=13,s2_timer=1..60}] run particle dust{color:[0.67,0.0,0.67],scale:1.0f} ~ ~ ~ 2 2 2 0 5
execute at @a[scores={char=13,s2_timer=1..60}] run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.0001 10
execute at @a[scores={char=13,s2_timer=1..60}] run particle dust{color:[0.0,0.0,0.0],scale:1.0f} ~ ~0.5 ~ 0.5 0.8 0.5 0 20
execute at @a[scores={char=13,s2_timer=1..60}] run particle dust{color:[0.67,0.0,0.67],scale:1.0f} ~ ~0.5 ~ 0.5 0.8 0.5 0 3
execute at @a[scores={char=13,s2_timer=1..60}] run particle smoke ~ ~0.5 ~ 0.5 0.8 0.5 0 20

execute at @a[scores={char=13,s2_timer=60}] run particle falling_dust{block_state:{Name:"minecraft:purple_concrete_powder"}} ~ ~ ~ 3 1.5 3 0.001 400 force
execute at @a[scores={char=13,s2_timer=1}] run playsound entity.wither_skeleton.death master @a[distance=..10] ~ ~ ~ 2.0 0.1 1.0
execute at @a[scores={char=13,s2_timer=60}] run playsound entity.wither_skeleton.hurt master @a[distance=..10] ~ ~ ~ 2.0 0.5 1.0

execute at @a[scores={char=13,s2_timer=1..60}] as @e[distance=..3,tag=valid_spell_target] unless score @s Team = @p[scores={char=13}] Team unless entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run effect give @s poison 1 3
execute at @a[scores={char=13,s2_timer=1..60}] as @e[distance=..3,tag=valid_spell_target] unless score @s Team = @p[scores={char=13}] Team as @p[scores={char=13}] unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect give @s regeneration 2 2 true


tag @a[scores={char=13,s2_timer=60}] remove invisible


# skeletal phantom

scoreboard players set @a[scores={s1_timer=1,char=13}] spellCD1 260
scoreboard players add @a[scores={s1_timer=1..,char=13}] s1_timer 1
scoreboard players set @a[scores={s1_timer=261..,char=13}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=13}] spellCD2 380
scoreboard players add @a[scores={s2_timer=1..,char=13}] s2_timer 1
scoreboard players set @a[scores={s2_timer=381..,char=13}] s2_timer 0

execute as @a[scores={char=13}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_shovel",Slot:0b}]}] run clear @a[scores={char=13}] stone_shovel
item replace entity @a[scores={char=13}] hotbar.0 with minecraft:stone_shovel[minecraft:custom_name={bold:1b,color:"gray",text:"Club"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_speed",amount:-0.5d,operation:"add_multiplied_base",slot:"mainhand"},{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"}],minimum_attack_charge=1] 1

execute as @a[scores={char=13,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=13}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=13,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:wither_skeleton_spawn_egg",minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Dread"}] 1

execute as @a[scores={char=13,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=13}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=13,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:black_concrete_powder",minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Dead Hatred"}] 1
