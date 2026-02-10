kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_sword"}}]


# beyond pain

item replace entity @p[scores={char=67,HPercentage=61..}] armor.head with player_head[minecraft:custom_name="Head",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:26.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1882506042,-1938469333,-1264120337,1864856646],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjEwNzBkY2Q1NmU4MWUzNGM5ZDQ5NDY1ZjEzMDY0YTFjYzUyNDhmMGM5NTI3ODZhNzRmNGRlYjAxMzQ2Y2E0NiJ9fX0="}]}] 1
item replace entity @a[scores={char=67,HPercentage=61..}] armor.chest with leather_chestplate[custom_data={rev_armor_tier:0},minecraft:trim={pattern:"eye",material:"netherite"},minecraft:custom_name="Armor",minecraft:dyed_color=1448479,minecraft:unbreakable={}] 1

effect give @a[scores={char=67,HPercentage=..60}] resistance 2 0
execute at @a[scores={char=67,HPercentage=..60}] run particle infested ~ ~1.5 ~ 0.3 0.5 0.3 0.001 1
item replace entity @p[scores={char=67,HPercentage=21..60}] armor.head with player_head[minecraft:custom_name="Head",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:26.0d,operation:"add_value",slot:"head"},{id:"armor",type:"minecraft:knockback_resistance",amount:0.025d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1882506042,-1938469333,-1264120337,1864856646],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjEwNzBkY2Q1NmU4MWUzNGM5ZDQ5NDY1ZjEzMDY0YTFjYzUyNDhmMGM5NTI3ODZhNzRmNGRlYjAxMzQ2Y2E0NiJ9fX0="}]}] 1
item replace entity @a[scores={char=67,HPercentage=21..60}] armor.chest with leather_chestplate[custom_data={rev_armor_tier:0},minecraft:trim={pattern:"eye",material:"iron"},minecraft:custom_name="Armor",minecraft:dyed_color=1448479,minecraft:unbreakable={}] 1

effect give @a[scores={char=67,HPercentage=..20}] resistance 2 1
execute at @a[scores={char=67,HPercentage=..20}] run particle infested ~ ~1.5 ~ 0.3 0.5 0.3 0.001 1
item replace entity @p[scores={char=67,HPercentage=..20}] armor.head with player_head[minecraft:custom_name="Head",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:26.0d,operation:"add_value",slot:"head"},{id:"armor",type:"minecraft:knockback_resistance",amount:0.05d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1882506042,-1938469333,-1264120337,1864856646],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjEwNzBkY2Q1NmU4MWUzNGM5ZDQ5NDY1ZjEzMDY0YTFjYzUyNDhmMGM5NTI3ODZhNzRmNGRlYjAxMzQ2Y2E0NiJ9fX0="}]}] 1
item replace entity @a[scores={char=67,HPercentage=..20}] armor.chest with leather_chestplate[custom_data={rev_armor_tier:0},minecraft:trim={pattern:"eye",material:"lapis"},minecraft:custom_name="Armor",minecraft:dyed_color=1448479,minecraft:unbreakable={}] 1

#effect give @a[scores={char=67,HPercentage=..25}] resistance 2 2
#execute at @a[scores={char=67,HPercentage=..25}] run particle infested ~ ~1.5 ~ 0.3 0.5 0.3 0.01 1
#item replace entity @p[scores={char=67,HPercentage=..25}] armor.head with player_head[minecraft:custom_name="Head",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:26.0d,operation:"add_value",slot:"head"},{id:"armor",type:"minecraft:knockback_resistance",amount:0.075d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1882506042,-1938469333,-1264120337,1864856646],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjEwNzBkY2Q1NmU4MWUzNGM5ZDQ5NDY1ZjEzMDY0YTFjYzUyNDhmMGM5NTI3ODZhNzRmNGRlYjAxMzQ2Y2E0NiJ9fX0="}]}] 1



# shield bash

scoreboard players set @a[scores={char=67,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=67,s1_timer=1,CC_silence=1..}] s1_timer 200



effect give @a[scores={char=67,s1_timer=1,CC_silence=0}] absorption 3 1
execute at @a[scores={char=67,s1_timer=1,CC_silence=0}] run playsound item.armor.equip_iron master @a[distance=..12] ~ ~ ~ 1 0.6 1
execute at @a[scores={char=67,s1_timer=21,CC_silence=0}] run playsound entity.husk.ambient master @a[distance=..12] ~ ~ ~ 0.5 1.2 1
execute at @a[scores={char=67,s1_timer=21,CC_silence=0}] run playsound item.armor.equip_iron master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=67,s1_timer=41,CC_silence=0}] run playsound entity.husk.ambient master @a[distance=..12] ~ ~ ~ 0.5 1.6 1
execute at @a[scores={char=67,s1_timer=41,CC_silence=0}] run playsound item.armor.equip_iron master @a[distance=..12] ~ ~ ~ 1 0.5 1

execute at @a[scores={char=67,s1_timer=59,CC_silence=0},nbt={active_effects:[{id:"minecraft:absorption"}]}] run playsound item.shield.break master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=67,s1_timer=59,CC_silence=0}] run playsound entity.warden.attack_impact master @a[distance=..12] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=67,s1_timer=59,CC_silence=0}] run playsound entity.player.attack.strong master @a[distance=..12] ~ ~ ~ 1 0.9 1
execute at @a[scores={char=67,s1_timer=59..61}] run kill @e[tag=shield_bash_visuals]

execute at @a[scores={char=67,s1_timer=59,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["shield_bash_thing","projectile","entities_revenant"]}
execute at @a[scores={char=67,s1_timer=59,CC_silence=0},nbt={active_effects:[{id:"minecraft:absorption"}]}] run tag @e[tag=shield_bash_thing] add empovered_shield_bash_thing
execute at @a[scores={char=67,s1_timer=59,CC_silence=0}] run summon block_display ~ ~ ~ {Tags:["shield_bash_vis_1","bash_vis","entities_revenant"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.65f,-0.075f],scale:[0.8f,1.2f,0.15f]},block_state:{Name:"minecraft:netherite_block"}}
execute at @a[scores={char=67,s1_timer=59,CC_silence=0},nbt={active_effects:[{id:"minecraft:absorption"}]}] run summon block_display ~ ~ ~ {Tags:["shield_bash_vis_2","bash_vis","entities_revenant"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.6f,-0.1f],scale:[0.7f,1.1f,0.2f]},block_state:{Name:"minecraft:warped_hyphae"}}
execute at @a[scores={char=67,s1_timer=59,CC_silence=0}] unless entity @e[tag=shield_bash_vis_2] run summon block_display ~ ~ ~ {Tags:["shield_bash_vis_2","bash_vis","entities_revenant"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.6f,-0.1f],scale:[0.7f,1.1f,0.2f]},block_state:{Name:"minecraft:warped_planks"}}
scoreboard players operation @e[tag=projectile,tag=shield_bash_thing] Team = @p[scores={char=67}] Team
tp @e[tag=shield_bash_thing,limit=1] @a[scores={char=67,s1_timer=60},limit=1]
execute at @a[scores={char=67,s1_timer=60,CC_silence=0}] as @e[tag=shield_bash_thing,limit=1] at @s run tp @s ~ ~1.3 ~

tp @e[tag=shield_bash_vis_1] @e[tag=shield_bash_thing,limit=1]
tp @e[tag=shield_bash_vis_2] @e[tag=shield_bash_thing,limit=1]

execute at @e[tag=shield_bash_thing] run particle sweep_attack ~ ~ ~ 0.3 0.6 0.3 0.0001 2 normal
execute at @e[tag=shield_bash_thing] run particle infested ~ ~ ~ 0.4 0.8 0.4 0.0001 2 normal
execute as @e[tag=shield_bash_thing] at @s run tp @s ^ ^ ^0.4
execute at @a[scores={char=67,s1_timer=70..}] run kill @e[tag=shield_bash_thing]
execute at @a[scores={char=67,s1_timer=70..}] run kill @e[tag=bash_vis]


#execute at @a[scores={char=67,s1_timer=59,CC_silence=0},nbt={active_effects:[{id:"minecraft:absorption"}]}] run particle sweep_attack ~ ~0.3 ~ 2 0.3 2 0.0001 100 normal
#execute at @a[scores={char=67,s1_timer=59,CC_silence=0},nbt={active_effects:[{id:"minecraft:absorption"}]}] run particle block{block_state:{Name:"minecraft:sculk"}} ~ ~1 ~ 2 2 2 1 100
#execute at @a[scores={char=67,s1_timer=59,CC_silence=0},nbt={active_effects:[{id:"minecraft:absorption"}]}] as @p[distance=..4] unless score @s Team = @p[scores={char=67}] Team run effect give @s slowness 3 1 true
#execute at @a[scores={char=67,s1_timer=59,CC_silence=0},nbt={active_effects:[{id:"minecraft:absorption"}]}] at @s as @e[distance=..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=67}] Team run damage @s 3 generic by @p[scores={char=67}] from @p[scores={char=67}]

execute at @e[tag=shield_bash_thing,tag=!empovered_shield_bash_thing] positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target,limit=1] unless score @s Team = @p[scores={char=67}] Team run tag @s add rev_shieldbashed
execute at @e[tag=shield_bash_thing,tag=empovered_shield_bash_thing] positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target,limit=1] unless score @s Team = @p[scores={char=67}] Team run tag @s add rev_shieldbashed_harder

execute at @e[tag=rev_shieldbashed] run kill @e[tag=shield_bash_thing]
execute at @e[tag=rev_shieldbashed] run particle block{block_state:{Name:"minecraft:warped_planks"}} ~ ~0.5 ~ 0.4 0.8 0.4 0.3 50 normal
execute at @e[tag=rev_shieldbashed] run particle block{block_state:{Name:"minecraft:netherite_block"}} ~ ~0.5 ~ 0.4 0.8 0.4 0.3 50 normal
execute at @e[tag=rev_shieldbashed] run playsound entity.zombie.break_wooden_door master @a[distance=..10] ~ ~ ~ 0.5 1.6 1
scoreboard players set @e[tag=rev_shieldbashed,limit=1] CC_stun 20
damage @e[tag=rev_shieldbashed,limit=1] 2 generic by @p[scores={char=67}] from @p[scores={char=67}]
tag @e remove rev_shieldbashed

execute at @e[tag=rev_shieldbashed_harder] run kill @e[tag=shield_bash_thing]
execute at @e[tag=rev_shieldbashed_harder] run particle block{block_state:{Name:"minecraft:warped_planks"}} ~ ~0.5 ~ 0.4 0.8 0.4 0.3 50 normal
execute at @e[tag=rev_shieldbashed_harder] run particle block{block_state:{Name:"minecraft:netherite_block"}} ~ ~0.5 ~ 0.4 0.8 0.4 0.3 50 normal
execute at @e[tag=rev_shieldbashed_harder] run playsound entity.player.attack.crit master @a[distance=..10] ~ ~ ~ 0.5 0.9 1
execute at @e[tag=rev_shieldbashed_harder] run playsound entity.zombie.break_wooden_door master @a[distance=..10] ~ ~ ~ 0.5 0.9 1
scoreboard players set @e[tag=rev_shieldbashed_harder,limit=1] CC_stun 30
damage @e[tag=rev_shieldbashed_harder,limit=1] 4 generic by @p[scores={char=67}] from @p[scores={char=67}]
tag @e remove rev_shieldbashed_harder

execute at @a[scores={char=67}] run tp @e[tag=shield_bash_visual_core] ~ ~1 ~
execute as @e[tag=shield_bash_visual_core] at @s run tp @s ~ ~ ~ ~7 ~

execute at @a[scores={char=67,s1_timer=1..59,CC_silence=0}] unless entity @e[tag=shield_bash_visual_core] run summon marker ~ ~ ~ {Tags:["shield_bash_visual_core","shield_bash_visuals","entities_revenant"]} 

execute at @a[scores={char=67,s1_timer=1..59,CC_silence=0}] unless entity @e[tag=rev_shield_fragment_1] run summon block_display ~ ~ ~ {Tags:["rev_shield_fragment_1","shield_visuals","shield_bash_visuals","entities_revenant"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.65f,-0.075f],scale:[0.8f,1.2f,0.15f]},block_state:{Name:"minecraft:netherite_block"}}
execute at @a[scores={char=67,s1_timer=1..59,CC_silence=0}] unless entity @e[tag=rev_shield_fragment_2] run summon block_display ~ ~ ~ {Tags:["rev_shield_fragment_2","shield_visuals","shield_bash_visuals","entities_revenant"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.65f,-0.075f],scale:[0.8f,1.2f,0.15f]},block_state:{Name:"minecraft:netherite_block"}}
execute at @a[scores={char=67,s1_timer=1..59,CC_silence=0}] unless entity @e[tag=rev_shield_fragment_3] run summon block_display ~ ~ ~ {Tags:["rev_shield_fragment_3","shield_visuals","shield_bash_visuals","entities_revenant"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.65f,-0.075f],scale:[0.8f,1.2f,0.15f]},block_state:{Name:"minecraft:netherite_block"}}
execute at @a[scores={char=67,s1_timer=1..59,CC_silence=0}] unless entity @e[tag=rev_shield_fragment_4] run summon block_display ~ ~ ~ {Tags:["rev_shield_fragment_4","shield_visuals","shield_bash_visuals","entities_revenant"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.65f,-0.075f],scale:[0.8f,1.2f,0.15f]},block_state:{Name:"minecraft:netherite_block"}}
execute at @a[scores={char=67,s1_timer=1..59,CC_silence=0}] unless entity @e[tag=rev_shield_fragment_5] run summon block_display ~ ~ ~ {Tags:["rev_shield_fragment_5","shield_visuals","shield_bash_visuals","entities_revenant"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.6f,-0.1f],scale:[0.7f,1.1f,0.2f]},block_state:{Name:"minecraft:warped_planks"}}
execute at @a[scores={char=67,s1_timer=1..59,CC_silence=0}] unless entity @e[tag=rev_shield_fragment_6] run summon block_display ~ ~ ~ {Tags:["rev_shield_fragment_6","shield_visuals","shield_bash_visuals","entities_revenant"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.6f,-0.1f],scale:[0.7f,1.1f,0.2f]},block_state:{Name:"minecraft:warped_planks"}}
execute at @a[scores={char=67,s1_timer=1..59,CC_silence=0}] unless entity @e[tag=rev_shield_fragment_7] run summon block_display ~ ~ ~ {Tags:["rev_shield_fragment_7","shield_visuals","shield_bash_visuals","entities_revenant"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.6f,-0.1f],scale:[0.7f,1.1f,0.2f]},block_state:{Name:"minecraft:warped_planks"}}
execute at @a[scores={char=67,s1_timer=1..59,CC_silence=0}] unless entity @e[tag=rev_shield_fragment_8] run summon block_display ~ ~ ~ {Tags:["rev_shield_fragment_8","shield_visuals","shield_bash_visuals","entities_revenant"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.6f,-0.1f],scale:[0.7f,1.1f,0.2f]},block_state:{Name:"minecraft:warped_planks"}}


execute as @e[tag=shield_visuals] run rotate @s facing entity @e[tag=shield_bash_visual_core,limit=1]
execute as @e[tag=shield_visuals] at @s run rotate @s ~ 0
execute as @e[tag=shield_bash_visual_core] at @s run tp @e[tag=rev_shield_fragment_1] ^ ^ ^0.8
execute as @e[tag=shield_bash_visual_core] at @s run tp @e[tag=rev_shield_fragment_2] ^ ^ ^-0.8
execute as @e[tag=shield_bash_visual_core] at @s run tp @e[tag=rev_shield_fragment_3] ^0.8 ^ ^
execute as @e[tag=shield_bash_visual_core] at @s run tp @e[tag=rev_shield_fragment_4] ^-0.8 ^ ^
execute as @e[tag=shield_bash_visual_core] at @s run tp @e[tag=rev_shield_fragment_5] ^ ^ ^0.8
execute as @e[tag=shield_bash_visual_core] at @s run tp @e[tag=rev_shield_fragment_6] ^ ^ ^-0.8
execute as @e[tag=shield_bash_visual_core] at @s run tp @e[tag=rev_shield_fragment_7] ^0.8 ^ ^
execute as @e[tag=shield_bash_visual_core] at @s run tp @e[tag=rev_shield_fragment_8] ^-0.8 ^ ^



# last memories

scoreboard players set @a[scores={char=67,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=67,s2_timer=1,CC_silence=1..}] s2_timer 340

execute at @a[scores={char=67,s2_timer=1,CC_silence=0}] run playsound entity.warden.agitated master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=67,s2_timer=1,CC_silence=0}] run particle sculk_charge_pop ~ ~1.5 ~ 0.5 0.5 0.5 0.001 10

tag @e[scores={char=67}] remove revenant_ally_in_range
execute at @a[scores={char=67,s2_timer=1..120}] as @p[distance=0.5..5] if score @s Team = @p[scores={char=67}] Team run tag @a[scores={char=67}] add revenant_ally_in_range

execute at @a[scores={char=67,s2_timer=1..120},tag=!revenant_ally_in_range] run item replace entity @a[scores={char=67,s2_timer=1..100}] hotbar.0 with minecraft:wooden_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Broadsword"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:knockback":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1
execute at @a[scores={char=67,s2_timer=1..120},tag=revenant_ally_in_range] run item replace entity @a[scores={char=67,s2_timer=1..100}] hotbar.0 with minecraft:wooden_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Broadsword"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:knockback":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1

item replace entity @a[scores={char=67,s2_timer=121..}] hotbar.0 with wooden_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Broadsword"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1

execute at @a[scores={char=67,s2_timer=1..120,CC_silence=0}] run particle sculk_charge_pop ~ ~1.5 ~ 0.8 0.6 0.8 0.001 1

# revenant

scoreboard players set @a[scores={char=67,s1_timer=1}] spellCD1 220
scoreboard players add @a[scores={char=67,s1_timer=1..}] s1_timer 1
scoreboard players set @a[scores={char=67,s1_timer=221..}] s1_timer 0

scoreboard players set @a[scores={char=67,s2_timer=1}] spellCD2 360
scoreboard players add @a[scores={char=67,s2_timer=1..}] s2_timer 1
scoreboard players set @a[scores={char=67,s2_timer=361..}] s2_timer 0

execute as @a[scores={char=67}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword",Slot:0b}]}] run clear @a[scores={char=67}] wooden_sword
item replace entity @a[scores={char=67,s2_timer=0}] hotbar.0 with wooden_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Broadsword"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1

execute as @a[scores={char=67,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=67}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=67,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:music_disc_creator",minecraft:custom_name={text:"Shield Bash",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=67,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=67}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=67,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:armadillo_scute",minecraft:custom_name={text:"Last Memories",color:"dark_aqua",bold:1b}] 1
