kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:music_disc_5"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_gold"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:fire_coral"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:sculk_vein"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:reinforced_deepslate"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_hoe"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_axe"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bow"}}]

execute at @a[scores={char=50,arrowcd_1=..10}] run tag @e[type=minecraft:arrow,distance=..2] add chaosshot_ar
#execute at @e[tag=chaosshot_ar] run particle block{block_state: 'minecraft:green_wool'} ~ ~ ~ 0.1 0.1 0.1 0.1 2

execute at @a[scores={char=50,CC_disarm=1..}] run kill @e[tag=chaosshot_ar]

#1000 forms

scoreboard players set @a[scores={char=50,chaos_forms=1..,form_cooldown=0}] form_cooldown 200
scoreboard players set @a[scores={char=50,form_cooldown=160}] spellCD3 160

scoreboard players set @a[scores={char=50,form_cooldown=200}] CC_intangible 40
scoreboard players set @a[scores={char=50,form_cooldown=200}] spellCD0 40
scoreboard players set @a[scores={char=50,form_cooldown=200}] spellCD2 40
scoreboard players set @a[scores={char=50,form_cooldown=200}] spell_chao_2 0
scoreboard players set @a[scores={char=50,form_cooldown=200}] spell_chao_2_1 0
scoreboard players set @a[scores={char=50,form_cooldown=200}] spell_chao_3 0
scoreboard players set @a[scores={char=50,form_cooldown=200}] spell_chao_3_1 0
scoreboard players set @a[scores={char=50,form_cooldown=200}] spell_chao_4 0
scoreboard players set @a[scores={char=50,form_cooldown=200}] spell_chao_4_1 0
scoreboard players set @a[scores={char=50,form_cooldown=200}] spell_chao_5 0
scoreboard players set @a[scores={char=50,form_cooldown=200}] spell_chao_5_1 0
scoreboard players set @a[scores={char=50,form_cooldown=200}] arrowcd_0 0
scoreboard players set @a[scores={char=50,form_cooldown=200}] arrowcd_1 0

clear @a[scores={char=50,form_cooldown=190..200}] minecraft:golden_hoe
clear @a[scores={char=50,form_cooldown=190..200}] minecraft:wooden_axe
clear @a[scores={char=50,form_cooldown=190..200}] minecraft:netherite_sword
clear @a[scores={char=50,form_cooldown=190..200}] minecraft:bow
clear @a[scores={char=50,form_cooldown=190..200}] minecraft:raw_gold
clear @a[scores={char=50,form_cooldown=190..200}] minecraft:fire_coral
clear @a[scores={char=50,form_cooldown=190..200}] minecraft:sculk_vein
clear @a[scores={char=50,form_cooldown=190..200}] minecraft:reinforced_deepslate
clear @a[scores={char=50,form_cooldown=190..200}] minecraft:arrow

effect give @a[scores={char=50,form_cooldown=200}] minecraft:invisibility 2 0 true
effect give @a[scores={char=50,form_cooldown=200}] minecraft:resistance 2 100 true
effect give @a[scores={char=50,form_cooldown=200}] minecraft:weakness 2 100 true

execute at @a[scores={char=50,form_cooldown=161..200}] run particle minecraft:smoke ~ ~1 ~ 0.7 0.7 0.7 0.001 40
execute at @a[scores={char=50,form_cooldown=161..200}] run particle minecraft:sculk_soul ~ ~1 ~ 0.7 0.7 0.7 0.001 5
execute at @a[scores={char=50,form_cooldown=161..200}] run particle minecraft:sculk_charge_pop ~ ~1 ~ 0.6 0.8 0.6 0.001 10
execute at @a[scores={char=50,form_cooldown=158..200}] run particle minecraft:sculk_charge_pop ~ ~1 ~ 0.6 0.8 0.6 0.001 60

execute at @a[scores={char=50,form_cooldown=200}] run playsound minecraft:entity.warden.emerge master @a[distance=..16] ~ ~ ~ 0.8 1.8 1
execute at @a[scores={char=50,form_cooldown=199}] run playsound minecraft:entity.wither.ambient master @a[distance=..16] ~ ~ ~ 1 0.5 1

tellraw @a[scores={char=50,form_cooldown=199..200}] {text:"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",type:"text"}
tag @a[scores={char=50,form_cooldown=171..200}] add invisible
clear @a[scores={char=50,form_cooldown=171..200}] minecraft:player_head
clear @a[scores={char=50,form_cooldown=171..200}] minecraft:leather_chestplate
clear @a[scores={char=50,form_cooldown=171..200}] minecraft:leather_leggings
clear @a[scores={char=50,form_cooldown=171..200}] minecraft:leather_boots
tag @a[scores={char=50,form_cooldown=161..200}] remove pharaoh
tag @a[scores={char=50,form_cooldown=161..200}] remove tongue
tag @a[scores={char=50,form_cooldown=161..200}] remove dweller
tag @a[scores={char=50,form_cooldown=161..200}] remove faceless


tag @a[scores={char=50,form_cooldown=150..160}] remove invisible
tag @a[scores={char=50,form_cooldown=150..160,chaos_forms=1}] add pharaoh
tag @a[scores={char=50,form_cooldown=150..160,chaos_forms=2}] add tongue
tag @a[scores={char=50,form_cooldown=150..160,chaos_forms=3}] add dweller
tag @a[scores={char=50,form_cooldown=150..160,chaos_forms=4}] add faceless

execute unless entity @e[tag=1984] run item replace entity @a[tag=pharaoh,scores={char=50,form_cooldown=159}] hotbar.2 with minecraft:raw_gold[minecraft:custom_name={text:"Powerslaves",color:"dark_aqua",bold:1b}] 1
execute if entity @e[tag=1984] run item replace entity @a[tag=pharaoh,scores={char=50,form_cooldown=159}] hotbar.2 with minecraft:raw_gold[minecraft:custom_name={text:"Powertrip",color:"dark_aqua",bold:1b}] 1
execute unless entity @e[tag=1984] run item replace entity @a[tag=tongue,scores={char=50,form_cooldown=159}] hotbar.2 with minecraft:fire_coral[minecraft:custom_name={text:"Reflections of Violence",color:"dark_aqua",bold:1b}] 1
execute if entity @e[tag=1984] run item replace entity @a[tag=tongue,scores={char=50,form_cooldown=159}] hotbar.2 with minecraft:fire_coral[minecraft:custom_name={text:"Departure to Destruction",color:"dark_aqua",bold:1b}] 1
item replace entity @a[tag=dweller,scores={char=50,form_cooldown=159}] hotbar.2 with minecraft:sculk_vein[minecraft:custom_name={text:"Cry For the Weeper",color:"dark_aqua",bold:1b}] 1
item replace entity @a[tag=faceless,scores={char=50,form_cooldown=159}] hotbar.2 with minecraft:reinforced_deepslate[minecraft:custom_name={text:"Court of the Chaos King",color:"dark_aqua",bold:1b}] 1

item replace entity @a[tag=pharaoh,scores={char=50,form_cooldown=159}] hotbar.0 with minecraft:golden_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Scepter"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"},{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"}]] 1
item replace entity @a[tag=tongue,scores={char=50,form_cooldown=159}] hotbar.0 with minecraft:wooden_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Appendage"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_speed",amount:-0.85d,operation:"add_multiplied_base",slot:"mainhand"},{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"}]] 1
item replace entity @a[tag=dweller,scores={char=50,form_cooldown=159}] hotbar.0 with minecraft:netherite_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Darkness Tendril"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_speed",amount:-0.55d,operation:"add_multiplied_base",slot:"mainhand"},{id:"armor",type:"minecraft:attack_damage",amount:3.5d,operation:"add_value",slot:"mainhand"}]] 1
item replace entity @a[tag=faceless,scores={char=50,form_cooldown=159}] hotbar.0 with minecraft:bow[minecraft:custom_name={text:"Reach",color:"gray",bold:1b},minecraft:unbreakable={}] 1
item replace entity @a[tag=faceless,scores={char=50,form_cooldown=159}] hotbar.8 with minecraft:arrow 1

scoreboard players set @a[scores={char=50,form_cooldown=140..150}] chaos_forms 0
scoreboard players enable @a[scores={char=50,form_cooldown=1..5}] chaos_forms


scoreboard players set @a[tag=pharaoh,scores={char=50,form_cooldown=150}] MaxHP 20
scoreboard players set @a[tag=tongue,scores={char=50,form_cooldown=150}] MaxHP 30
scoreboard players set @a[tag=dweller,scores={char=50,form_cooldown=150}] MaxHP 20
scoreboard players set @a[tag=faceless,scores={char=50,form_cooldown=150}] MaxHP 16



tellraw @a[tag=pharaoh,scores={char=50,spell_chao_6=1..}] [{text:"======================",bold:1b,strikethrough:1b,color:"dark_red",type:"text"},{text:"\n\n           ",strikethrough:0b,bold:0b,type:"text"},{text:"[",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"TONGUE",color:"red",strikethrough:0b,bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger chaos_forms set 2"}},{text:"]",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"\n  ",strikethrough:0b,bold:0b,type:"text"},{text:"[",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"DWELLER",color:"red",strikethrough:0b,bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger chaos_forms set 3"}},{text:"]",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"    [",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"FACELESS",strikethrough:0b,bold:0b,color:"red",type:"text",click_event:{action:"run_command",command:"/trigger chaos_forms set 4"}},{text:"]",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"\n          ",strikethrough:0b,bold:0b,type:"text"},{text:"[",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"PHARAOH",strikethrough:0b,bold:0b,color:"gray",type:"text"},{text:"]",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"\n\n",type:"text"},{text:"======================",bold:1b,strikethrough:1b,color:"dark_red",type:"text"}]
tellraw @a[tag=tongue,scores={char=50,spell_chao_6=1..}] [{text:"======================",bold:1b,strikethrough:1b,color:"dark_red",type:"text"},{text:"\n\n           ",strikethrough:0b,bold:0b,type:"text"},{text:"[",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"TONGUE",color:"gray",strikethrough:0b,bold:0b,type:"text"},{text:"]",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"\n  ",strikethrough:0b,bold:0b,type:"text"},{text:"[",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"DWELLER",strikethrough:0b,bold:0b,color:"red",type:"text",click_event:{action:"run_command",command:"/trigger chaos_forms set 3"}},{text:"]",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"    [",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"FACELESS",color:"red",strikethrough:0b,bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger chaos_forms set 4"}},{text:"]",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"\n          ",strikethrough:0b,bold:0b,type:"text"},{text:"[",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"PHARAOH",color:"red",strikethrough:0b,bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger chaos_forms set 1"}},{text:"]",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"\n\n",type:"text"},{text:"======================",bold:1b,strikethrough:1b,color:"dark_red",type:"text"}]
tellraw @a[tag=dweller,scores={char=50,spell_chao_6=1..}] [{text:"======================",bold:1b,strikethrough:1b,color:"dark_red",type:"text"},{text:"\n\n           ",strikethrough:0b,bold:0b,type:"text"},{text:"[",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"TONGUE",color:"red",strikethrough:0b,bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger chaos_forms set 2"}},{text:"]",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"\n  ",strikethrough:0b,bold:0b,type:"text"},{text:"[",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"DWELLER",color:"gray",strikethrough:0b,bold:0b,type:"text"},{text:"]",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"    [",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"FACELESS",color:"red",strikethrough:0b,bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger chaos_forms set 4"}},{text:"]",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"\n          ",strikethrough:0b,bold:0b,type:"text"},{text:"[",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"PHARAOH",color:"red",strikethrough:0b,bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger chaos_forms set 1"}},{text:"]",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"\n\n",type:"text"},{text:"======================",bold:1b,strikethrough:1b,color:"dark_red",type:"text"}]
tellraw @a[tag=faceless,scores={char=50,spell_chao_6=1..}] [{text:"======================",bold:1b,strikethrough:1b,color:"dark_red",type:"text"},{text:"\n\n           ",strikethrough:0b,bold:0b,type:"text"},{text:"[",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"TONGUE",color:"red",strikethrough:0b,bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger chaos_forms set 2"}},{text:"]",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"\n  ",strikethrough:0b,bold:0b,type:"text"},{text:"[",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"DWELLER",color:"red",strikethrough:0b,bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger chaos_forms set 3"}},{text:"]",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"    [",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"FACELESS",color:"gray",strikethrough:0b,bold:0b,type:"text"},{text:"]",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"\n          ",strikethrough:0b,bold:0b,type:"text"},{text:"[",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"PHARAOH",color:"red",strikethrough:0b,bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger chaos_forms set 1"}},{text:"]",color:"dark_red",strikethrough:0b,bold:0b,type:"text"},{text:"\n\n",type:"text"},{text:"======================",bold:1b,strikethrough:1b,color:"dark_red",type:"text"}]

item replace entity @a[scores={char=50,spell_chao_6=1..}] hotbar.3 with minecraft:player_head[minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Thousand Faces"},minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzhmM2Q3NjkxZDZkNWQ1NDZjM2NmMjIyNDNiM2U4MzA5YTEwNzAxMWYyZWU5Mzg0OGIxZThjNjU3NjgxYTU2ZCJ9fX0="}]}] 1
scoreboard players set @a[scores={char=50,spell_chao_6=1..}] spell_chao_6 0

execute as @a[scores={char=50,spell_chao_6=0,form_cooldown=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",Slot:3b}]}] run clear @a[scores={char=50}] minecraft:player_head
execute as @a[scores={char=50,spell_chao_6=0,form_cooldown=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:player_head",Slot:3b}]}] run clear @a[scores={char=50}] minecraft:leather_boots
item replace entity @a[scores={char=50,spell_chao_6=0,form_cooldown=0}] hotbar.3 with minecraft:player_head[minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Thousand Faces"},minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzhmM2Q3NjkxZDZkNWQ1NDZjM2NmMjIyNDNiM2U4MzA5YTEwNzAxMWYyZWU5Mzg0OGIxZThjNjU3NjgxYTU2ZCJ9fX0="}]}] 1

item replace entity @a[scores={char=50,form_cooldown=1}] hotbar.3 with minecraft:player_head[minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Thousand Faces"},minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzhmM2Q3NjkxZDZkNWQ1NDZjM2NmMjIyNDNiM2U4MzA5YTEwNzAxMWYyZWU5Mzg0OGIxZThjNjU3NjgxYTU2ZCJ9fX0="}]}] 1
scoreboard players remove @a[scores={char=50,form_cooldown=1..}] form_cooldown 1


#bout of madness

scoreboard players set @a[scores={char=50,spell_chao_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=50,spell_chao_1_1=1,CC_silence=1..}] spell_chao_1_1 380

execute as @a[scores={char=50,spell_chao_1_1=2,CC_silence=0}] at @s run function chars:bout_of_madness_raycast
execute at @a[scores={char=50,spell_chao_1_1=2,CC_silence=0}] run playsound minecraft:entity.ghast.hurt master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=50,spell_chao_1_1=2,CC_silence=0}] run playsound minecraft:entity.wither.ambient master @a[distance=..16] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=50,spell_chao_1_1=3,CC_silence=0}] run playsound minecraft:block.sculk_shrieker.shriek master @a[distance=..16] ~ ~ ~ 1 1.8 1

tag @a[scores={CC_madness=99..100},team=purple] add actual_team_purple
tag @a[scores={CC_madness=99..100},team=yellow] add actual_team_yellow
team join purple @a[tag=actual_team_yellow,scores={CC_madness=98}]
team join yellow @a[tag=actual_team_purple,scores={CC_madness=98}]

team join purple @a[tag=actual_team_purple,scores={CC_madness=3..4}]
team join yellow @a[tag=actual_team_yellow,scores={CC_madness=3..4}]
tag @a[scores={CC_madness=1..2}] remove actual_team_purple
tag @a[scores={CC_madness=1..2}] remove actual_team_yellow

execute at @a[scores={CC_madness=1..100}] run particle minecraft:sculk_charge_pop ~ ~1.5 ~ 0.6 0.6 0.6 0.001 20 force
execute at @a[scores={CC_madness=10..100}] run playsound minecraft:entity.ghast.ambient master @a[distance=..1,scores={CC_madness=1..100}] ~ ~ ~ 0.2 0.1 1

#powerslave

scoreboard players set @a[scores={char=50,spell_chao_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=50,spell_chao_2_1=1,CC_silence=1..}] spell_chao_2_1 220

execute at @a[scores={char=50,spell_chao_2_1=1,CC_silence=0},team=yellow] unless entity @a[distance=1..12,team=yellow] run scoreboard players set @a[scores={char=50,spell_chao_2_1=1,CC_silence=0}] spellCD2 20
execute at @a[scores={char=50,spell_chao_2_1=1,CC_silence=0},team=yellow] unless entity @a[distance=1..12,team=yellow] run scoreboard players set @a[scores={char=50,spell_chao_2_1=1,CC_silence=0}] spell_chao_2_1 220

execute at @a[scores={char=50,spell_chao_2_1=1,CC_silence=0},team=purple] unless entity @a[distance=1..12,team=purple] run scoreboard players set @a[scores={char=50,spell_chao_2_1=1,CC_silence=0}] spellCD2 20
execute at @a[scores={char=50,spell_chao_2_1=1,CC_silence=0},team=purple] unless entity @a[distance=1..12,team=purple] run scoreboard players set @a[scores={char=50,spell_chao_2_1=1,CC_silence=0}] spell_chao_2_1 220


execute at @a[scores={char=50,spell_chao_2_1=2,CC_silence=0},team=yellow] run scoreboard players set @p[distance=1..12,team=yellow] powerslave 100
execute at @a[scores={char=50,spell_chao_2_1=2,CC_silence=0},team=purple] run scoreboard players set @p[distance=1..12,team=purple] powerslave 100

execute at @a[scores={powerslave=99}] run playsound minecraft:entity.illusioner.prepare_mirror master @a[distance=..15] ~ ~ ~ 1 1.6 1
execute at @a[scores={powerslave=99}] run playsound minecraft:item.armor.equip_gold master @a[distance=..15] ~ ~ ~ 1 0.4 1
execute at @a[scores={powerslave=97}] run playsound minecraft:item.armor.equip_gold master @a[distance=..15] ~ ~ ~ 1 0.4 1
execute at @a[scores={powerslave=95}] run playsound minecraft:item.armor.equip_gold master @a[distance=..15] ~ ~ ~ 1 0.4 1

execute at @a[scores={powerslave=95..100}] run particle minecraft:sculk_charge_pop ~ ~1 ~ 0.6 0.8 0.6 0.001 10
execute at @a[scores={powerslave=1..}] run particle minecraft:block{block_state:{Name:"minecraft:gold_block"}} ~ ~ ~ 0.9 0.2 0.9 0.1 30

effect give @a[scores={powerslave=20..}] minecraft:strength 1 0
effect give @a[scores={powerslave=99..100}] minecraft:absorption 5 2

scoreboard players set @a[scores={powerslave=1..,universal_kill=1..}] powerslave 100
scoreboard players remove @a[scores={powerslave=1..}] powerslave 1


#reflections of violence

scoreboard players set @a[scores={char=50,spell_chao_3_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=50,spell_chao_3_1=1,CC_silence=1..}] spell_chao_3_1 140

effect give @a[scores={char=50,spell_chao_3_1=1,CC_silence=0}] minecraft:speed 1 5
effect clear @a[scores={char=50,spell_chao_3_1=10,CC_silence=0}] minecraft:speed
execute at @a[scores={char=50,spell_chao_3_1=10,CC_silence=0}] run playsound minecraft:entity.warden.roar master @a[distance=..12] ~ ~ ~ 1 2 1
execute at @a[scores={char=50,spell_chao_3_1=1..9,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~ ~ 0.5 0.1 0.5 0.1 100
execute at @a[scores={char=50,spell_chao_3_1=10,CC_silence=0}] run particle minecraft:smoke ~ ~ ~ 5 2 5 0.1 100
execute at @a[scores={char=50,spell_chao_3_1=10..12,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~ ~ 5 1 5 0.1 300
execute at @a[scores={char=50,spell_chao_3_1=10..12,CC_silence=0}] run particle minecraft:sculk_charge_pop ~ ~ ~ 5 1 5 0.1 300
execute at @a[scores={char=50,spell_chao_3_1=10..12,CC_silence=0}] run particle minecraft:sculk_soul ~ ~ ~ 5 1 5 0.1 50

execute at @a[scores={char=50,spell_chao_3_1=10,CC_silence=0},team=purple] run scoreboard players set @a[distance=..4,team=yellow] CC_stun 40
execute at @a[scores={char=50,spell_chao_3_1=10,CC_silence=0},team=purple] if entity @a[distance=..4,team=yellow] run effect give @a[scores={char=50}] minecraft:regeneration 5 2 true
execute at @a[scores={char=50,spell_chao_3_1=10,CC_silence=0},team=purple] at @a[distance=..4,team=yellow] run particle minecraft:block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~1 ~ 0.5 1 0.5 1 100
execute at @a[scores={char=50,spell_chao_3_1=10,CC_silence=0},team=purple] at @a[distance=..4,team=yellow] run particle minecraft:crit ~ ~1 ~ 0.5 1 0.5 0.1 100
execute at @a[scores={char=50,spell_chao_3_1=10,CC_silence=0},team=purple] at @a[distance=..4,team=yellow] run playsound minecraft:entity.player.attack.crit master @a[distance=..8] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=50,spell_chao_3_1=10,CC_silence=0},team=purple] at @a[distance=..4,team=yellow] run playsound minecraft:entity.warden.hurt master @a[distance=..8] ~ ~ ~ 1 2 1

execute at @a[scores={char=50,spell_chao_3_1=10,CC_silence=0},team=yellow] run scoreboard players set @a[distance=..4,team=purple] CC_stun 40
execute at @a[scores={char=50,spell_chao_3_1=10,CC_silence=0},team=yellow] if entity @a[distance=..4,team=purple] run effect give @a[scores={char=50}] minecraft:regeneration 5 2 true
execute at @a[scores={char=50,spell_chao_3_1=10,CC_silence=0},team=yellow] at @a[distance=..4,team=purple] run particle minecraft:block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~1 ~ 0.5 1 0.5 1 100
execute at @a[scores={char=50,spell_chao_3_1=10,CC_silence=0},team=yellow] at @a[distance=..4,team=purple] run particle minecraft:crit ~ ~1 ~ 0.5 1 0.5 0.1 100
execute at @a[scores={char=50,spell_chao_3_1=10,CC_silence=0},team=yellow] at @a[distance=..4,team=purple] run playsound minecraft:entity.player.attack.crit master @a[distance=..8] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=50,spell_chao_3_1=10,CC_silence=0},team=yellow] at @a[distance=..4,team=purple] run playsound minecraft:entity.warden.hurt master @a[distance=..8] ~ ~ ~ 1 2 1

#cry for the weeper

scoreboard players set @a[scores={char=50,spell_chao_4_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=50,spell_chao_4_1=1,CC_silence=1..}] spell_chao_4_1 280

execute at @a[scores={char=50,spell_chao_4_1=2,CC_silence=0}] run particle minecraft:smoke ~ ~1 ~ 1 1 1 0.1 600
execute at @a[scores={char=50,spell_chao_4_1=2,CC_silence=0}] run particle minecraft:smoke ~ ~1 ~ 8 0.2 8 0.1 600
execute at @a[scores={char=50,spell_chao_4_1=2,CC_silence=0}] run particle minecraft:sculk_charge_pop ~ ~1 ~ 1 1 1 0.1 100
execute at @a[scores={char=50,spell_chao_4_1=2,CC_silence=0}] run playsound minecraft:block.sculk_shrieker.shriek master @a[distance=..16] ~ ~ ~ 1 1.8 1
execute at @a[scores={char=50,spell_chao_4_1=2,CC_silence=0},team=purple] run effect give @a[distance=..8,team=yellow] minecraft:blindness 3
execute at @a[scores={char=50,spell_chao_4_1=2,CC_silence=0},team=yellow] run effect give @a[distance=..8,team=purple] minecraft:blindness 3
effect give @a[scores={char=50,spell_chao_4_1=1..2,CC_silence=0}] minecraft:invisibility 5 0 true
effect give @a[scores={char=50,spell_chao_4_1=1..2,CC_silence=0}] minecraft:resistance 5 100 true
tag @a[scores={char=50,spell_chao_4_1=2..25,CC_silence=0}] add invisible
scoreboard players set @a[scores={char=50,spell_chao_4_1=2,CC_silence=0}] CC_intangible 100

item replace entity @a[scores={char=50,spell_chao_4_1=2..25}] armor.head with minecraft:air
clear @a[scores={char=50,spell_chao_4_1=2..25}] minecraft:leather_chestplate
clear @a[scores={char=50,spell_chao_4_1=2..25}] minecraft:leather_leggings
clear @a[scores={char=50,spell_chao_4_1=2..25}] minecraft:leather_boots

scoreboard players set @a[scores={char=50,universal_hit=1..,spell_chao_4_1=2..99}] spell_chao_4_1 99
scoreboard players set @a[scores={char=50,universal_hit=1..,spell_chao_4_1=2..99}] spellCD2 201

scoreboard players set @a[scores={char=50,spell_chao_4_1=100..101}] CC_intangible 0
tag @a[scores={char=50,spell_chao_4_1=100..101}] remove invisible
effect clear @a[scores={char=50,spell_chao_4_1=100..101}] minecraft:invisibility
effect clear @a[scores={char=50,spell_chao_4_1=100..101}] minecraft:resistance
execute at @a[scores={char=50,spell_chao_4_1=100..101}] run particle minecraft:smoke ~ ~1 ~ 2 2 2 0.1 400
execute at @a[scores={char=50,spell_chao_4_1=100..101}] run particle minecraft:smoke ~ ~1 ~ 8 0.2 8 0.1 400
execute at @a[scores={char=50,spell_chao_4_1=100..101}] run particle minecraft:sculk_charge_pop ~ ~1 ~ 1 1 1 0.1 100
execute at @a[scores={char=50,spell_chao_4_1=100..101}] run playsound minecraft:block.sculk_shrieker.shriek master @a[distance=..16] ~ ~ ~ 1 1.6 1
execute at @a[scores={char=50,spell_chao_4_1=101},team=purple] run effect give @a[distance=..8,team=yellow] minecraft:blindness 3
execute at @a[scores={char=50,spell_chao_4_1=101},team=yellow] run effect give @a[distance=..8,team=purple] minecraft:blindness 3


#court of the chaos king

scoreboard players set @a[scores={char=50,spell_chao_5_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=50,spell_chao_5_1=1,CC_silence=1..}] spell_chao_5_1 140

execute at @a[scores={char=50,spell_chao_5_1=2,CC_silence=0}] if block ~ ~-1 ~ #minecraft:dash run playsound minecraft:entity.wither.hurt master @a[scores={char=50}] ~ ~ ~ 0.5 1.5 1
execute at @a[scores={char=50,spell_chao_5_1=2,CC_silence=0}] if block ~ ~-1 ~ #minecraft:dash run scoreboard players set @a[scores={char=50}] spellCD2 20
execute at @a[scores={char=50,spell_chao_5_1=2,CC_silence=0}] if block ~ ~-1 ~ #minecraft:dash run scoreboard players set @a[scores={char=50}] spell_chao_5_1 140
execute at @a[scores={char=50,spell_chao_5_1=2,CC_silence=0}] if block ~ ~-1 ~ minecraft:reinforced_deepslate run playsound minecraft:entity.wither.hurt master @a[scores={char=50}] ~ ~ ~ 0.5 1.5 1
execute at @a[scores={char=50,spell_chao_5_1=2,CC_silence=0}] if block ~ ~-1 ~ minecraft:reinforced_deepslate run scoreboard players set @a[scores={char=50}] spellCD2 20
execute at @a[scores={char=50,spell_chao_5_1=2,CC_silence=0}] if block ~ ~-1 ~ minecraft:reinforced_deepslate run scoreboard players set @a[scores={char=50}] spell_chao_5_1 140

execute as @e[tag=court_pillar] at @s unless entity @a[distance=..6,scores={char=50}] run fill ~4 ~-2 ~4 ~-4 ~2 ~-4 minecraft:air replace minecraft:reinforced_deepslate
execute as @e[tag=court_pillar] at @s unless entity @a[distance=..6,scores={char=50}] run kill @s

execute at @a[scores={char=50,spell_chao_5_1=2,CC_silence=0}] at @e[tag=court_pillar] run fill ~4 ~-2 ~4 ~-4 ~4 ~-4 minecraft:air replace minecraft:reinforced_deepslate
execute at @a[scores={char=50,spell_chao_5_1=2,CC_silence=0}] run kill @e[tag=court_pillar]

execute at @a[scores={char=50,spell_chao_5_1=3,CC_silence=0}] run playsound minecraft:block.grindstone.use master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=50,spell_chao_5_1=2,CC_silence=0}] align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["court_pillar"]}

execute at @a[scores={char=50,spell_chao_5_1=2}] at @e[tag=court_pillar] if block ~ ~2 ~ #minecraft:dash if block ~ ~1 ~ #minecraft:dash run tp @a[scores={char=50}] ~ ~1 ~
execute at @a[scores={char=50,spell_chao_5_1=2}] at @e[tag=court_pillar] run fill ~ ~ ~ ~ ~ ~ minecraft:reinforced_deepslate replace #minecraft:dash
execute at @a[scores={char=50,spell_chao_5_1=2}] at @e[tag=court_pillar] run particle minecraft:sculk_charge_pop ~ ~ ~ 3 0.2 3 0.1 100
execute at @a[scores={char=50,spell_chao_5_1=2}] at @e[tag=court_pillar] run particle minecraft:block{block_state:{Name:"minecraft:reinforced_deepslate"}} ~ ~ ~ 3 0.2 3 0.1 100
execute at @a[scores={char=50,spell_chao_5_1=2},team=yellow] at @e[tag=court_pillar] run effect give @a[distance=..3,team=purple] minecraft:slowness 1 100 true
execute at @a[scores={char=50,spell_chao_5_1=2},team=yellow] at @e[tag=court_pillar] run scoreboard players set @a[distance=..3,team=purple] CC_root 20
execute at @a[scores={char=50,spell_chao_5_1=2},team=purple] at @e[tag=court_pillar] run effect give @a[distance=..3,team=yellow] minecraft:slowness 1 100 true
execute at @a[scores={char=50,spell_chao_5_1=2},team=purple] at @e[tag=court_pillar] run scoreboard players set @a[distance=..3,team=yellow] CC_root 20

execute at @a[scores={char=50,spell_chao_5_1=5}] at @e[tag=court_pillar] if block ~ ~3 ~ #minecraft:dash if block ~ ~2 ~ #minecraft:dash run tp @a[scores={char=50}] ~ ~2 ~
execute at @a[scores={char=50,spell_chao_5_1=5}] at @e[tag=court_pillar] run fill ~ ~ ~ ~ ~1 ~ minecraft:reinforced_deepslate replace #minecraft:dash
execute at @a[scores={char=50,spell_chao_5_1=5}] at @e[tag=court_pillar] run particle minecraft:sculk_charge_pop ~ ~ ~ 5 0.2 5 0.1 200
execute at @a[scores={char=50,spell_chao_5_1=5}] at @e[tag=court_pillar] run particle minecraft:block{block_state:{Name:"minecraft:reinforced_deepslate"}} ~ ~ ~ 5 0.2 5 0.1 200

execute at @a[scores={char=50,spell_chao_5_1=5},team=yellow] at @e[tag=court_pillar] run scoreboard players set @a[distance=..5,team=purple] CC_root 20

execute at @a[scores={char=50,spell_chao_5_1=5},team=purple] at @e[tag=court_pillar] run scoreboard players set @a[distance=..5,team=yellow] CC_root 20

execute at @a[scores={char=50,spell_chao_5_1=10}] at @e[tag=court_pillar] if block ~ ~4 ~ #minecraft:dash if block ~ ~3 ~ #minecraft:dash run tp @a[scores={char=50}] ~ ~3 ~
execute at @a[scores={char=50,spell_chao_5_1=10}] at @e[tag=court_pillar] run fill ~ ~ ~ ~ ~2 ~ minecraft:reinforced_deepslate replace #minecraft:dash
execute at @a[scores={char=50,spell_chao_5_1=10}] at @e[tag=court_pillar] run particle minecraft:sculk_charge_pop ~ ~ ~ 8 0.2 8 0.1 300
execute at @a[scores={char=50,spell_chao_5_1=10}] at @e[tag=court_pillar] run particle minecraft:block{block_state:{Name:"minecraft:reinforced_deepslate"}} ~ ~ ~ 8 0.2 8 0.1 300

execute at @a[scores={char=50,spell_chao_5_1=10},team=yellow] at @e[tag=court_pillar] run scoreboard players set @a[distance=..8,team=purple] CC_root 20

execute at @a[scores={char=50,spell_chao_5_1=10},team=purple] at @e[tag=court_pillar] run scoreboard players set @a[distance=..8,team=yellow] CC_root 20


execute at @a[scores={char=50}] if block ~ ~-1 ~ minecraft:reinforced_deepslate run effect give @a[scores={char=50}] minecraft:resistance 1 1 true

#madness taunts


title @a[scores={CC_madness=1..}] times 0 5 1
title @a[scores={CC_madness=1..}] title {text:" ",type:"text"}
title @a[scores={CC_madness=1..,char=1}] subtitle {text:"Everyone you loved ends the same",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=2}] subtitle {text:"You can't fix him",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=3}] subtitle {text:"Coward",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=4}] subtitle {text:"Nobody truly escapes The Void",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=5}] subtitle {text:"Once a tool, always a tool",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=6}] subtitle {text:"Even death may die",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=7}] subtitle {text:"They all laugh at you",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=8}] subtitle {text:"Yes, you are losing memories!",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=9}] subtitle {text:"Hunger",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=10}] subtitle {text:"How long until they find you?",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=11}] subtitle {text:"You've dug one for yourself",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=12}] subtitle {text:"Meh, I saw better",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=13}] subtitle {text:"Void is so quiet without your cries",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=14}] subtitle {text:"They forgot, but have not forgiven",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=15}] subtitle {text:"impostor amongus",obfuscated:1b,color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=16}] subtitle {text:"Without your swamp you are nothing",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=17}] subtitle {text:"You will never bring her back",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=18}] subtitle {text:"Want to die for the third time?",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=19}] subtitle {text:"The voices were real",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=666}] subtitle {text:"She will die, and you will follow",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=20}] subtitle {text:"You can't hide forever",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=21}] subtitle {text:"I'm not afraid of you",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=22}] subtitle {text:"All you did was futile",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=23}] subtitle {text:"They will find out one day",color:"red",type:"text"}
execute unless entity @e[tag=1984] run title @a[scores={CC_madness=1..,char=24}] subtitle {text:"None of them will ever love you",color:"red",type:"text"}
execute if entity @e[tag=1984] run title @a[scores={CC_madness=1..,char=24}] subtitle {text:"None of them will ever take you seriously",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=25}] subtitle {text:"They ARE stronger than you",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=26}] subtitle {text:"You... I like",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=27}] subtitle {text:"Nah, you can't kill him",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=28}] subtitle {text:"All you got are memories, warm and purple",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=29}] subtitle {text:"Burn away",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=30}] subtitle {text:"Afraid of growing taller?",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=31}] subtitle {text:"Where is your crew, captain?",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=32}] subtitle {text:"Impressive, but futile",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=33}] subtitle {text:"Blind vengeance, that's the spirit!",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=34}] subtitle {text:"They will die, but you will remain",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=35}] subtitle {text:"Pretty sinful for a priestess",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=36}] subtitle {text:"Your dungeon was too noisy",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=37}] subtitle {text:"Now we can talk!",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=38}] subtitle {text:"I'm a big fan of your work!",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=39}] subtitle {text:"You won't be able to sleep once he wakes up",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=40}] subtitle {text:"And they won't stop coming!",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=41}] subtitle {text:"Living in the light!",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=42}] subtitle {text:"Be hunted",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=43}] subtitle {text:"They forgot, but you won't ever",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=44}] subtitle {text:"Back to the roots, I see",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=45}] subtitle {text:"Need a hand?",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=46}] subtitle {text:"Bruteforce throught THIS!",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=47}] subtitle {text:"Missed me, traitor?",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=48}] subtitle {text:"And now do it without the toys",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=49}] subtitle {text:"Good job",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=50}] subtitle {text:"You gave me my own CC effect, very funny!",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=51}] subtitle {text:"Here I am now, entertain me!",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=52}] subtitle {text:"I'd SHOW you something, but... heh he he...",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=53}] subtitle {text:"You can't cut out your memories",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=54}] subtitle {text:"Driven mad by a sea monster, how original...",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=55}] subtitle {text:"Watch out for that shadow, young man...",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=56}] subtitle {text:"More like, smoke widow",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=57}] subtitle {text:"YOU CAN'T ESCAPE",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=58}] subtitle {text:"Ashes to ashes, and you've made her ash",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=59}] subtitle {text:"Burn away",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=60}] subtitle {text:"Practice makes perfect, so keep trying!",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=61}] subtitle {text:"Keep that misericorde, you will need it...",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=62}] subtitle {text:"You were never on top of the food chain",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=63}] subtitle {text:"Spectrum of talking to flowers",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=64}] subtitle {text:"Forever a prisoner of your own desires",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=65}] subtitle {text:"Unravel you cookbook",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=66}] subtitle {text:"So THIS is a LICH in this world?",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=67}] subtitle {text:"Ravaged, despite all of this iron...",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=68}] subtitle {text:"How it feels to fight with borrowed bones?",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=69}] subtitle {text:"You still look better in a dress",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=70}] subtitle {text:"MADNESS",color:"red",type:"text"}
title @a[scores={CC_madness=1..,char=71}] subtitle {text:"MADNESS",color:"red",type:"text"}


#chaos

scoreboard players add @a[scores={spell_chao_1=1..}] spell_chao_1_1 1
item replace entity @a[scores={char=50,spell_chao_1_1=360..}] hotbar.1 with minecraft:music_disc_5[minecraft:custom_name={text:"Bout of Mandess",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_chao_1_1=361..}] spell_chao_1 0
scoreboard players set @a[scores={spell_chao_1_1=361..}] spell_chao_1_1 0
scoreboard players set @a[scores={spell_chao_1_1=1}] spellCD1 360

scoreboard players add @a[scores={spell_chao_2=1..}] spell_chao_2_1 1
execute unless entity @e[tag=1984] run item replace entity @a[scores={char=50,spell_chao_2_1=240..}] hotbar.2 with minecraft:raw_gold[minecraft:custom_name={text:"Powerslaves",color:"dark_aqua",bold:1b}] 1
execute if entity @e[tag=1984] run item replace entity @a[scores={char=50,spell_chao_2_1=240..}] hotbar.2 with minecraft:raw_gold[minecraft:custom_name={text:"Powertrip",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_chao_2_1=241..}] spell_chao_2 0
scoreboard players set @a[scores={spell_chao_2_1=241..}] spell_chao_2_1 0
scoreboard players set @a[scores={spell_chao_2_1=1}] spellCD2 240

scoreboard players add @a[scores={spell_chao_3=1..}] spell_chao_3_1 1
execute unless entity @e[tag=1984] run item replace entity @a[scores={char=50,spell_chao_3_1=200..}] hotbar.2 with minecraft:fire_coral[minecraft:custom_name={text:"Reflections of Violence",color:"dark_aqua",bold:1b}] 1
execute if entity @e[tag=1984] run item replace entity @a[scores={char=50,spell_chao_3_1=200..}] hotbar.2 with minecraft:fire_coral[minecraft:custom_name={text:"Departure to Destruction",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_chao_3_1=201..}] spell_chao_3 0
scoreboard players set @a[scores={spell_chao_3_1=201..}] spell_chao_3_1 0
scoreboard players set @a[scores={spell_chao_3_1=1}] spellCD2 200

scoreboard players add @a[scores={spell_chao_4=1..}] spell_chao_4_1 1
item replace entity @a[scores={char=50,spell_chao_4_1=300..}] hotbar.2 with minecraft:sculk_vein[minecraft:custom_name={text:"Cry For the Weeper",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_chao_4_1=301..}] spell_chao_4 0
scoreboard players set @a[scores={spell_chao_4_1=301..}] spell_chao_4_1 0
scoreboard players set @a[scores={spell_chao_4_1=1}] spellCD2 300

scoreboard players add @a[scores={spell_chao_5=1..}] spell_chao_5_1 1
item replace entity @a[scores={char=50,spell_chao_5_1=160..}] hotbar.2 with minecraft:reinforced_deepslate[minecraft:custom_name={text:"Court of the Chaos King",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_chao_5_1=161..}] spell_chao_5 0
scoreboard players set @a[scores={spell_chao_5_1=161..}] spell_chao_5_1 0
scoreboard players set @a[scores={spell_chao_5_1=1}] spellCD2 160

execute as @a[tag=pharaoh,scores={char=50}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_hoe",Slot:0b}]}] run clear @a[scores={char=50}] minecraft:golden_hoe
item replace entity @a[tag=pharaoh,scores={char=50}] hotbar.0 with minecraft:golden_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Scepter"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"},{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"}]] 1

execute as @a[tag=tongue,scores={char=50}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_axe",Slot:0b}]}] run clear @a[scores={char=50}] minecraft:wooden_axe
item replace entity @a[tag=tongue,scores={char=50}] hotbar.0 with minecraft:wooden_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Appendage"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_speed",amount:-0.85d,operation:"add_multiplied_base",slot:"mainhand"},{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"}]] 1

execute as @a[tag=dweller,scores={char=50}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_sword",Slot:0b}]}] run clear @a[scores={char=50}] minecraft:netherite_sword
item replace entity @a[tag=dweller,scores={char=50}] hotbar.0 with minecraft:netherite_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Darkness Tendril"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_speed",amount:-0.55d,operation:"add_multiplied_base",slot:"mainhand"},{id:"armor",type:"minecraft:attack_damage",amount:3.5d,operation:"add_value",slot:"mainhand"}]] 1

execute as @a[tag=faceless,scores={char=50}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Slot:0b}]}] run clear @a[scores={char=50}] minecraft:bow
item replace entity @a[tag=faceless,scores={char=50}] hotbar.0 with minecraft:bow[minecraft:custom_name={text:"Reach",color:"gray",bold:1b},minecraft:unbreakable={}] 1


execute as @a[scores={char=50,spell_chao_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:music_disc_5",Slot:1b}]}] run clear @a[scores={char=50}] minecraft:music_disc_5
item replace entity @a[scores={char=50,spell_chao_1=0}] hotbar.1 with minecraft:music_disc_5[minecraft:custom_name={text:"Bout of Mandess",color:"dark_aqua",bold:1b}] 1

execute as @a[tag=pharaoh,scores={char=50,spell_chao_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:raw_gold",Slot:2b}]}] run clear @a[scores={char=50}] minecraft:raw_gold
execute unless entity @e[tag=1984] run item replace entity @a[tag=pharaoh,scores={char=50,spell_chao_2=0}] hotbar.2 with minecraft:raw_gold[minecraft:custom_name={text:"Powerslaves",color:"dark_aqua",bold:1b}] 1
execute if entity @e[tag=1984] run item replace entity @a[tag=pharaoh,scores={char=50,spell_chao_2=0}] hotbar.2 with minecraft:raw_gold[minecraft:custom_name={text:"Powertrip",color:"dark_aqua",bold:1b}] 1

execute as @a[tag=tongue,scores={char=50,spell_chao_3=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:fire_coral",Slot:2b}]}] run clear @a[scores={char=50}] minecraft:fire_coral
execute unless entity @e[tag=1984] run item replace entity @a[tag=tongue,scores={char=50,spell_chao_3=0}] hotbar.2 with minecraft:fire_coral[minecraft:custom_name={text:"Reflections of Violence",color:"dark_aqua",bold:1b}] 1
execute if entity @e[tag=1984] run item replace entity @a[tag=tongue,scores={char=50,spell_chao_3=0}] hotbar.2 with minecraft:fire_coral[minecraft:custom_name={text:"Departure to Destruction",color:"dark_aqua",bold:1b}] 1

execute as @a[tag=dweller,scores={char=50,spell_chao_4=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:sculk_vein",Slot:2b}]}] run clear @a[scores={char=50}] minecraft:sculk_vein
item replace entity @a[tag=dweller,scores={char=50,spell_chao_4=0}] hotbar.2 with minecraft:sculk_vein[minecraft:custom_name={text:"Cry For the Weeper",color:"dark_aqua",bold:1b}] 1

execute as @a[tag=faceless,scores={char=50,spell_chao_5=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:reinforced_deepslate",Slot:2b}]}] run clear @a[scores={char=50}] minecraft:reinforced_deepslate
item replace entity @a[tag=faceless,scores={char=50,spell_chao_5=0}] hotbar.2 with minecraft:reinforced_deepslate[minecraft:custom_name={text:"Court of the Chaos King",color:"dark_aqua",bold:1b}] 1