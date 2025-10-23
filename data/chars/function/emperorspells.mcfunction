#kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:glow_ink_sac"}}]
#kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_boots"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_hoe"}}]



#abyssal tremor

scoreboard players set @a[scores={char=32,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=32,s1_timer=1,CC_silence=1..}] s1_timer 300

execute at @a[scores={char=32,s1_timer=1,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["nautilus","entities_emperor"]}
tp @e[tag=nautilus,limit=1] @a[scores={char=32,s1_timer=1},limit=1]
execute store result entity @e[tag=nautilus,limit=1] Rotation[1] float 1 run clear
execute as @e[tag=nautilus] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s

execute at @a[scores={char=32,s1_timer=1,CC_silence=0}] run playsound minecraft:entity.zombie.converted_to_drowned master @a[distance=..15] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=32,s1_timer=1,CC_silence=0}] run playsound minecraft:entity.lightning_bolt.impact master @a[distance=..15] ~ ~ ~ 0.6 1.5 1
execute at @e[tag=nautilus] run playsound minecraft:block.tuff.place master @a[distance=..10] ~ ~ ~ 0.8 1.4 1
execute at @a[scores={char=32,s1_timer=..40}] at @e[tag=nautilus] run playsound minecraft:entity.drowned.swim master @a[distance=..10] ~ ~ ~ 0.4 0.5 1
execute at @e[tag=nautilus] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~ ~ 1.5 0.3 1.5 0.3 50 normal
execute at @e[tag=nautilus] run particle minecraft:block{block_state:{Name:"minecraft:tuff"}} ~ ~ ~ 1.5 0.3 1.5 0.3 5 normal
execute at @e[tag=nautilus] run particle minecraft:falling_dust{block_state:{Name:"minecraft:lapis_block"}} ~ ~ ~ 1.5 0.3 1.5 0.1 2 normal
execute as @e[tag=nautilus] at @s run tp @s ^ ^ ^0.3
execute as @e[tag=nautilus] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=nautilus] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~


execute at @e[tag=nautilus] at @e[tag=valid_spell_target,distance=..2.5,scores={CC_knockup=0}] run summon minecraft:marker ~ ~ ~ {Tags:["deepexplosion","entities_emperor"]}
#execute at @e[tag=nautilus] if entity @e[scores={char=32},team=yellow] at @p[distance=..2.5,scores={CC_knockup=0},team=purple] run summon minecraft:marker ~ ~ ~ {Tags:["deepexplosion"]}

execute at @a[scores={char=32,s1_timer=50..}] run kill @e[tag=nautilus]


execute at @e[tag=deepexplosion] as @e[tag=valid_spell_target,distance=..3,scores={CC_knockup=0}] unless score @s Team = @p[scores={char=32}] Team run say ElGrenier "HIIIIIIIIIIIIIIIIIIIIIIII"
execute at @e[tag=deepexplosion] as @e[tag=valid_spell_target,distance=..3,scores={CC_knockup=0}] unless score @s Team = @p[scores={char=32}] Team run effect give @s minecraft:slowness 2 100
execute at @e[tag=deepexplosion] as @e[tag=valid_spell_target,distance=..3,scores={CC_knockup=0}] unless score @s Team = @p[scores={char=32}] Team run effect give @s minecraft:weakness 2 100
execute at @e[tag=deepexplosion] as @e[tag=valid_spell_target,distance=..3,scores={CC_knockup=0}] unless score @s Team = @p[scores={char=32}] Team run scoreboard players set @s CC_knockup 40



#execute at @e[tag=deepexplosion] if entity @e[scores={char=32},team=yellow] run effect give @p[distance=..3,scores={CC_knockup=0},team=purple] minecraft:slowness 2 100
#execute at @e[tag=deepexplosion] if entity @e[scores={char=32},team=yellow] run effect give @p[distance=..3,scores={CC_knockup=0},team=purple] minecraft:weakness 2 100
#execute at @e[tag=deepexplosion] if entity @e[scores={char=32},team=yellow] run scoreboard players set @p[distance=..3,scores={CC_knockup=0},team=purple] CC_knockup 40
#@p = @e[type=player,limit=1,sort=nearest]

execute at @e[tag=deepexplosion] run particle minecraft:block{block_state:{Name:"minecraft:tuff"}} ~ ~1 ~ 0.8 1.5 0.8 0.001 100
execute at @e[tag=deepexplosion] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~ ~ 1.5 2 1.5 0.001 100
execute at @e[tag=deepexplosion] run playsound minecraft:entity.drowned.swim master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @e[tag=deepexplosion] run playsound minecraft:entity.lightning_bolt.impact master @a[distance=..10] ~ ~ ~ 0.6 1.5 1
kill @e[tag=deepexplosion]


#crashing pincers

scoreboard players set @a[scores={char=32,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=32,s2_timer=1,CC_silence=1..}] s2_timer 180

execute at @a[scores={char=32,s2_timer=1,CC_silence=0}] run playsound minecraft:entity.evoker_fangs.attack master @a[distance=..15] ~ ~ ~ 1 1.5 1
execute at @a[scores={char=32,s2_timer=1,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["pincers"]}
tp @e[tag=pincers,limit=1] @a[scores={char=32,s2_timer=1},limit=1]
execute as @e[tag=pincers] at @s run tp @s ^ ^ ^0.5
execute at @a[scores={char=32,s2_timer=12}] run kill @e[tag=pincers]


execute at @e[tag=pincers] run particle minecraft:crit ~ ~1 ~ 0.1 0.3 0.1 0.01 30 force
execute at @e[tag=pincers] run particle minecraft:block{block_state:{Name:"minecraft:deepslate"}} ~ ~1 ~ 0.1 0.3 0.1 0.01 3 force

execute at @e[tag=pincers] as @e[distance=..2,tag=valid_spell_target,limit=1,sort=nearest] unless score @s Team = @p[scores={char=32}] Team run effect give @s minecraft:slowness 1 4
#execute at @e[tag=pincers] if entity @e[scores={char=32},team=yellow] run effect give @p[distance=..2,limit=1,team=purple] minecraft:slowness 1 4


execute at @e[tag=pincers] as @e[tag=valid_spell_target,distance=..2,limit=1] unless score @s Team = @p[scores={char=32}] Team run scoreboard players set @s CC_grounded 20
#execute at @e[tag=pincers] if entity @e[scores={char=32},team=yellow] run scoreboard players set @p[distance=..2,limit=1,team=purple] CC_grounded 20

execute at @e[tag=pincers] as @e[tag=valid_spell_target,distance=..2,limit=1] unless score @s Team = @p[scores={char=32}] Team run tag @s add crab_rend
#execute at @e[tag=pincers] if entity @e[scores={char=32},team=yellow] run tag @p[distance=..2,limit=1,team=purple] add crab_rend


execute at @a[tag=crab_rend] run particle minecraft:block{block_state:{Name:"minecraft:tuff"}} ~ ~1 ~ 0.3 0.5 0.3 0.1 5
execute at @a[tag=crab_rend] run particle minecraft:block{block_state:{Name:"minecraft:deepslate"}} ~ ~1 ~ 0.2 0.5 0.2 1 1
execute at @a[tag=crab_rend] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~1 ~ 0.2 0.5 0.2 1 1
execute at @a[scores={char=32,s2_timer=60}] run tag @a remove crab_rend

execute at @a[tag=crab_rend,scores={universal_damagetaken=1..}] run effect give @p[distance=..7,scores={char=32}] minecraft:regeneration 1 3

#shipwreck shell (na dole for reasons)

scoreboard players set @a[scores={universal_damagetaken=1..}] passive_empe 0

scoreboard players set @a[scores={char=32,CC_shieldbreak=1..}] passive_empe 1

scoreboard players add @a[scores={char=32}] passive_empe 1
effect clear @a[scores={char=32,passive_empe=1..3}] minecraft:absorption
scoreboard players set @a[scores={char=32,passive_empe=210..}] passive_empe 203
effect give @a[scores={char=32,passive_empe=199..200}] minecraft:absorption 99999 2 true

effect give @a[scores={char=32},nbt={active_effects:[{id:"minecraft:absorption"}]}] minecraft:resistance 1 1


# emperor

scoreboard players set @a[scores={char=32,s1_timer=1}] spellCD1 320
scoreboard players add @a[scores={char=32,s1_timer=1..}] s1_timer 1
scoreboard players set @a[scores={char=32,s1_timer=321..}] s1_timer 0


scoreboard players set @a[scores={char=32,s2_timer=1}] spellCD2 200
scoreboard players add @a[scores={char=32,s2_timer=1..}] s2_timer 1
scoreboard players set @a[scores={char=32,s2_timer=201..}] s2_timer 0


execute as @a[scores={char=32}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_hoe",Slot:0b}]}] run clear @a[scores={char=32}] minecraft:wooden_hoe
item replace entity @a[scores={char=32}] hotbar.0 with minecraft:wooden_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Pincers"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}]] 1




execute as @a[scores={char=32,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:glow_ink_sac",Slot:1b}]}] run clear @a[scores={char=32}] minecraft:carrot_on_a_stick
item replace entity @a[scores={char=32,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:glow_ink_sac",minecraft:custom_name={text:"Abyssal Tremor",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=32,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=32}] minecraft:warped_fungus_on_a_stick
item replace entity @a[scores={char=32,s2_timer=0}] hotbar.2 with minecraft:warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:netherite_boots",minecraft:custom_name={text:"Crashing Pincers",color:"dark_aqua",bold:1b}] 1

