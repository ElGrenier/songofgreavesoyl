kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_sword"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:music_disc_creator_music_box"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:armadillo_scute"}}]


# beyond pain

item replace entity @p[scores={char=67,HPercentage=61..}] armor.head with minecraft:player_head[minecraft:custom_name="Head",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:10.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1882506042,-1938469333,-1264120337,1864856646],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjEwNzBkY2Q1NmU4MWUzNGM5ZDQ5NDY1ZjEzMDY0YTFjYzUyNDhmMGM5NTI3ODZhNzRmNGRlYjAxMzQ2Y2E0NiJ9fX0="}]}] 1

effect give @a[scores={char=67,HPercentage=..60}] minecraft:resistance 2 0
execute at @a[scores={char=67,HPercentage=..60}] run particle minecraft:infested ~ ~1.5 ~ 0.3 0.5 0.3 0.001 1
item replace entity @p[scores={char=67,HPercentage=21..60}] armor.head with minecraft:player_head[minecraft:custom_name="Head",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:10.0d,operation:"add_value",slot:"head"},{id:"armor",type:"minecraft:knockback_resistance",amount:0.025d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1882506042,-1938469333,-1264120337,1864856646],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjEwNzBkY2Q1NmU4MWUzNGM5ZDQ5NDY1ZjEzMDY0YTFjYzUyNDhmMGM5NTI3ODZhNzRmNGRlYjAxMzQ2Y2E0NiJ9fX0="}]}] 1

effect give @a[scores={char=67,HPercentage=..20}] minecraft:resistance 2 1
execute at @a[scores={char=67,HPercentage=..20}] run particle minecraft:infested ~ ~1.5 ~ 0.3 0.5 0.3 0.001 1
item replace entity @p[scores={char=67,HPercentage=..20}] armor.head with minecraft:player_head[minecraft:custom_name="Head",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:10.0d,operation:"add_value",slot:"head"},{id:"armor",type:"minecraft:knockback_resistance",amount:0.05d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1882506042,-1938469333,-1264120337,1864856646],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjEwNzBkY2Q1NmU4MWUzNGM5ZDQ5NDY1ZjEzMDY0YTFjYzUyNDhmMGM5NTI3ODZhNzRmNGRlYjAxMzQ2Y2E0NiJ9fX0="}]}] 1

#effect give @a[scores={char=67,HPercentage=..25}] minecraft:resistance 2 2
#execute at @a[scores={char=67,HPercentage=..25}] run particle minecraft:infested ~ ~1.5 ~ 0.3 0.5 0.3 0.01 1
#item replace entity @p[scores={char=67,HPercentage=..25}] armor.head with minecraft:player_head[minecraft:custom_name="Head",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:10.0d,operation:"add_value",slot:"head"},{id:"armor",type:"minecraft:knockback_resistance",amount:0.075d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1882506042,-1938469333,-1264120337,1864856646],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjEwNzBkY2Q1NmU4MWUzNGM5ZDQ5NDY1ZjEzMDY0YTFjYzUyNDhmMGM5NTI3ODZhNzRmNGRlYjAxMzQ2Y2E0NiJ9fX0="}]}] 1



# shield bash

scoreboard players set @a[scores={char=67,spell_reve_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=67,spell_reve_1_1=1,CC_silence=1..}] spell_reve_1_1 200

effect give @a[scores={char=67,spell_reve_1_1=1,CC_silence=0}] minecraft:absorption 3 1
execute at @a[scores={char=67,spell_reve_1_1=1,CC_silence=0}] run playsound minecraft:item.armor.equip_iron master @a[distance=..12] ~ ~ ~ 1 0.6 1
execute at @a[scores={char=67,spell_reve_1_1=21,CC_silence=0}] run playsound minecraft:item.shield.block master @a[distance=..12] ~ ~ ~ 0.5 1.6 1
execute at @a[scores={char=67,spell_reve_1_1=41,CC_silence=0}] run playsound minecraft:item.shield.block master @a[distance=..12] ~ ~ ~ 0.5 1.6 1

execute at @a[scores={char=67,spell_reve_1_1=59,CC_silence=0},nbt={active_effects:[{id:"minecraft:absorption"}]}] run playsound minecraft:item.shield.break master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=67,spell_reve_1_1=59,CC_silence=0}] run playsound minecraft:entity.warden.attack_impact master @a[distance=..12] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=67,spell_reve_1_1=59,CC_silence=0}] run playsound minecraft:entity.player.attack.strong master @a[distance=..12] ~ ~ ~ 1 0.9 1

execute at @a[scores={char=67,spell_reve_1_1=59,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["shield_bash_thing"],NoGravity:0b}
tp @e[tag=shield_bash_thing,limit=1] @a[scores={char=67,spell_reve_1_1=60},limit=1]

execute at @e[tag=shield_bash_thing] run particle minecraft:sweep_attack ~ ~1.2 ~ 0.3 0.8 0.3 0.0001 3 normal
execute at @e[tag=shield_bash_thing] run particle minecraft:infested ~ ~1.4 ~ 0.4 0.8 0.4 0.0001 1 normal
execute as @e[tag=shield_bash_thing] at @s run tp @s ^ ^ ^0.4
execute at @a[scores={char=67,spell_reve_1_1=70..}] run kill @e[tag=shield_bash_thing]


execute at @a[scores={char=67,spell_reve_1_1=59,CC_silence=0},nbt={active_effects:[{id:"minecraft:absorption"}]}] run particle minecraft:sweep_attack ~ ~0.3 ~ 2 0.3 2 0.0001 100 normal
execute at @a[scores={char=67,spell_reve_1_1=59,CC_silence=0},nbt={active_effects:[{id:"minecraft:absorption"}]}] run particle minecraft:block{block_state:{Name:"minecraft:sculk"}} ~ ~1 ~ 2 2 2 1 100
execute at @a[scores={char=67,spell_reve_1_1=59,CC_silence=0},team=purple,nbt={active_effects:[{id:"minecraft:absorption"}]}] run effect give @p[distance=..4,team=yellow] minecraft:slowness 3 1 true
execute at @a[scores={char=67,spell_reve_1_1=59,CC_silence=0},team=yellow,nbt={active_effects:[{id:"minecraft:absorption"}]}] run effect give @p[distance=..4,team=purple] minecraft:slowness 3 1 true

execute at @a[scores={char=67,spell_reve_1_1=59,CC_silence=0},team=purple,nbt={active_effects:[{id:"minecraft:absorption"}]}] at @s as @a[distance=..4,team=yellow] run damage @s 3 generic by @p[scores={char=67}] from @p[scores={char=67}]
execute at @a[scores={char=67,spell_reve_1_1=59,CC_silence=0},team=yellow,nbt={active_effects:[{id:"minecraft:absorption"}]}] at @s as @a[distance=..4,team=purple] run damage @s 3 generic by @p[scores={char=67}] from @p[scores={char=67}]

execute at @e[tag=shield_bash_thing] if entity @a[scores={char=67},team=yellow] run scoreboard players set @p[distance=..2,team=purple] CC_stun 20
execute at @e[tag=shield_bash_thing] if entity @a[scores={char=67},team=yellow] run damage @p[distance=..2,team=purple] 2 generic by @p[scores={char=67}] from @p[scores={char=67}]
execute at @e[tag=shield_bash_thing] if entity @a[scores={char=67},team=yellow] if entity @p[distance=..2,team=purple] run kill @e[tag=shield_bash_thing]

execute at @e[tag=shield_bash_thing] if entity @a[scores={char=67},team=purple] run scoreboard players set @p[distance=..2,team=yellow] CC_stun 20
execute at @e[tag=shield_bash_thing] if entity @a[scores={char=67},team=purple] run damage @p[distance=..2,team=yellow] 2 generic by @p[scores={char=67}] from @p[scores={char=67}]
execute at @e[tag=shield_bash_thing] if entity @a[scores={char=67},team=purple] if entity @p[distance=..2,team=yellow] run kill @e[tag=shield_bash_thing]



# last memories

scoreboard players set @a[scores={char=67,spell_reve_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=67,spell_reve_2_1=1,CC_silence=1..}] spell_reve_2_1 340

execute at @a[scores={char=67,spell_reve_2_1=1,CC_silence=0}] run playsound minecraft:entity.warden.agitated master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=67,spell_reve_2_1=1,CC_silence=0}] run particle minecraft:sculk_charge_pop ~ ~1.5 ~ 0.5 0.5 0.5 0.001 10

execute at @a[scores={char=67,spell_reve_2_1=1..120},team=purple] if entity @p[distance=0.5..5,team=purple] run item replace entity @a[scores={char=67,spell_reve_2_1=1..100}] hotbar.0 with minecraft:wooden_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Broadsword"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:knockback":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}]] 1
execute at @a[scores={char=67,spell_reve_2_1=1..120},team=yellow] if entity @p[distance=0.5..5,team=yellow] run item replace entity @a[scores={char=67,spell_reve_2_1=1..100}] hotbar.0 with minecraft:wooden_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Broadsword"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:knockback":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute at @a[scores={char=67,spell_reve_2_1=1..120},team=purple] unless entity @p[distance=0.5..5,team=purple] run item replace entity @a[scores={char=67,spell_reve_2_1=1..100}] hotbar.0 with minecraft:wooden_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Broadsword"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:knockback":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}]] 1
execute at @a[scores={char=67,spell_reve_2_1=1..120},team=yellow] unless entity @p[distance=0.5..5,team=yellow] run item replace entity @a[scores={char=67,spell_reve_2_1=1..100}] hotbar.0 with minecraft:wooden_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Broadsword"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:knockback":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

item replace entity @a[scores={char=67,spell_reve_2_1=121..}] hotbar.0 with minecraft:wooden_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Broadsword"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute at @a[scores={char=67,spell_reve_2_1=1..120,CC_silence=0}] run particle minecraft:sculk_charge_pop ~ ~1.5 ~ 0.8 0.6 0.8 0.001 1

# revenant

scoreboard players add @a[scores={spell_reve_1=1..}] spell_reve_1_1 1
item replace entity @a[scores={char=67,spell_reve_1_1=220..}] hotbar.1 with minecraft:music_disc_creator_music_box[minecraft:custom_name={text:"Shield Bash",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_reve_1_1=221..}] spell_reve_1 0
scoreboard players set @a[scores={spell_reve_1_1=221..}] spell_reve_1_1 0
scoreboard players set @a[scores={spell_reve_1_1=1}] spellCD1 220

scoreboard players add @a[scores={spell_reve_2=1..}] spell_reve_2_1 1
item replace entity @a[scores={char=67,spell_reve_2_1=360..}] hotbar.2 with minecraft:armadillo_scute[minecraft:custom_name={text:"Last Memories",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:protection":1}] 1
scoreboard players set @a[scores={spell_reve_2_1=361..}] spell_reve_2 0
scoreboard players set @a[scores={spell_reve_2_1=361..}] spell_reve_2_1 0
scoreboard players set @a[scores={char=67,spell_reve_2_1=1}] spellCD2 360

execute as @a[scores={char=67,spell_reve_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:music_disc_creator_music_box",Slot:1b}]}] run clear @a[scores={char=67}] minecraft:music_disc_creator_music_box
item replace entity @a[scores={char=67,spell_reve_1=0}] hotbar.1 with minecraft:music_disc_creator_music_box[minecraft:custom_name={text:"Shield Bash",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=67,spell_reve_2_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:armadillo_scute",Slot:2b}]}] run clear @a[scores={char=67}] minecraft:armadillo_scute
item replace entity @a[scores={char=67,spell_reve_2_1=0}] hotbar.2 with minecraft:armadillo_scute[minecraft:custom_name={text:"Last Memories",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:protection":1}] 1

execute as @a[scores={char=67}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword",Slot:0b}]}] run clear @a[scores={char=67}] minecraft:wooden_sword
item replace entity @a[scores={char=67,spell_reve_2_1=0}] hotbar.0 with minecraft:wooden_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Broadsword"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}]] 1
