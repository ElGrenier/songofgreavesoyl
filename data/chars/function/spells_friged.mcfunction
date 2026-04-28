kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_hoe"}}]

#frostbite

execute at @a[scores={char=42}] as @e[distance=..10,tag=valid_spell_target,scores={CC_stun=1..3}] unless score @s Team = @p[scores={char=42}] Team run scoreboard players set @s frostbite 80
execute at @a[scores={char=42}] as @e[distance=..10,tag=valid_spell_target,scores={CC_root=1..3}] unless score @s Team = @p[scores={char=42}] Team run scoreboard players set @s frostbite 80
execute at @a[scores={char=42}] as @e[distance=..10,tag=valid_spell_target,scores={CC_knockup=1..3}] unless score @s Team = @p[scores={char=42}] Team run scoreboard players set @s frostbite 80

# execute at @a[scores={char=42},team=purple] run scoreboard players set @a[distance=..15,scores={CC_stun=1..3},team=yellow] frostbite 80
# execute at @a[scores={char=42},team=purple] run scoreboard players set @a[distance=..15,scores={CC_root=1..3},team=yellow] frostbite 80
# execute at @a[scores={char=42},team=purple] run scoreboard players set @a[distance=..15,scores={CC_knockup=1..3},team=yellow] frostbite 80
# execute at @a[scores={char=42},team=purple] run scoreboard players set @a[distance=..15,scores={CC_taunt=1..3},team=yellow] frostbite 80

execute at @a[scores={char=42,universal_hit=1..}] if entity @a[distance=..7,scores={frostbite=1..}] run playsound entity.stray.step master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=42,universal_hit=1..}] if entity @a[distance=..7,scores={frostbite=1..}] run playsound block.glass.break master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute at @a[scores={char=42,universal_hit=1..}] if entity @a[distance=..7,scores={frostbite=1..}] run scoreboard players set @p[scores={char=42}] friged_boost 80

execute at @a[scores={char=42,universal_hit=1..}] run scoreboard players set @a[distance=..7] frostbite 0

scoreboard players remove @a[scores={frostbite=1..}] frostbite 1
scoreboard players remove @a[scores={friged_boost=1..}] friged_boost 1


#leap

scoreboard players set @a[scores={char=42,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=42,s1_timer=1,CC_silence=1..}] s1_timer 140

execute at @a[scores={char=42,s1_timer=2,CC_silence=0}] at @e[tag=friged_dash] run playsound entity.zombie.infect master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=42,s1_timer=5,CC_silence=0}] at @e[tag=friged_dash] run playsound entity.ender_dragon.flap master @a[distance=..10] ~ ~ ~ 0.6 1.6 1
execute at @a[scores={char=42,s1_timer=8,CC_silence=0}] at @e[tag=friged_dash] run playsound entity.ender_dragon.flap master @a[distance=..10] ~ ~ ~ 0.6 1.6 1
execute at @a[scores={char=42,s1_timer=11,CC_silence=0}] at @e[tag=friged_dash] run playsound entity.ender_dragon.flap master @a[distance=..10] ~ ~ ~ 0.6 1.6 1

scoreboard players set @a[scores={char=42,s1_timer=1,CC_silence=0}] CC_intangible 30
effect give @a[scores={char=42,s1_timer=1,CC_silence=0}] weakness 2 100 true
effect give @a[scores={char=42,s1_timer=1,CC_silence=0}] resistance 2 100 true
effect give @a[scores={char=42,s1_timer=1,CC_silence=0}] slow_falling 2 100 true

execute at @a[scores={char=42,s1_timer=1}] run summon marker ~ ~ ~ {Invisible:1b,Tags:["friged_dash","entities_friged"],NoGravity:1b}
tp @e[tag=friged_dash,limit=1] @a[scores={char=42,s1_timer=1},limit=1]
execute at @a[scores={char=42,s1_timer=1},limit=1] run tp @e[tag=friged_dash,limit=1] ~ ~0.5 ~
execute store result entity @e[tag=friged_dash,limit=1] Rotation[1] float 1 run clear

execute at @a[scores={char=42,death_dash_reset=1..}] run kill @e[tag=friged_dash]
execute at @a[scores={char=42,universal_death=1..}] run kill @e[tag=friged_dash]
execute at @a[scores={char=42,CC_grounded=1..}] run kill @e[tag=friged_dash]
execute at @a[scores={char=42,CC_root=1..}] run kill @e[tag=friged_dash]
execute at @a[scores={char=42,CC_stun=1..}] run kill @e[tag=friged_dash]

execute as @e[tag=friged_dash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=friged_dash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=friged_dash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=friged_dash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=friged_dash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=friged_dash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s


execute at @a[scores={char=42,s1_timer=1..2}] as @e[tag=friged_dash] at @s run tp @s ^ ^0.05 ^0.55
execute at @a[scores={char=42,s1_timer=2..5}] as @e[tag=friged_dash] at @s run tp @s ^ ^0.05 ^0.55
execute at @a[scores={char=42,s1_timer=6..8}] as @e[tag=friged_dash] at @s run tp @s ^ ^-0.025 ^0.45
execute at @a[scores={char=42,s1_timer=8..11}] as @e[tag=friged_dash] at @s run tp @s ^ ^-0.02 ^0.4
execute at @a[scores={char=42,s1_timer=1..20}] at @e[tag=friged_dash] run particle crit ~ ~ ~ 0.5 0.2 0.5 0.01 5
execute at @a[scores={char=42,s1_timer=1..20}] at @e[tag=friged_dash] run particle snowflake ~ ~ ~ 0.5 0.2 0.5 0.01 5
execute at @a[scores={char=42,s1_timer=1..2}] as @e[tag=friged_dash] at @s run tp @s ^ ^0.05 ^0.55
execute at @a[scores={char=42,s1_timer=2..5}] as @e[tag=friged_dash] at @s run tp @s ^ ^0.05 ^0.55
execute at @a[scores={char=42,s1_timer=6..8}] as @e[tag=friged_dash] at @s run tp @s ^ ^-0.025 ^0.45
execute at @a[scores={char=42,s1_timer=8..11}] as @e[tag=friged_dash] at @s run tp @s ^ ^-0.02 ^0.4
execute at @a[scores={char=42,s1_timer=1..20}] at @e[tag=friged_dash] run particle crit ~ ~ ~ 0.5 0.2 0.5 0.01 5
execute at @a[scores={char=42,s1_timer=1..20}] at @e[tag=friged_dash] run particle snowflake ~ ~ ~ 0.5 0.2 0.5 0.01 5

execute at @e[tag=friged_dash] positioned ~-.75 ~-.75 ~-.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=42}] Team run tag @s add birb_pounced

execute at @e[tag=birb_pounced] run kill @e[tag=friged_dash]
execute at @e[tag=birb_pounced] run effect clear @p[scores={char=42}] slow_falling
execute at @e[tag=birb_pounced] run playsound entity.player.hurt_freeze master @a[distance=..8] ~ ~ ~ 1 1.2 1
execute at @e[tag=birb_pounced] run playsound entity.player.attack.crit master @a[distance=..8] ~ ~ ~ 1 1.3 1
execute at @e[tag=birb_pounced] run particle snowflake ~ ~1 ~ 0.5 0.7 0.5 0.01 30
execute at @e[tag=birb_pounced] run particle crit ~ ~1 ~ 0.5 0.7 0.5 0.01 30
execute at @e[tag=birb_pounced] run effect give @p[scores={char=42}] speed 1 1
effect give @e[tag=birb_pounced] slowness 2 2
damage @e[tag=birb_pounced,limit=1] 5 player_attack by @p[scores={char=42}] from @p[scores={char=42}]
tag @e remove birb_pounced


tp @a[scores={char=42,s1_timer=1..20,death_dash_reset=0}] @e[tag=friged_dash,limit=1]
execute at @a[scores={char=42,s1_timer=12}] run kill @e[tag=friged_dash]
execute as @a[scores={char=42,s1_timer=20..21}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
scoreboard players set @a[scores={char=42,s1_timer=12}] CC_intangible 0
effect clear @a[scores={char=42,s1_timer=12}] weakness
effect clear @a[scores={char=42,s1_timer=12}] resistance
effect clear @a[scores={char=42,s1_timer=12}] slow_falling

#frigid stare

scoreboard players set @a[scores={char=42,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=42,s2_timer=1,CC_silence=1..}] s2_timer 220

execute at @a[scores={char=42}] as @a[distance=0.1..10] unless score @s Team = @p[scores={char=42}] Team run tag @s add friged_valid_stare_target
execute at @a[scores={char=42}] as @a[distance=10.1..] unless score @s Team = @p[scores={char=42}] Team run tag @s remove friged_valid_stare_target
execute at @a[scores={char=42}] as @a if score @s Team = @p[scores={char=42}] Team run tag @s remove friged_valid_stare_target

#execute at @a[scores={char=42,s2_timer=1,CC_silence=0}] unless entity @e[tag=friged_valid_stare_target,distance=..12] run title @a[scores={char=42}] times 0 20 0
#execute at @a[scores={char=42,s2_timer=1,CC_silence=0}] unless entity @e[tag=friged_valid_stare_target,distance=..12] run title @a[scores={char=42}] actionbar {text:"No targets within range",color:red,bold:1b}
#execute at @a[scores={char=42,s2_timer=1,CC_silence=0}] unless entity @e[tag=friged_valid_stare_target,distance=..12] run scoreboard players set @p[scores={char=42,s2_timer=1,CC_silence=0}] spellCD2 20
#execute at @a[scores={char=42,s2_timer=1,CC_silence=0}] unless entity @e[tag=friged_valid_stare_target,distance=..12] run scoreboard players set @p[scores={char=42,s2_timer=1,CC_silence=0}] s2_timer 220

#execute at @a[scores={char=42,s2_timer=2,CC_silence=0}] as @p[tag=valid_spell_target,distance=0.1..10] unless score @s Team = @p[scores={char=42}] Team run tag @s add friged_stared


execute at @a[scores={char=42,s2_timer=1,CC_silence=0}] run playsound entity.player.hurt_freeze master @a[distance=..10] ~ ~ ~ 0.5 0.4 1
execute at @a[scores={char=42,s2_timer=1,CC_silence=0}] run playsound entity.wither.shoot master @a[distance=..10] ~ ~ ~ 0.4 0.6 1
execute as @a[scores={char=42,s2_timer=1,CC_silence=0}] at @s positioned ~ ~1.3 ~ run function chars:frigid_stare_raycast

#execute at @a[scores={char=42,s2_timer=1,CC_silence=0}] unless entity @e[distance=0.5..6,tag=friged_stared] run scoreboard players set @a[scores={char=42}] spellCD2 10
#execute at @a[scores={char=42,s2_timer=1,CC_silence=0}] unless entity @e[distance=0.5..6,tag=friged_stared] run scoreboard players set @a[scores={char=42}] s2_timer 230


#rotate @p[scores={char=42}] facing entity @n[tag=friged_stared]
scoreboard players set @a[tag=friged_stared] CC_root 20
execute at @e[tag=friged_stared] run particle block{block_state:{Name:"minecraft:ice"}} ~ ~0.2 ~ 1 0.5 1 0.001 50
execute at @e[tag=friged_stared] run particle block{block_state:{Name:"minecraft:snow"}} ~ ~0.2 ~ 1 1 1 0.001 50
execute at @e[tag=friged_stared] run playsound entity.player.hurt_freeze master @a[distance=..10] ~ ~0.2 ~ 1 0.6 1
tag @e remove friged_stared

# friged

scoreboard players set @a[scores={s1_timer=1,char=42}] spellCD1 160
scoreboard players add @a[scores={s1_timer=1..,char=42}] s1_timer 1
scoreboard players set @a[scores={s1_timer=161..,char=42}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=42}] spellCD2 240
scoreboard players add @a[scores={s2_timer=1..,char=42}] s2_timer 1
scoreboard players set @a[scores={s2_timer=241..,char=42}] s2_timer 0

execute as @a[scores={char=42}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_hoe",Slot:0b}]}] run clear @a[scores={char=42}] iron_hoe
item replace entity @a[scores={char=42,friged_boost=0}] hotbar.0 with iron_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Beak"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.5d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1
item replace entity @a[scores={char=42,friged_boost=1..}] hotbar.0 with iron_hoe[minecraft:item_model="minecraft:diamond_hoe",minecraft:custom_name={bold:1b,color:"gray",text:"Beak"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:frost_walker":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:4.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.5d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1

execute as @a[scores={char=42,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=42}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=42,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:rabbit",minecraft:custom_name={text:"Pounce",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:frost_walker":1}] 1

execute as @a[scores={char=42,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=42}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=42,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:music_disc_tears",minecraft:custom_name={text:"Frigid Stare",color:"dark_aqua",bold:1b}] 1



