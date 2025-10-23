kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:magma_cream"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:blaze_rod"}}]

tag @a[scores={char=58}] add purifier

#cleansed by flame

execute as @a[scores={char=58}] run title @s[scores={char=58}] actionbar [{text:"[",bold:1b,color:"dark_red",type:"text"},{text:" Heat: ",color:"gray",type:"text"},{score:{name:"@s",objective:"heat"},color:"red",type:"score"},{text:"% ",color:"gold",type:"text"},{text:"]",bold:1b,color:"dark_red",type:"text"}]

scoreboard players set @a[scores={char=58,universal_death=1..}] heat 90

scoreboard players set @a[scores={char=58,heat=..-1}] heat 0

scoreboard players add @a[scores={char=58,heat=..99}] heat_timer 1
scoreboard players add @a[scores={char=58,heat=..99,heat_timer=10}] heat 1
scoreboard players set @a[scores={heat_timer=10..,heat=..99}] heat_timer 0

scoreboard players add @e[tag=fire_cleanse] fire_life 1
kill @e[tag=fire_cleanse,scores={fire_life=20..}]

execute at @a[scores={passive_puri=1..,heat=1..}] run summon minecraft:marker ~ ~1.5 ~ {Tags:["fire_cleanse"]}
execute at @a[scores={passive_puri=1..,heat=1..}] run playsound minecraft:entity.blaze.shoot master @a[distance=..15] ~ ~ ~ 0.4 0.5 1
execute at @a[scores={passive_puri=1..,heat=0}] run playsound minecraft:block.lever.click master @a[distance=..15] ~ ~ ~ 1 1.5 1
tp @e[tag=fire_cleanse,scores={fire_life=1..2}] @a[scores={char=58},limit=1]
execute as @e[tag=fire_cleanse,scores={fire_life=1..}] at @s run tp @s ^ ^ ^0.4

execute at @e[tag=fire_cleanse,scores={fire_life=1..5}] run particle minecraft:flame ~ ~1.3 ~ 0.05 0.05 0.05 0.001 3 force
execute at @e[tag=fire_cleanse,scores={fire_life=6..10}] run particle minecraft:flame ~ ~1.3 ~ 0.15 0.15 0.15 0.01 5 force
execute at @e[tag=fire_cleanse,scores={fire_life=11..15}] run particle minecraft:flame ~ ~1.3 ~ 0.3 0.3 0.3 0.016 7 force
execute at @e[tag=fire_cleanse,scores={fire_life=16..}] run particle minecraft:flame ~ ~1.3 ~ 0.5 0.5 0.5 0.01 7 force

scoreboard players set @a[scores={passive_puri=1..}] heat_timer -20
scoreboard players remove @a[scores={passive_puri=1..,heat=1..}] heat 3


scoreboard players set @a[scores={passive_puri=1..}] passive_puri 0

execute as @e[tag=fire_cleanse] at @s if entity @a[scores={char=58},team=yellow] as @a[distance=..0.8,tag=!purifier,team=yellow] unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect give @s minecraft:regeneration 1 3
execute as @e[tag=fire_cleanse] at @s if entity @a[scores={char=58},team=purple] as @a[distance=..0.8,tag=!purifier,team=purple] unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect give @s minecraft:regeneration 1 3

execute as @e[tag=fire_cleanse] at @s if entity @a[scores={char=58},team=purple] as @a[distance=..0.8,team=yellow] unless entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run effect give @s minecraft:wither 1 5
execute as @e[tag=fire_cleanse] at @s if entity @a[scores={char=58},team=yellow] as @a[distance=..0.8,team=purple] unless entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run effect give @s minecraft:wither 1 5


execute as @e[tag=fire_cleanse] at @s if entity @a[scores={char=58},team=yellow] as @e[distance=..0.8,tag=necrominion,team=purple] unless entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run effect give @s minecraft:wither 1 5
execute as @e[tag=fire_cleanse] at @s if entity @a[scores={char=58},team=yellow] as @e[distance=..0.8,tag=turret,team=purple] unless entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run effect give @s minecraft:wither 1 5
execute as @e[tag=fire_cleanse] at @s if entity @a[scores={char=58},team=yellow] as @e[distance=..0.8,tag=swarmerboi,team=purple] unless entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run effect give @s minecraft:wither 1 5
execute as @e[tag=fire_cleanse] at @s if entity @a[scores={char=58},team=yellow] as @e[distance=..0.8,tag=MoldHost,team=purple] unless entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run effect give @s minecraft:wither 1 5

execute as @e[tag=fire_cleanse] at @s if entity @a[scores={char=58},team=purple] as @e[distance=..0.8,tag=necrominion,team=yellow] unless entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run effect give @s minecraft:wither 1 5
execute as @e[tag=fire_cleanse] at @s if entity @a[scores={char=58},team=purple] as @e[distance=..0.8,tag=turret,team=yellow] unless entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run effect give @s minecraft:wither 1 5
execute as @e[tag=fire_cleanse] at @s if entity @a[scores={char=58},team=purple] as @e[distance=..0.8,tag=swarmerboi,team=yellow] unless entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run effect give @s minecraft:wither 1 5
execute as @e[tag=fire_cleanse] at @s if entity @a[scores={char=58},team=purple] as @e[distance=..0.8,tag=MoldHost,team=yellow] unless entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run effect give @s minecraft:wither 1 5






execute as @e[tag=fire_cleanse] at @s if entity @a[scores={char=58},team=yellow] as @a[distance=..0.8,team=purple] if entity @s[scores={HP=..3,CC_intangible=0}] as @a[scores={char=58}] run function chars:add_kill
execute as @e[tag=fire_cleanse] at @s if entity @a[scores={char=58},team=yellow] as @a[distance=..0.8,team=purple] if entity @s[scores={HP=..3,CC_intangible=0}] run effect give @s minecraft:instant_damage 1 10 true

execute as @e[tag=fire_cleanse] at @s if entity @a[scores={char=58},team=purple] as @a[distance=..0.8,team=yellow] if entity @s[scores={HP=..3,CC_intangible=0}] as @a[scores={char=58}] run function chars:add_kill
execute as @e[tag=fire_cleanse] at @s if entity @a[scores={char=58},team=purple] as @a[distance=..0.8,team=yellow] if entity @s[scores={HP=..3,CC_intangible=0}] run effect give @s minecraft:instant_damage 1 10 true



#pyroclastic expurgation

scoreboard players set @a[scores={char=58,spell_puri_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=58,spell_puri_1_1=1,CC_silence=1..}] spell_puri_1_1 380


execute at @a[scores={char=58,spell_puri_1_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["pyroclastic_can"],NoGravity:1b,Small:1b,equipment:{head:{id:"minecraft:waxed_exposed_copper",count:1}}}
execute at @a[scores={char=58,spell_puri_1_1=1,CC_silence=0}] run playsound minecraft:entity.snowball.throw master @a[distance=..10] ~ ~ ~ 1 1.3 1
tp @e[tag=pyroclastic_can,limit=1] @a[scores={char=58,spell_puri_1_1=1},limit=1]


execute at @a[scores={char=58,spell_puri_1_1=1..14}] as @e[tag=pyroclastic_can] at @s run tp @s ^ ^ ^0.5
execute at @a[scores={char=58,spell_puri_1_1=15..24}] as @e[tag=pyroclastic_can] at @s run tp @s ^ ^ ^0.6
execute at @a[scores={char=58,spell_puri_1_1=15..24}] as @e[tag=pyroclastic_can] at @s run tp @s ~ ~-0.3 ~
execute at @a[scores={char=58,spell_puri_1_1=25..}] as @e[tag=pyroclastic_can] at @s run tp @s ^ ^ ^0.3
execute at @a[scores={char=58,spell_puri_1_1=25..}] as @e[tag=pyroclastic_can] at @s run tp @s ~ ~-0.5 ~
execute at @a[scores={char=58,spell_puri_1_1=40..}] as @e[tag=pyroclastic_can] at @s run tp @s ~ ~-0.6 ~


execute at @e[tag=pyroclastic_can] run particle minecraft:block{block_state:{Name:"minecraft:gold_block"}} ~ ~1 ~ 0.2 0.2 0.2 0.01 1 normal
execute at @e[tag=pyroclastic_can] run particle minecraft:small_flame ~ ~1 ~ 0.2 0.2 0.2 0.01 10 normal

execute at @e[tag=expurgation_gas] run particle minecraft:dust{color:[1.0,0.67,0.0],scale:1.0f} ~ ~1 ~ 3 1 3 0.01 30 normal
execute at @e[tag=expurgation_gas] run particle minecraft:small_flame ~ ~1 ~ 3 1 3 0.01 15 normal
execute at @e[tag=expurgation_gas,scores={fire_life=..5}] run particle minecraft:flame ~ ~1 ~ 3 1 3 0.01 80 normal

execute at @e[tag=expurgation_gas,scores={fire_life=3}] run playsound minecraft:item.bucket.empty master @a[distance=..16] ~ ~ ~ 1.0 0.1 1
execute at @e[tag=expurgation_gas,scores={fire_life=5}] run playsound minecraft:block.lava.extinguish master @a[distance=..16] ~ ~ ~ 1 1 1

execute as @e[tag=pyroclastic_can] at @s unless block ^ ^1 ^1 #minecraft:dash run summon minecraft:marker ~ ~ ~ {Tags:["expurgation_gas"]}
execute as @e[tag=pyroclastic_can] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute if entity @e[tag=expurgation_gas] run kill @e[tag=pyroclastic_can]

execute as @e[tag=expurgation_gas] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.5 ~

execute if entity @a[scores={char=58},team=purple] at @e[tag=expurgation_gas] run effect give @a[distance=..4,team=yellow] minecraft:slowness 1 3
execute if entity @a[scores={char=58},team=yellow] at @e[tag=expurgation_gas] run effect give @a[distance=..4,team=purple] minecraft:slowness 1 3

execute as @e[tag=expurgation_gas] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.5 ~

scoreboard players add @e[tag=expurgation_gas] fire_life 1
kill @e[tag=expurgation_gas,scores={fire_life=140..}]


execute at @e[tag=expurgation_gas] if entity @e[distance=..4,tag=fire_cleanse] align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["expurgation_explosion"]}
execute if entity @e[tag=expurgation_explosion] run kill @e[tag=expurgation_gas]

execute at @e[tag=expurgation_explosion,scores={fire_life=2}] if entity @a[scores={char=58},team=purple] run scoreboard players set @a[distance=..4,team=yellow] CC_afterburn 20
execute at @e[tag=expurgation_explosion,scores={fire_life=2}] if entity @a[scores={char=58},team=yellow] run scoreboard players set @a[distance=..4,team=purple] CC_afterburn 20

effect give @a[scores={fire=1..,CC_afterburn=1..}] minecraft:slowness 1 1
scoreboard players set @a[scores={fire=1..,CC_afterburn=1..}] CC_afterburn 10

execute at @e[tag=expurgation_explosion,scores={fire_life=2}] run particle minecraft:flame ~ ~ ~ 3 3 3 0.3 300
execute at @e[tag=expurgation_explosion,scores={fire_life=2}] run playsound minecraft:entity.dragon_fireball.explode master @a[distance=..16] ~ ~ ~ 1 1.2 1
execute at @e[tag=expurgation_explosion,scores={fire_life=3}] run playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 0.5 1

execute at @e[tag=expurgation_explosion,scores={fire_life=3}] if entity @a[scores={char=58},team=purple] run effect give @a[distance=..4,team=purple] minecraft:fire_resistance 6 0 true
execute at @e[tag=expurgation_explosion,scores={fire_life=3}] if entity @a[scores={char=58},team=yellow] run effect give @a[distance=..4,team=yellow] minecraft:fire_resistance 6 0 true

execute at @e[tag=expurgation_explosion,scores={fire_life=3}] run fill ~2 ~3 ~3 ~-2 ~-3 ~-3 minecraft:fire replace #minecraft:dash
execute at @e[tag=expurgation_explosion,scores={fire_life=3}] run fill ~3 ~3 ~2 ~-3 ~-3 ~-2 minecraft:fire replace #minecraft:dash
execute at @e[tag=expurgation_explosion,scores={fire_life=99..}] run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 minecraft:air replace minecraft:fire
execute at @e[tag=expurgation_explosion,scores={fire_life=99..}] run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 minecraft:air replace minecraft:soul_fire


scoreboard players add @e[tag=expurgation_explosion] fire_life 1
kill @e[tag=expurgation_explosion,scores={fire_life=100..}]


execute at @e[tag=expurgation_explosion] if entity @a[scores={char=58},team=yellow] run tag @a[distance=..4,scores={fire=-15..},team=yellow] add friendly_purifier
execute at @e[tag=expurgation_explosion] if entity @a[scores={char=58},team=purple] run tag @a[distance=..4,scores={fire=-15..},team=purple] add friendly_purifier

effect give @a[tag=friendly_purifier] minecraft:fire_resistance 1 0 true
tag @a[scores={fire=..20}] remove friendly_purifier

execute at @a[scores={char=58},team=purple] run scoreboard players set @a[team=purple] CC_afterburn 0
execute at @a[scores={char=58},team=yellow] run scoreboard players set @a[team=yellow] CC_afterburn 0


#cauterize

scoreboard players set @a[scores={char=58,spell_puri_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=58,spell_puri_2_1=1,CC_silence=1..}] spell_puri_2_1 180

execute at @a[scores={char=58,spell_puri_2_1=1,CC_silence=0},team=purple] run tag @a[distance=..6,team=purple] add cauterize
execute at @a[scores={char=58,spell_puri_2_1=1,CC_silence=0},team=yellow] run tag @a[distance=..6,team=yellow] add cauterize

execute at @a[tag=cauterize] run playsound minecraft:block.lava.extinguish master @a[distance=..10] ~ ~ ~ 1 1 1
execute at @a[tag=cauterize] run particle minecraft:lava ~ ~0.5 ~ 0.6 0.8 0.6 0.1 5
execute at @a[tag=cauterize] run particle minecraft:small_flame ~ ~0.5 ~ 0.8 1 0.8 0.1 30
effect clear @a[tag=cauterize] minecraft:slowness
effect clear @a[tag=cauterize] minecraft:weakness
effect clear @a[tag=cauterize] minecraft:jump_boost
effect clear @a[tag=cauterize] minecraft:blindness
effect clear @a[tag=cauterize] minecraft:mining_fatigue
scoreboard players set @a[tag=cauterize] CC_stun 0
scoreboard players set @a[tag=cauterize] CC_root 0
scoreboard players set @a[tag=cauterize] CC_grounded 0
scoreboard players set @a[tag=cauterize] CC_disarm 0
scoreboard players set @a[tag=cauterize] CC_shieldbreak 0
scoreboard players set @a[tag=cauterize] CC_defile 0
scoreboard players set @a[tag=cauterize] CC_silence 0
scoreboard players set @a[tag=cauterize] CC_knockup 0
scoreboard players set @a[tag=cauterize] CC_exhaust 0
scoreboard players set @a[tag=cauterize] CC_staggered 0
scoreboard players set @a[tag=cauterize] CC_cripple 0
scoreboard players set @a[tag=cauterize] CC_taunt 1

tag @a[tag=cauterize] remove cauterize

# purifier

scoreboard players add @a[scores={spell_puri_1=1..}] spell_puri_1_1 1
item replace entity @a[scores={char=58,spell_puri_1_1=400..}] hotbar.1 with minecraft:magma_cream[minecraft:custom_name={text:"Pyroclastic Expurgation",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:flame":1}] 1
scoreboard players set @a[scores={spell_puri_1_1=401..}] spell_puri_1 0
scoreboard players set @a[scores={spell_puri_1_1=401..}] spell_puri_1_1 0
scoreboard players set @a[scores={spell_puri_1_1=1}] spellCD1 400

scoreboard players add @a[scores={spell_puri_2=1..}] spell_puri_2_1 1
item replace entity @a[scores={char=58,spell_puri_2_1=300..}] hotbar.2 with minecraft:blaze_rod[minecraft:custom_name={text:"Cauterize",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_puri_2_1=201..}] spell_puri_2 0
scoreboard players set @a[scores={spell_puri_2_1=201..}] spell_puri_2_1 0
scoreboard players set @a[scores={spell_puri_2_1=1}] spellCD2 200


execute as @a[scores={char=58}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:0b}]}] run clear @a[scores={char=58}] minecraft:carrot_on_a_stick
item replace entity @a[scores={char=58}] hotbar.0 with minecraft:carrot_on_a_stick[minecraft:custom_name={bold:1b,color:"gray",text:"F.S.C.D."},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=58,spell_puri_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:magma_cream",Slot:1b}]}] run clear @a[scores={char=58}] minecraft:magma_cream
item replace entity @a[scores={char=58,spell_puri_1=0}] hotbar.1 with minecraft:magma_cream[minecraft:custom_name={text:"Pyroclastic Expurgation",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:flame":1}] 1

execute as @a[scores={char=58,spell_puri_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:blaze_rod",Slot:2b}]}] run clear @a[scores={char=58}] minecraft:blaze_rod
item replace entity @a[scores={char=58,spell_puri_2=0}] hotbar.2 with minecraft:blaze_rod[minecraft:custom_name={text:"Cauterize",color:"dark_aqua",bold:1b}] 1