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
scoreboard players set @a[scores={passive_aber_stack=4..}] passive_aber_stack 3

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

execute as @a[scores={char=49}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_pickaxe",Slot:0b}]}] run clear @a[scores={char=49}] diamond_pickaxe
item replace entity @a[scores={char=49,aber_s2_buff=0}] hotbar.0 with diamond_pickaxe[minecraft:custom_name={bold:1b,color:"gray",text:"Lashers"},minecraft:unbreakable={},minecraft:custom_data={terminus:1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1
item replace entity @a[scores={char=49,aber_s2_buff=1..}] hotbar.0 with diamond_pickaxe[minecraft:custom_name={bold:1b,color:"gray",text:"Lashers"},minecraft:unbreakable={},minecraft:custom_data={terminus:1},minecraft:enchantments={},minecraft:enchantment_glint_override=0b,minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.55d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1

scoreboard players set @a[scores={char=49},nbt=!{SelectedItem:{components:{"minecraft:custom_data":{terminus:1}}}}] passive_aber 0

execute as @a[scores={char=49,passive_aber=1}] run attribute @s minecraft:attack_damage modifier add minecraft:terminus 1 add_value
execute as @a[scores={char=49,passive_aber=2}] run attribute @s minecraft:attack_damage modifier add minecraft:terminus 2 add_value
execute as @a[scores={char=49,passive_aber=3}] run attribute @s minecraft:attack_damage modifier add minecraft:terminus 3 add_value
#execute as @a[scores={char=49,passive_aber=4}] run attribute @s minecraft:attack_damage modifier add minecraft:terminus 2 add_value
#execute as @a[scores={char=49,passive_aber=5}] run attribute @s minecraft:attack_damage modifier add minecraft:terminus 2.5 add_value


#scoreboard players remove @a[scores={passive_aber_display=1,passive_aber_display_timer=1..}]
scoreboard players set @a[scores={passive_aber_display=1,passive_aber_display_timer=0}] passive_aber_display 0

execute as @a[scores={passive_aber_display=1,passive_aber_stack=0}] run title @a[scores={char=49}] actionbar [{text:" > ",bold:1b,color:"black",type:"text"},{selector:"@s",type:"selector",color:"gray"},{text:" < ",bold:1b,color:"black",type:"text"},{text:" [",bold:1b,color:"black",type:"text"},{text:" - - - ",bold:1b,color:"aqua",type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
execute as @a[scores={passive_aber_display=1,passive_aber_stack=1}] run title @a[scores={char=49}] actionbar [{text:" > ",bold:1b,color:"black",type:"text"},{selector:"@s",type:"selector",color:"gray"},{text:" < ",bold:1b,color:"black",type:"text"},{text:" [",bold:1b,color:"black",type:"text"},{text:" X",bold:1b,color:"dark_aqua",type:"text"},{text:" - - ",bold:1b,color:"aqua",type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
execute as @a[scores={passive_aber_display=1,passive_aber_stack=2}] run title @a[scores={char=49}] actionbar [{text:" > ",bold:1b,color:"black",type:"text"},{selector:"@s",type:"selector",color:"gray"},{text:" < ",bold:1b,color:"black",type:"text"},{text:" [",bold:1b,color:"black",type:"text"},{text:" X X",bold:1b,color:"dark_aqua",type:"text"},{text:" - ",bold:1b,color:"aqua",type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
execute as @a[scores={passive_aber_display=1,passive_aber_stack=3}] run title @a[scores={char=49}] actionbar [{text:" > ",bold:1b,color:"black",type:"text"},{selector:"@s",type:"selector",color:"gray"},{text:" < ",bold:1b,color:"black",type:"text"},{text:" [",bold:1b,color:"black",type:"text"},{text:" X X X ",bold:1b,color:"dark_aqua",type:"text"},{text:"]",bold:1b,color:"black",type:"text"}]
#execute as @a[scores={passive_aber_display=1,passive_aber_stack=4}] run title @a[scores={char=49}] actionbar [{selector:"@s",type:"selector"},{text:" [",bold:1b,color:"dark_aqua",type:"text"},{text:" || || || || - ",bold:1b,color:"aqua",type:"text"},{text:"]",bold:1b,color:"dark_aqua",type:"text"}]
#execute as @a[scores={passive_aber_display=1,passive_aber_stack=5}] run title @a[scores={char=49}] actionbar [{selector:"@s",type:"selector"},{text:" [",bold:1b,color:"dark_aqua",type:"text"},{text:" || || || || || ",bold:1b,color:"aqua",type:"text"},{text:"]",bold:1b,color:"dark_aqua",type:"text"}]

execute at @a[scores={passive_aber_stack=1..}] run particle sculk_charge_pop ~ ~1 ~ 0.4 0.6 0.4 0.01 2
execute at @a[scores={passive_aber_stack=2..}] run particle sculk_charge{roll:1} ~ ~1 ~ 0.6 0.8 0.6 0.01 1
execute at @a[scores={passive_aber_stack=3..}] run particle soul ~ ~1 ~ 0.8 0.8 0.8 0.01 1

scoreboard players set @a[scores={passive_aber_stack=1..,universal_death=1..}] passive_aber_stack 0

#s1

execute at @a[scores={char=49,s1_timer=1,CC_silence=0}] run playsound entity.warden.agitated master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=49,s1_timer=1,CC_silence=0}] run playsound entity.illusioner.prepare_blindness master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=49,s1_timer=1..2,CC_silence=0}] as @p[distance=0.5..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=49}] Team run scoreboard players set @s aber_s1_debuff 120
execute at @a[scores={char=49,s1_timer=1,CC_silence=0}] run particle sculk_charge_pop ~ ~1 ~ 2 1 2 0.05 200

scoreboard players remove @a[scores={aber_s1_debuff=1..}] aber_s1_debuff 1

execute as @a[scores={char=49}] at @s if entity @a[distance=..6,scores={aber_s1_debuff=1..}] run effect give @s resistance 1 1


execute as @a[scores={char=49}] at @s if entity @a[distance=..6,scores={aber_s1_debuff=1..}] facing entity @a[scores={aber_s1_debuff=1..}] eyes rotated ~ 0 run particle sculk_charge{roll:0} ^ ^1 ^.5 0 0 0 0 0 force @a[distance=..10]
execute as @a[scores={char=49}] at @s if entity @a[distance=..6,scores={aber_s1_debuff=1..}] facing entity @a[scores={aber_s1_debuff=1..}] eyes rotated ~ 0 run particle sculk_charge{roll:0} ^ ^1 ^1 0 0 0 0 0 force @a[distance=..10]
execute as @a[scores={char=49}] at @s if entity @a[distance=..6,scores={aber_s1_debuff=1..}] facing entity @a[scores={aber_s1_debuff=1..}] eyes rotated ~ 0 run particle sculk_charge{roll:0} ^ ^1 ^1.5 0 0 0 0 0 force @a[distance=..10]
execute as @a[scores={char=49}] at @s if entity @a[distance=..6,scores={aber_s1_debuff=1..}] facing entity @a[scores={aber_s1_debuff=1..}] eyes rotated ~ 0 run particle sculk_charge{roll:0} ^ ^1 ^2 0 0 0 0 0 force @a[distance=..10]
execute as @a[scores={char=49}] at @s if entity @a[distance=..6,scores={aber_s1_debuff=1..}] facing entity @a[scores={aber_s1_debuff=1..}] eyes rotated ~ 0 run particle sculk_charge{roll:0} ^ ^1 ^2.5 0 0 0 0 0 force @a[distance=..10]
execute as @a[scores={char=49}] at @s if entity @a[distance=..6,scores={aber_s1_debuff=1..}] facing entity @a[scores={aber_s1_debuff=1..}] eyes rotated ~ 0 run particle sculk_charge{roll:0} ^ ^1 ^3 0 0 0 0 0 force @a[distance=..10]


advancement revoke @a[advancements={chars:anom_prot=true}] only chars:anom_prot
#s2

scoreboard players set @a[scores={char=49,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=49,s2_timer=1,CC_silence=1..}] s2_timer 240

clear @a[scores={char=49,aber_s2_buff=1}] minecraft:diamond_pickaxe[minecraft:custom_data={terminus:1}]

scoreboard players set @a[scores={char=49,universal_kill=1,aber_s2_buff=1..}] aber_s2_buff 100
execute at @a[scores={char=49,universal_kill=1,aber_s2_buff=1..}] run particle sculk_charge_pop ~ ~1 ~ 2 2 2 0.05 100 force @a
execute at @a[scores={char=49,universal_kill=1,aber_s2_buff=1..}] run playsound entity.warden.roar master @a[distance=..10] ~ ~ ~ .8 2 .8

execute as @a[scores={char=49,s2_timer=1,CC_silence=0}] run clear @s diamond_pickaxe[minecraft:custom_data={terminus:1}]
execute as @a[scores={char=49,s2_timer=1,CC_silence=0}] run scoreboard players set @s aber_s2_buff 100
execute at @a[scores={char=49,s2_timer=1,CC_silence=0}] run playsound entity.evoker.prepare_attack master @a[distance=..10] ~ ~ ~ .8 2 .8
execute at @a[scores={char=49,s2_timer=1,CC_silence=0}] run playsound entity.warden.roar master @a[distance=..10] ~ ~ ~ .8 2 .8

execute as @a[scores={char=49,aber_s2_buff=1..}] run scoreboard players remove @s aber_s2_buff 1
execute at @a[scores={char=49,aber_s2_buff=1..}] run particle sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.05 2 force @a
execute at @a[scores={char=49,aber_s2_buff=1..}] run particle sculk_charge_pop ~ ~1 ~ 0.5 1 0.5 0.05 2 force @a
execute as @a[scores={char=49,aber_s2_buff=20..}] run effect give @s speed 1 0 true


# aberration

scoreboard players set @a[scores={s1_timer=1,char=49}] spellCD1 320
scoreboard players add @a[scores={s1_timer=1..,char=49}] s1_timer 1
scoreboard players set @a[scores={s1_timer=321..,char=49}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=49}] spellCD2 240
scoreboard players add @a[scores={s2_timer=1..,char=49}] s2_timer 1
scoreboard players set @a[scores={s2_timer=241..,char=49}] s2_timer 0

execute as @a[scores={char=49,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=49}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=49,s1_timer=0,CC_silence=0}] hotbar.1 with minecraft:carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:echo_shard",minecraft:custom_name={text:"Beyond Matter",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=49,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=49}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=49,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:sculk_shrieker",minecraft:custom_name={text:"Its Writhing",color:"dark_aqua",bold:1b}] 1