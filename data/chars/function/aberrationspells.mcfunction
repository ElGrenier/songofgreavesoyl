kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:sculk_shrieker"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_pickaxe"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_hoe"}}]

#passive

execute as @a[scores={char=49}] run attribute @s minecraft:attack_damage modifier remove minecraft:terminus
#tellraw @a[scores={char=49,universal_hit=1..}] [{"text":"Damage: ","bold":true,"color":"dark_gray"},{"score":{"name":"@a[scores={char=49}]","objective":"universal_hit"},"bold":true,"color":"dark_aqua"},{"text":"","bold":true,"color":"red"}]

scoreboard players set @a[scores={char=49}] passive_aber 0
execute as @a[tag=aberration] unless entity @s[scores={char=49}] run tag @s remove aberration
tag @a[tag=!aberration,scores={char=49}] add aberration

advancement grant @a[advancements={chars:anom_prot=true}] only chars:hit_by_aberration
scoreboard players add @a[advancements={chars:hit_by_aberration=true}] passive_aber_stack 1
scoreboard players set @a[advancements={chars:hit_by_aberration=true}] passive_aber_stack_timer 61
scoreboard players set @a[scores={passive_aber_stack=6..}] passive_aber_stack 5

tag @a[advancements={chars:hit_by_aberration=true}] add f_you_in_particular
execute as @a[tag=f_you_in_particular] run scoreboard players set @a[tag=!f_you_in_particular] passive_aber_stack 0
execute as @a[tag=f_you_in_particular] run scoreboard players set @a[tag=!f_you_in_particular] passive_aber_stack_timer 0
tag @a remove f_you_in_particular

scoreboard players remove @a[scores={passive_aber_stack=1..}] passive_aber_stack_timer 1
scoreboard players remove @a[scores={passive_aber_stack=1..,passive_aber_stack_timer=0}] passive_aber_stack 1
scoreboard players set @a[scores={passive_aber_stack=1..,passive_aber_stack_timer=0}] passive_aber_stack_timer 60
advancement revoke @a[advancements={chars:hit_by_aberration=true}] only chars:hit_by_aberration
execute as @a[scores={passive_aber_stack=1..}] run function chars:aberration_look

execute at @a[scores={char=49}] unless entity @a[scores={char=49},predicate=chars:aberration_looking_at] as @p[distance=..0.6,scores={passive_aber_stack=1..}] run scoreboard players set @a[scores={passive_aber_display=1}] passive_aber_display 0
execute at @a[scores={char=49}] unless entity @a[scores={char=49},predicate=chars:aberration_looking_at] as @p[distance=..0.6,scores={passive_aber_stack=1..}] run scoreboard players set @s passive_aber_display 1
execute at @a[scores={char=49}] unless entity @a[scores={char=49},predicate=chars:aberration_looking_at] as @p[distance=..0.6,scores={passive_aber_stack=1..}] run scoreboard players set @s passive_aber_display_timer 80
execute at @a[scores={char=49}] unless entity @a[scores={char=49},predicate=chars:aberration_looking_at] as @p[distance=..0.6,scores={passive_aber_stack=1..}] run scoreboard players operation @a[scores={char=49}] passive_aber = @s passive_aber_stack

execute as @a[scores={char=49}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_pickaxe",Slot:0b}]}] run clear @a[scores={char=49}] minecraft:diamond_pickaxe
item replace entity @a[scores={char=49,aber_s2_buff=0}] hotbar.0 with minecraft:diamond_pickaxe[minecraft:custom_name={bold:1b,color:"gray",text:"Lashers"},minecraft:unbreakable={},minecraft:custom_data={terminus:1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1
item replace entity @a[scores={char=49,aber_s2_buff=1..}] hotbar.0 with minecraft:diamond_pickaxe[minecraft:custom_name={bold:1b,color:"gray",text:"Lashers"},minecraft:unbreakable={},minecraft:custom_data={terminus:1},minecraft:enchantments={},minecraft:enchantment_glint_override=0b,minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.5d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

scoreboard players set @a[scores={char=49},nbt=!{SelectedItem:{components:{"minecraft:custom_data":{terminus:1}}}}] passive_aber 0

execute as @a[scores={char=49,passive_aber=1}] run attribute @s minecraft:attack_damage modifier add minecraft:terminus 0.5 add_value
execute as @a[scores={char=49,passive_aber=2}] run attribute @s minecraft:attack_damage modifier add minecraft:terminus 1 add_value
execute as @a[scores={char=49,passive_aber=3}] run attribute @s minecraft:attack_damage modifier add minecraft:terminus 1.5 add_value
execute as @a[scores={char=49,passive_aber=4}] run attribute @s minecraft:attack_damage modifier add minecraft:terminus 2 add_value
execute as @a[scores={char=49,passive_aber=5}] run attribute @s minecraft:attack_damage modifier add minecraft:terminus 2.5 add_value


#scoreboard players remove @a[scores={passive_aber_display=1,passive_aber_display_timer=1..}]
scoreboard players set @a[scores={passive_aber_display=1,passive_aber_display_timer=0}] passive_aber_display 0

execute as @a[scores={passive_aber_display=1,passive_aber_stack=0}] run title @a[scores={char=49}] actionbar [{selector:"@s",type:"selector"},{text:" [",bold:1b,color:"dark_aqua",type:"text"},{text:" - - - - - ",bold:1b,color:"aqua",type:"text"},{text:"]",bold:1b,color:"dark_aqua",type:"text"}]
execute as @a[scores={passive_aber_display=1,passive_aber_stack=1}] run title @a[scores={char=49}] actionbar [{selector:"@s",type:"selector"},{text:" [",bold:1b,color:"dark_aqua",type:"text"},{text:" || - - - - ",bold:1b,color:"aqua",type:"text"},{text:"]",bold:1b,color:"dark_aqua",type:"text"}]
execute as @a[scores={passive_aber_display=1,passive_aber_stack=2}] run title @a[scores={char=49}] actionbar [{selector:"@s",type:"selector"},{text:" [",bold:1b,color:"dark_aqua",type:"text"},{text:" || || - - - ",bold:1b,color:"aqua",type:"text"},{text:"]",bold:1b,color:"dark_aqua",type:"text"}]
execute as @a[scores={passive_aber_display=1,passive_aber_stack=3}] run title @a[scores={char=49}] actionbar [{selector:"@s",type:"selector"},{text:" [",bold:1b,color:"dark_aqua",type:"text"},{text:" || || || - - ",bold:1b,color:"aqua",type:"text"},{text:"]",bold:1b,color:"dark_aqua",type:"text"}]
execute as @a[scores={passive_aber_display=1,passive_aber_stack=4}] run title @a[scores={char=49}] actionbar [{selector:"@s",type:"selector"},{text:" [",bold:1b,color:"dark_aqua",type:"text"},{text:" || || || || - ",bold:1b,color:"aqua",type:"text"},{text:"]",bold:1b,color:"dark_aqua",type:"text"}]
execute as @a[scores={passive_aber_display=1,passive_aber_stack=5}] run title @a[scores={char=49}] actionbar [{selector:"@s",type:"selector"},{text:" [",bold:1b,color:"dark_aqua",type:"text"},{text:" || || || || || ",bold:1b,color:"aqua",type:"text"},{text:"]",bold:1b,color:"dark_aqua",type:"text"}]

#item replace entity @a[nbt=!{Inventory:[{components:{"minecraft:custom_data":{terminus:1}}},scores={char=49}] hotbar.0 with diamond_pickaxe[custom_name='{"bold":true,"color":"gray","text":"Lashers"}',unbreakable={},custom_data={terminus:1},enchantments={levels:{}},enchantment_glint_override=false,attribute_modifiers=[{id:"armor",type:"attack_damage",amount:2.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

#s1
scoreboard players remove @a[scores={aber_s1_debuff=1..}] aber_s1_debuff 1

execute as @a[scores={char=49}] at @s if entity @a[distance=..6,scores={aber_s1_debuff=1..}] run effect give @s minecraft:resistance 1 1

#execute as @a[scores={char=49,spell_aber_1_1=1,CC_silence=0}] run scoreboard players set @a[advancements={chars:anom_prot=true}] aber_s1_debuff 140
scoreboard players set @a[advancements={chars:anom_prot=true}] aber_s1_debuff 120
execute at @a[scores={char=49,spell_aber_1_1=1,CC_silence=0}] run playsound minecraft:entity.warden.agitated master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=49,spell_aber_1_1=1,CC_silence=0}] run playsound minecraft:entity.illusioner.prepare_blindness master @a[distance=..10] ~ ~ ~ 1 2 1

execute as @a[scores={char=49}] at @s if entity @a[distance=..6,scores={aber_s1_debuff=1..}] facing entity @a[scores={aber_s1_debuff=1..}] eyes rotated ~ 0 run particle minecraft:sculk_charge{roll:0} ^ ^1 ^.5 0 0 0 0 0 force @a[distance=..10]
execute as @a[scores={char=49}] at @s if entity @a[distance=..6,scores={aber_s1_debuff=1..}] facing entity @a[scores={aber_s1_debuff=1..}] eyes rotated ~ 0 run particle minecraft:sculk_charge{roll:0} ^ ^1 ^1 0 0 0 0 0 force @a[distance=..10]
execute as @a[scores={char=49}] at @s if entity @a[distance=..6,scores={aber_s1_debuff=1..}] facing entity @a[scores={aber_s1_debuff=1..}] eyes rotated ~ 0 run particle minecraft:sculk_charge{roll:0} ^ ^1 ^1.5 0 0 0 0 0 force @a[distance=..10]
execute as @a[scores={char=49}] at @s if entity @a[distance=..6,scores={aber_s1_debuff=1..}] facing entity @a[scores={aber_s1_debuff=1..}] eyes rotated ~ 0 run particle minecraft:sculk_charge{roll:0} ^ ^1 ^2 0 0 0 0 0 force @a[distance=..10]
execute as @a[scores={char=49}] at @s if entity @a[distance=..6,scores={aber_s1_debuff=1..}] facing entity @a[scores={aber_s1_debuff=1..}] eyes rotated ~ 0 run particle minecraft:sculk_charge{roll:0} ^ ^1 ^2.5 0 0 0 0 0 force @a[distance=..10]
execute as @a[scores={char=49}] at @s if entity @a[distance=..6,scores={aber_s1_debuff=1..}] facing entity @a[scores={aber_s1_debuff=1..}] eyes rotated ~ 0 run particle minecraft:sculk_charge{roll:0} ^ ^1 ^3 0 0 0 0 0 force @a[distance=..10]


advancement revoke @a[advancements={chars:anom_prot=true}] only chars:anom_prot
#s2

scoreboard players set @a[scores={char=49,spell_aber_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=49,spell_aber_2_1=1,CC_silence=1..}] spell_aber_2_1 240

clear @a[scores={char=49,aber_s2_buff=1}] minecraft:diamond_pickaxe[minecraft:custom_data={terminus:1}]

scoreboard players set @a[scores={char=49,universal_kill=1,aber_s2_buff=1..}] aber_s2_buff 100
execute at @a[scores={char=49,universal_kill=1,aber_s2_buff=1..}] run particle minecraft:sculk_charge_pop ~ ~1 ~ 2 2 2 0.05 100 force @a
execute at @a[scores={char=49,universal_kill=1,aber_s2_buff=1..}] run playsound minecraft:entity.warden.roar master @a[distance=..10] ~ ~ ~ .8 2 .8

execute as @a[scores={char=49,spell_aber_2_1=1,CC_silence=0}] run clear @s minecraft:diamond_pickaxe[minecraft:custom_data={terminus:1}]
execute as @a[scores={char=49,spell_aber_2_1=1,CC_silence=0}] run scoreboard players set @s aber_s2_buff 100
execute at @a[scores={char=49,spell_aber_2_1=1,CC_silence=0}] run playsound minecraft:entity.evoker.prepare_attack master @a[distance=..10] ~ ~ ~ .8 2 .8
execute at @a[scores={char=49,spell_aber_2_1=1,CC_silence=0}] run playsound minecraft:entity.warden.roar master @a[distance=..10] ~ ~ ~ .8 2 .8

execute as @a[scores={char=49,aber_s2_buff=1..}] run scoreboard players remove @s aber_s2_buff 1
execute at @a[scores={char=49,aber_s2_buff=1..}] run particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.05 2 force @a
execute at @a[scores={char=49,aber_s2_buff=1..}] run particle minecraft:sculk_charge_pop ~ ~1 ~ 0.5 1 0.5 0.05 2 force @a
execute as @a[scores={char=49,aber_s2_buff=20..}] run effect give @s minecraft:speed 1 0 true


# aberration

scoreboard players add @a[scores={spell_aber_1=1..}] spell_aber_1_1 1
item replace entity @a[scores={char=49,spell_aber_1_1=321..}] hotbar.1 with minecraft:diamond_hoe[minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Beyond Matter"},minecraft:damage=1562,minecraft:custom_data={anom_prot:1},minecraft:enchantments={},minecraft:enchantment_glint_override=0b,minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.5d,operation:"add_value",slot:"mainhand"}]] 1
scoreboard players set @a[scores={spell_aber_1_1=321..}] spell_aber_1 0
scoreboard players set @a[scores={spell_aber_1_1=321..}] spell_aber_1_1 0
scoreboard players set @a[scores={spell_aber_1_1=1}] spellCD1 320

scoreboard players add @a[scores={spell_aber_2=1..}] spell_aber_2_1 1
item replace entity @a[scores={char=49,spell_aber_2_1=240..}] hotbar.2 with minecraft:sculk_shrieker[minecraft:custom_name={text:"It's Writhing",color:"dark_aqua",bold:1b},minecraft:enchantment_glint_override=1b] 1
scoreboard players set @a[scores={spell_aber_2_1=241..}] spell_aber_2 0
scoreboard players set @a[scores={spell_aber_2_1=241..}] spell_aber_2_1 0
scoreboard players set @a[scores={spell_aber_2_1=1}] spellCD2 240

execute as @a[scores={char=49,spell_aber_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_hoe",Slot:1b}]}] run clear @a[scores={char=49}] minecraft:diamond_hoe
item replace entity @a[scores={char=49,spell_aber_1=0}] hotbar.1 with minecraft:diamond_hoe[minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Beyond Matter"},minecraft:damage=1562,minecraft:custom_data={anom_prot:1},minecraft:enchantments={},minecraft:enchantment_glint_override=0b,minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.5d,operation:"add_value",slot:"mainhand"}]] 1

execute as @a[scores={char=49,spell_aber_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:sculk_shrieker",Slot:2b}]}] run clear @a[scores={char=49}] minecraft:sculk_shrieker
item replace entity @a[scores={char=49,spell_aber_2=0}] hotbar.2 with minecraft:sculk_shrieker[minecraft:custom_name={text:"It's Writhing",color:"dark_aqua",bold:1b},minecraft:enchantment_glint_override=1b] 1

