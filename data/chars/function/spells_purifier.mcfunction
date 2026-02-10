
scoreboard players set @e[tag=!purifier_ignite_damage_initiated] purifier_ignite 0
tag @e add purifier_ignite_damage_initiated


tag @a[scores={char=58}] add purifier

#cleansed by flame

execute as @a[scores={char=58}] run title @s[scores={char=58}] actionbar [{text:"[",bold:1b,color:"dark_red",type:"text"},{text:" Heat: ",color:"gray",type:"text"},{score:{name:"@s",objective:"heat"},color:"red",type:"score"},{text:"% ",color:"gold",type:"text"},{text:"]",bold:1b,color:"dark_red",type:"text"}]

scoreboard players set @a[scores={char=58,universal_death=1..}] heat 90

scoreboard players set @a[scores={char=58,heat=..-1}] heat 0

scoreboard players add @a[scores={char=58,heat=..99}] heat_timer 1
scoreboard players add @a[scores={char=58,heat=..99,heat_timer=10}] heat 1
scoreboard players set @a[scores={heat_timer=10..,heat=..99}] heat_timer 0

scoreboard players add @e[tag=fire_cleanse] fire_life 1
kill @e[tag=fire_cleanse,scores={fire_life=15..}]

execute at @a[scores={passive_puri=1..,heat=1..,char=58}] if items entity @p[scores={char=58}] weapon.mainhand carrot_on_a_stick[custom_data={arson:1}] run summon marker ~ ~ ~ {Tags:["fire_cleanse","projectile","entities_purifier","projectile"]}
execute at @a[scores={passive_puri=1..,heat=1..,char=58}] if items entity @p[scores={char=58}] weapon.mainhand carrot_on_a_stick[custom_data={arson:1}] run playsound entity.blaze.shoot master @a[distance=..15] ~ ~ ~ 0.4 0.5 1
execute at @a[scores={passive_puri=1..,heat=0,char=58}] if items entity @p[scores={char=58}] weapon.mainhand carrot_on_a_stick[custom_data={arson:1}] run playsound block.lever.click master @a[distance=..15] ~ ~ ~ 1 1.5 1
scoreboard players operation @e[tag=projectile,tag=fire_cleanse] Team = @p[scores={char=58}] Team
tp @e[tag=fire_cleanse,scores={fire_life=1}] @a[scores={char=58},limit=1]
execute as @e[tag=fire_cleanse,scores={fire_life=1}] at @s run tp @s ~ ~1.3 ~

execute as @e[tag=fire_cleanse,scores={fire_life=1..}] at @s run tp @s ^ ^ ^0.15
execute at @e[tag=fire_cleanse,scores={fire_life=1..3}] run particle flame ~ ~ ~ 0.05 0.05 0.05 0.001 1 force
execute at @e[tag=fire_cleanse,scores={fire_life=4..6}] run particle flame ~ ~ ~ 0.15 0.15 0.15 0.01 2 force
execute at @e[tag=fire_cleanse,scores={fire_life=7..9}] run particle flame ~ ~ ~ 0.2 0.2 0.2 0.016 3 force
execute at @e[tag=fire_cleanse,scores={fire_life=10..}] run particle flame ~ ~ ~ 0.4 0.4 0.4 0.01 3 force
execute as @e[tag=fire_cleanse,scores={fire_life=1..}] at @s run tp @s ^ ^ ^0.15
execute at @e[tag=fire_cleanse,scores={fire_life=1..3}] run particle flame ~ ~ ~ 0.05 0.05 0.05 0.001 1 force
execute at @e[tag=fire_cleanse,scores={fire_life=4..6}] run particle flame ~ ~ ~ 0.15 0.15 0.15 0.01 2 force
execute at @e[tag=fire_cleanse,scores={fire_life=7..9}] run particle flame ~ ~ ~ 0.2 0.2 0.2 0.016 3 force
execute at @e[tag=fire_cleanse,scores={fire_life=10..}] run particle flame ~ ~ ~ 0.4 0.4 0.4 0.01 3 force
execute as @e[tag=fire_cleanse,scores={fire_life=1..}] at @s run tp @s ^ ^ ^0.15
execute at @e[tag=fire_cleanse,scores={fire_life=1..3}] run particle flame ~ ~ ~ 0.05 0.05 0.05 0.001 1 force
execute at @e[tag=fire_cleanse,scores={fire_life=4..6}] run particle flame ~ ~ ~ 0.15 0.15 0.15 0.01 2 force
execute at @e[tag=fire_cleanse,scores={fire_life=7..9}] run particle flame ~ ~ ~ 0.2 0.2 0.2 0.016 3 force
execute at @e[tag=fire_cleanse,scores={fire_life=10..}] run particle flame ~ ~ ~ 0.4 0.4 0.4 0.01 3 force


scoreboard players set @a[scores={passive_puri=1..}] heat_timer -20
scoreboard players remove @a[scores={passive_puri=1..,heat=1..}] heat 3


scoreboard players set @a[scores={passive_puri=1..}] passive_puri 0

execute as @e[tag=fire_cleanse] at @s positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=!purifier,tag=valid_spell_target] if score @s Team = @p[scores={char=58}] Team unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect give @s regeneration 1 3
execute as @e[tag=fire_cleanse] at @s positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={purifier_ignite=0}] unless score @s Team = @p[scores={char=58}] Team run scoreboard players set @s purifier_ignite 1

execute as @e[tag=fire_cleanse] at @s positioned ~-.5 ~-.5 ~-.5 as @a[dx=0,dy=0,dz=0,tag=valid_spell_target] if entity @s[scores={HP=..3,CC_intangible=0}] unless score @s Team = @p[scores={char=58}] Team run damage @s 1000 generic by @p[scores={char=58}] from @p[scores={char=58}]

scoreboard players add @e[scores={purifier_ignite=1..}] purifier_ignite 1
execute at @e[scores={purifier_ignite=1..}] run particle flame ~ ~1 ~ 0.3 0.6 0.3 0.01 3

execute as @e[scores={purifier_ignite=3}] run attribute @s knockback_resistance base set 100
execute as @e[scores={purifier_ignite=3}] run damage @s 1 lava by @p[scores={char=58}] from @p[scores={char=58}]
execute as @e[scores={purifier_ignite=3}] run attribute @s knockback_resistance base set 0

execute as @e[scores={purifier_ignite=13}] run attribute @s knockback_resistance base set 100
execute as @e[scores={purifier_ignite=13}] run damage @s 1 lava by @p[scores={char=58}] from @p[scores={char=58}]
execute as @e[scores={purifier_ignite=13}] run attribute @s knockback_resistance base set 0

execute as @e[scores={purifier_ignite=23}] run attribute @s knockback_resistance base set 100
execute as @e[scores={purifier_ignite=23}] run damage @s 1 lava by @p[scores={char=58}] from @p[scores={char=58}]
execute as @e[scores={purifier_ignite=23}] run attribute @s knockback_resistance base set 0

scoreboard players set @e[scores={purifier_ignite=30..}] purifier_ignite 0




#pyroclastic expurgation

scoreboard players set @a[scores={char=58,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=58,s1_timer=1,CC_silence=1..}] s1_timer 380


execute at @a[scores={char=58,s1_timer=1,CC_silence=0}] run summon block_display ~ ~ ~ {Tags:["pyroclastic_can","entities_purifier","projectile"],block_state: {Name: "minecraft:waxed_exposed_copper"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [-0.25f,-0.25f,-0.25f]},teleport_duration:1}
execute at @a[scores={char=58,s1_timer=1,CC_silence=0}] run playsound entity.snowball.throw master @a[distance=..10] ~ ~ ~ 1 1.3 1
scoreboard players operation @e[tag=projectile,tag=pyroclastic_can] Team = @p[scores={char=58}] Team
tp @e[tag=pyroclastic_can,limit=1] @a[scores={char=58,s1_timer=1},limit=1]
execute at @a[scores={char=58,s1_timer=1,CC_silence=0}] as @e[tag=pyroclastic_can] at @s run tp @s ~ ~1 ~

execute at @a[scores={char=58,s1_timer=1..14}] as @e[tag=pyroclastic_can] at @s run tp @s ^ ^ ^0.5
execute at @a[scores={char=58,s1_timer=15..24}] as @e[tag=pyroclastic_can] at @s run tp @s ^ ^ ^0.6
execute at @a[scores={char=58,s1_timer=15..24}] as @e[tag=pyroclastic_can] at @s run tp @s ~ ~-0.3 ~
execute at @a[scores={char=58,s1_timer=25..}] as @e[tag=pyroclastic_can] at @s run tp @s ^ ^ ^0.3
execute at @a[scores={char=58,s1_timer=25..}] as @e[tag=pyroclastic_can] at @s run tp @s ~ ~-0.5 ~
execute at @a[scores={char=58,s1_timer=40..}] as @e[tag=pyroclastic_can] at @s run tp @s ~ ~-0.6 ~


execute at @e[tag=pyroclastic_can] run particle block{block_state:{Name:"minecraft:gold_block"}} ~ ~1 ~ 0.2 0.2 0.2 0.01 1 normal
execute at @e[tag=pyroclastic_can] run particle small_flame ~ ~ ~ 0.2 0.2 0.2 0.01 10 normal

execute at @e[tag=expurgation_gas] run particle dust{color:[1.0,0.67,0.0],scale:1.0f} ~ ~1 ~ 3 1 3 0.01 30 normal
execute at @e[tag=expurgation_gas] run particle small_flame ~ ~1 ~ 3 1 3 0.01 15 normal
execute at @e[tag=expurgation_gas,scores={fire_life=..5}] run particle flame ~ ~1 ~ 3 1 3 0.01 80 normal

execute at @e[tag=expurgation_gas,scores={fire_life=3}] run playsound item.bucket.empty master @a[distance=..16] ~ ~ ~ 1.0 0.1 1
execute at @e[tag=expurgation_gas,scores={fire_life=5}] run playsound block.lava.extinguish master @a[distance=..16] ~ ~ ~ 1 1 1

execute as @e[tag=pyroclastic_can] at @s unless block ^ ^0.0625 ^0.0625 #minecraft:dash run summon marker ~ ~ ~ {Tags:["expurgation_gas","entities_purifier"]}
execute as @e[tag=pyroclastic_can] at @s unless block ^ ^0.0625 ^0.0625 #minecraft:dash run kill @s
execute if entity @e[tag=expurgation_gas] run kill @e[tag=pyroclastic_can]

execute as @e[tag=expurgation_gas] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.5 ~

execute if entity @a[scores={char=58}] at @e[tag=expurgation_gas] as @e[tag=valid_spell_target,distance=..4] unless score @s Team = @p[scores={char=58}] Team run effect give @s slowness 1 3
execute if entity @a[scores={char=58}] at @e[tag=expurgation_gas] as @e[tag=valid_spell_target,distance=..4] unless score @s Team = @p[scores={char=58}] Team at @s run particle small_flame ~ ~ ~ .3 .3 .3 .0001 2

execute as @e[tag=expurgation_gas] at @s run rotate @s ~6 ~
execute as @e[tag=expurgation_gas] at @s positioned ~ ~.25 ~ run particle dust{color:[0.851,0.647,0.125],scale:1.35} ^ ^ ^4 0.1 0.2 0.1 0 10
execute as @e[tag=expurgation_gas] at @s positioned ~ ~.25 ~ run particle dust{color:[0.851,0.647,0.125],scale:1.35} ^ ^ ^-4 0.1 0.2 0.1 0 10
execute as @e[tag=expurgation_gas] at @s positioned ~ ~.25 ~ run particle dust{color:[0.851,0.647,0.125],scale:1.35} ^4 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=expurgation_gas] at @s positioned ~ ~.25 ~ run particle dust{color:[0.851,0.647,0.125],scale:1.35} ^-4 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=expurgation_gas] at @s positioned ~ ~.25 ~ run particle dust{color:[0.851,0.647,0.125],scale:1.35} ^3 ^ ^3 0.1 0.2 0.1 0 10
execute as @e[tag=expurgation_gas] at @s positioned ~ ~.25 ~ run particle dust{color:[0.851,0.647,0.125],scale:1.35} ^-3 ^ ^-3 0.1 0.2 0.1 0 10
execute as @e[tag=expurgation_gas] at @s positioned ~ ~.25 ~ run particle dust{color:[0.851,0.647,0.125],scale:1.35} ^3 ^ ^-3 0.1 0.2 0.1 0 10
execute as @e[tag=expurgation_gas] at @s positioned ~ ~.25 ~ run particle dust{color:[0.851,0.647,0.125],scale:1.35} ^-3 ^ ^3 0.1 0.2 0.1 0 10

execute as @e[tag=expurgation_gas] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.5 ~

scoreboard players add @e[tag=expurgation_gas] fire_life 1
kill @e[tag=expurgation_gas,scores={fire_life=140..}]


execute at @e[tag=expurgation_gas] if entity @e[distance=..4,tag=fire_cleanse] align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["expurgation_explosion","entities_purifier"]}
execute if entity @e[tag=expurgation_explosion] run kill @e[tag=expurgation_gas]

execute at @e[tag=expurgation_explosion,scores={fire_life=2}] as @a[distance=..4] unless score @s Team = @p[scores={char=58}] Team run scoreboard players set @s CC_afterburn 20

effect give @a[scores={fire=1..,CC_afterburn=1..}] slowness 1 1
scoreboard players set @a[scores={fire=1..,CC_afterburn=1..}] CC_afterburn 10

execute at @e[tag=expurgation_explosion,scores={fire_life=2}] run particle flame ~ ~ ~ 3 3 3 0.3 300
execute at @e[tag=expurgation_explosion,scores={fire_life=2}] run playsound entity.dragon_fireball.explode master @a[distance=..16] ~ ~ ~ 1 1.2 1
execute at @e[tag=expurgation_explosion,scores={fire_life=3}] run playsound entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 0.5 1

execute at @e[tag=expurgation_explosion,scores={fire_life=3}] as @e[tag=valid_spell_target,distance=..4] if score @s Team = @p[scores={char=58}] Team run effect give @s minecraft:fire_resistance 6 0 true

execute at @e[tag=expurgation_explosion,scores={fire_life=3}] run fill ~ ~3 ~ ~ ~-3 ~ fire replace #minecraft:dash
execute at @e[tag=expurgation_explosion,scores={fire_life=3}] run playsound entity.blaze.shoot master @a[distance=..16] ~ ~ ~ .3 .75 .3

execute at @e[tag=expurgation_explosion,scores={fire_life=6}] run fill ~1 ~3 ~1 ~-1 ~-3 ~-1 fire replace #minecraft:dash
execute at @e[tag=expurgation_explosion,scores={fire_life=6}] run playsound entity.blaze.shoot master @a[distance=..16] ~ ~ ~ .3 .75 .3

execute at @e[tag=expurgation_explosion,scores={fire_life=9}] run fill ~2 ~3 ~2 ~-2 ~-3 ~-2 fire replace #minecraft:dash
execute at @e[tag=expurgation_explosion,scores={fire_life=9}] run playsound entity.blaze.shoot master @a[distance=..16] ~ ~ ~ .3 .75 .3

execute at @e[tag=expurgation_explosion,scores={fire_life=12}] run fill ~2 ~3 ~3 ~-2 ~-3 ~-3 fire replace #minecraft:dash
execute at @e[tag=expurgation_explosion,scores={fire_life=12}] run fill ~3 ~3 ~2 ~-3 ~-3 ~-2 fire replace #minecraft:dash
execute at @e[tag=expurgation_explosion,scores={fire_life=12}] run playsound entity.blaze.shoot master @a[distance=..16] ~ ~ ~ .3 .75 .3

execute at @e[tag=expurgation_explosion,scores={fire_life=93}] run fill ~2 ~3 ~3 ~-2 ~-3 ~-3 air replace #fire
execute at @e[tag=expurgation_explosion,scores={fire_life=93}] run fill ~3 ~3 ~2 ~-3 ~-3 ~-2 air replace #fire
execute at @e[tag=expurgation_explosion,scores={fire_life=93}] run fill ~2 ~3 ~2 ~-2 ~-3 ~-2 fire replace #minecraft:dash
execute at @e[tag=expurgation_explosion,scores={fire_life=93}] run playsound block.lava.extinguish master @a[distance=..16] ~ ~ ~ .5 2 .5

execute at @e[tag=expurgation_explosion,scores={fire_life=95}] run fill ~2 ~3 ~2 ~-2 ~-3 ~-2 air replace #fire
execute at @e[tag=expurgation_explosion,scores={fire_life=95}] run fill ~1 ~3 ~1 ~-1 ~-3 ~-1 fire replace #minecraft:dash
execute at @e[tag=expurgation_explosion,scores={fire_life=95}] run playsound block.lava.extinguish master @a[distance=..16] ~ ~ ~ .5 2 .5

execute at @e[tag=expurgation_explosion,scores={fire_life=97}] run fill ~1 ~3 ~1 ~-1 ~-3 ~-1 air replace #fire
execute at @e[tag=expurgation_explosion,scores={fire_life=97}] run fill ~ ~3 ~ ~ ~-3 ~ fire replace #minecraft:dash
execute at @e[tag=expurgation_explosion,scores={fire_life=97}] run playsound block.lava.extinguish master @a[distance=..16] ~ ~ ~ .5 2 .5

execute at @e[tag=expurgation_explosion,scores={fire_life=99..}] run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air replace #fire


scoreboard players add @e[tag=expurgation_explosion] fire_life 1
kill @e[tag=expurgation_explosion,scores={fire_life=100..}]


execute at @e[tag=expurgation_explosion] as @a[distance=..4,scores={fire=-15..}] if score @s Team = @p[scores={char=58}] Team run tag @s add friendly_purifier

effect give @a[tag=friendly_purifier] minecraft:fire_resistance 1 0 true
tag @a[scores={fire=..20}] remove friendly_purifier

execute at @a[scores={char=58}] as @a if score @s Team = @p[scores={char=58}] Team run scoreboard players set @s CC_afterburn 0


#cauterize

scoreboard players set @a[scores={char=58,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=58,s2_timer=1,CC_silence=1..}] s2_timer 180

execute at @a[scores={char=58,s2_timer=1,CC_silence=0}] as @a[distance=..6] if score @s Team = @p[scores={char=58}] Team run tag @s add cauterize
execute at @a[scores={char=58,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["purifier_cauterize_display","entities_purifier"]}
execute if score @p[scores={char=58}] s2_timer matches 10 run kill @e[tag=purifier_cauterize_display]

execute as @n[tag=purifier_cauterize_display] at @s run rotate @s ~6 0
execute at @n[tag=purifier_cauterize_display] positioned ~ ~.25 ~ run particle flame ^ ^ ^6 0.15 0.15 0.15 0 8
execute at @n[tag=purifier_cauterize_display] positioned ~ ~.25 ~ run particle flame ^ ^ ^-6 0.15 0.15 0.15 0 8
execute at @n[tag=purifier_cauterize_display] positioned ~ ~.25 ~ run particle flame ^6 ^ ^ 0.15 0.15 0.15 0 8
execute at @n[tag=purifier_cauterize_display] positioned ~ ~.25 ~ run particle flame ^-6 ^ ^ 0.15 0.15 0.15 0 8
execute at @n[tag=purifier_cauterize_display] positioned ~ ~.25 ~ run particle flame ^4.5 ^ ^4.5 0.15 0.15 0.15 0 8
execute at @n[tag=purifier_cauterize_display] positioned ~ ~.25 ~ run particle flame ^-4.5 ^ ^-4.5 0.15 0.15 0.15 0 8
execute at @n[tag=purifier_cauterize_display] positioned ~ ~.25 ~ run particle flame ^4.5 ^ ^-4.5 0.15 0.15 0.15 0 8
execute at @n[tag=purifier_cauterize_display] positioned ~ ~.25 ~ run particle flame ^-4.5 ^ ^4.5 0.15 0.15 0.15 0 8

execute at @n[tag=purifier_cauterize_display] positioned ~ ~.25 ~ run particle dust{color:[1.0,0.67,0.0],scale:1.0f} ^ ^ ^6 0.15 0.15 0.15 0 8
execute at @n[tag=purifier_cauterize_display] positioned ~ ~.25 ~ run particle dust{color:[1.0,0.67,0.0],scale:1.0f} ^ ^ ^-6 0.15 0.15 0.15 0 8
execute at @n[tag=purifier_cauterize_display] positioned ~ ~.25 ~ run particle dust{color:[1.0,0.67,0.0],scale:1.0f} ^6 ^ ^ 0.15 0.15 0.15 0 8
execute at @n[tag=purifier_cauterize_display] positioned ~ ~.25 ~ run particle dust{color:[1.0,0.67,0.0],scale:1.0f} ^-6 ^ ^ 0.15 0.15 0.15 0 8
execute at @n[tag=purifier_cauterize_display] positioned ~ ~.25 ~ run particle dust{color:[1.0,0.67,0.0],scale:1.0f} ^4.5 ^ ^4.5 0.15 0.15 0.15 0 8
execute at @n[tag=purifier_cauterize_display] positioned ~ ~.25 ~ run particle dust{color:[1.0,0.67,0.0],scale:1.0f} ^-4.5 ^ ^-4.5 0.15 0.15 0.15 0 8
execute at @n[tag=purifier_cauterize_display] positioned ~ ~.25 ~ run particle dust{color:[1.0,0.67,0.0],scale:1.0f} ^4.5 ^ ^-4.5 0.15 0.15 0.15 0 8
execute at @n[tag=purifier_cauterize_display] positioned ~ ~.25 ~ run particle dust{color:[1.0,0.67,0.0],scale:1.0f} ^-4.5 ^ ^4.5 0.15 0.15 0.15 0 8

execute at @a[tag=cauterize] run playsound block.lava.extinguish master @a[distance=..10] ~ ~ ~ 1 1 1
execute at @a[tag=cauterize] run particle lava ~ ~0.5 ~ 0.6 0.8 0.6 0.1 5
execute at @a[tag=cauterize] run particle small_flame ~ ~0.5 ~ 0.8 1 0.8 0.1 30
effect clear @a[tag=cauterize] slowness
effect clear @a[tag=cauterize] weakness
effect clear @a[tag=cauterize] jump_boost
effect clear @a[tag=cauterize] blindness
effect clear @a[tag=cauterize] mining_fatigue
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

scoreboard players set @a[scores={s1_timer=1,char=58}] spellCD1 400
scoreboard players add @a[scores={s1_timer=1..,char=58}] s1_timer 1
scoreboard players set @a[scores={s1_timer=401..,char=58}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=58}] spellCD2 200
scoreboard players add @a[scores={s2_timer=1..,char=58}] s2_timer 1
scoreboard players set @a[scores={s2_timer=201..,char=58}] s2_timer 0


execute as @a[scores={char=58}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:0b,components:{"minecraft:custom_data":{arson:1}}}]}] run clear @a[scores={char=58}] carrot_on_a_stick[custom_data={arson:1}]
item replace entity @a[scores={char=58}] hotbar.0 with carrot_on_a_stick[minecraft:custom_name={bold:1b,color:"gray",text:"F.S.C.D."},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}],custom_data={arson:1},minimum_attack_charge=0.8] 1

execute as @a[scores={char=58,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=58}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=58,s1_timer=0}] hotbar.1 with carrot_on_a_stick[minecraft:custom_name={text:"Pyroclastic Expurgation",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:flame":1},item_model=magma_cream,custom_data={s1:1}] 1

execute as @a[scores={char=58,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=58}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=58,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[minecraft:custom_name={text:"Cauterize",color:"dark_aqua",bold:1b},item_model=blaze_spawn_egg,custom_data={s2:1}] 1