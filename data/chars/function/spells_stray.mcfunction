#Scoreboard definition 
# prey : The character that is the prey of the stray

kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_sword"}}]

#the shape in the shadows

scoreboard players add @a[scores={char=33}] outofcombat 1
scoreboard players set @a[scores={char=33,outofcombat=100..}] outofcombat 80
effect clear @a[scores={stealth=1..}] minecraft:glowing


execute as @a[scores={char=33,outofcombat=80..110}] at @s unless entity @e[distance=..5,tag=Altars] unless score @s Team > @e[distance=..5,tag=valid_spell_target,limit=1,sort=furthest] Team unless score @s Team < @e[distance=..5,tag=valid_spell_target,limit=1,sort=furthest] Team run scoreboard players set @s stealth 4

scoreboard players remove @a[scores={stealth=1..}] stealth 1


tag @a[scores={stealth=3,char=33}] add invisible
effect give @a[scores={stealth=3..,char=33}] invisibility 1 1 true
item replace entity @a[scores={stealth=3,char=33}] armor.head with air
item replace entity @a[scores={stealth=3,char=33}] armor.chest with air
item replace entity @a[scores={stealth=3,char=33}] armor.legs with air
item replace entity @a[scores={stealth=3,char=33}] armor.feet with air

execute at @a[scores={stealth=2,char=33}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:coal_block"}} ~ ~1 ~ 0.5 1 0.5 0.01 40
execute at @a[scores={stealth=1..2,char=33}] run playsound minecraft:entity.zombie.infect master @a[distance=..10] ~ ~ ~ 1 1 1

effect clear @a[scores={stealth=..2,char=33}] minecraft:invisibility
tag @a[scores={stealth=..1,char=33}] remove invisible

#true darkness

scoreboard players set @a[scores={char=33,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=33,s1_timer=1,CC_silence=1..}] s1_timer 260

execute at @a[scores={char=33,s1_timer=2,CC_silence=0}] run playsound minecraft:entity.wither_skeleton.ambient master @a[distance=..14] ~ ~ ~ 1 0.1 1

execute at @a[scores={char=33,s1_timer=2,CC_silence=0}] as @e[tag=valid_spell_target,distance=..14] unless score @s Team = @p[scores={char=33}] Team run particle falling_dust{block_state:{Name:"minecraft:coal_block"}} ~ ~1.6 ~ 0.3 0.4 0.3 1 50

execute at @a[scores={char=33,s1_timer=2,CC_silence=0}] as @a[tag=valid_spell_target,distance=..14] unless score @s Team = @p[scores={char=33}] Team run effect give @s blindness 4 1
execute at @a[scores={char=33,s1_timer=2,CC_silence=0}] as @a[tag=valid_spell_target,distance=..14,scores={prey=1..}] unless score @s Team = @p[scores={char=33}] Team run effect give @s blindness 6 1


#rusted wounds

scoreboard players set @a[scores={char=33,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=33,s2_timer=1,CC_silence=1..}] s2_timer 180

execute at @a[scores={char=33,death_dash_reset=1..}] run kill @e[tag=stray_dash]
execute at @a[scores={char=33,universal_death=1..}] run kill @e[tag=stray_dash]
execute at @a[scores={char=33,CC_grounded=1..}] run kill @e[tag=stray_dash]
execute at @a[scores={char=33,CC_root=1..}] run kill @e[tag=stray_dash]
execute at @a[scores={char=33,CC_stun=1..}] run kill @e[tag=stray_dash]
execute at @a[scores={char=33,CC_silence=1..}] run kill @e[tag=stray_dash]

execute at @a[scores={char=33,s2_timer=2}] run summon marker ~ ~ ~ {Tags:["stray_dash","entities_stray"]}
tp @e[tag=stray_dash,limit=1] @a[scores={char=33,s2_timer=2},limit=1]
execute at @a[scores={char=33,s2_timer=2},limit=1] run tp @e[tag=stray_dash,limit=1] ~ ~0.5 ~

execute as @e[tag=stray_dash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=stray_dash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=stray_dash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=stray_dash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=stray_dash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=stray_dash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute at @e[tag=stray_dash] run particle crit ~ ~1 ~ 0.1 0.5 0.1 0 10
execute at @e[tag=stray_dash] run particle sweep_attack ~ ~1 ~ 0.5 0.1 0.5 0 10

execute as @e[tag=stray_dash] at @s run tp @s ^ ^ ^1
tp @a[scores={char=33,s2_timer=2..9,death_dash_reset=0}] @e[tag=stray_dash,limit=1]

execute at @a[scores={char=33,s2_timer=6}] run kill @e[tag=stray_dash]
execute as @a[scores={char=33,s2_timer=10}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

execute at @a[scores={char=33,s2_timer=1}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..5] ~ ~ ~ 1 1.6 1

execute at @e[tag=stray_dash] as @a[distance=0.1..1.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=33}] Team at @s run tag @s add stray_wounded
execute if entity @e[tag=stray_wounded] run kill @e[tag=stray_dash]


execute at @a[tag=stray_wounded] run particle minecraft:block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~1.2 ~ 0.4 0.8 0.4 0.1 20
execute at @a[tag=stray_wounded] run particle crit ~ ~1 ~ 0.4 0.8 0.4 0.1 20
execute at @a[tag=stray_wounded] run playsound entity.player.attack.strong master @a[distance=..5] ~ ~ ~ 1 0.5 1
scoreboard players set @a[tag=stray_wounded] CC_defiled 80
effect give @a[tag=stray_wounded] slowness 1 3
execute at @a[tag=stray_wounded,scores={prey=1..}] run effect give @p[scores={char=33}] speed 2 2 true
tag @a remove stray_wounded



#no place to hide

execute at @a[scores={prey=1..}] as @a[distance=0.1..5] if score @s Team = @p[scores={prey=1..}] Team run tag @s add stray_preys_ally
execute at @a[scores={prey=1..}] as @a[distance=5.1..] if score @s Team = @p[scores={prey=1..}] Team run tag @s remove stray_preys_ally
execute at @a[scores={prey=1..}] as @a unless score @s Team = @p[scores={prey=1..}] Team run tag @s remove stray_preys_ally
execute unless entity @a[scores={prey=1..}] run tag @a remove stray_preys_ally

execute if entity @a[scores={prey=1..}] run clear @a[scores={char=33}] carrot_on_a_stick[custom_data={s3:1}]
clear @a[scores={char=33,stealth=..2}] carrot_on_a_stick[custom_data={s3:1}]

execute at @a[scores={char=33,s3_timer=1..,CC_silence=0}] as @p[distance=0.1..15,tag=valid_spell_target] unless score @s Team = @p[scores={char=33}] Team run scoreboard players set @s prey 300

scoreboard players remove @a[scores={prey=1..}] prey 1
execute at @p[scores={prey=1..}] if entity @a[tag=stray_preys_ally,distance=1..5] run scoreboard players remove @a[scores={prey=1..}] prey 3
execute at @p[scores={prey=1..}] unless entity @a[tag=stray_preys_ally,distance=1..5] run effect give @p[distance=..5,scores={char=33}] strength 1
scoreboard players set @a[scores={universal_death=1..}] prey 0


execute unless entity @a[scores={prey=1..}] run title @a[scores={char=33}] actionbar [{text:"[ ",bold:1b,color:"dark_red",type:"text"},{text:"No current prey",color:"gray",bold:0b,type:"text"},{text:" ]",bold:1b,color:"dark_red",type:"text"}]
execute if entity @a[scores={prey=1..}] run title @a[scores={char=33}] actionbar [{text:"> ",bold:1b,color:"dark_red",type:"text"},{selector:"@a[scores={prey=1..}]",color:"red",bold:1b,type:"selector"},{text:" <",bold:1b,color:"dark_red",type:"text"}]

execute at @a[scores={char=33}] run scoreboard players add @a[distance=..5,scores={prey=1..}] stray_terrorradius 6
execute at @a[scores={char=33}] run scoreboard players add @a[distance=5..11,scores={prey=1..}] stray_terrorradius 4
execute at @a[scores={char=33}] run scoreboard players add @a[distance=11..,scores={prey=1..}] stray_terrorradius 2
execute as @a[scores={stray_terrorradius=80..}] at @s if entity @a[distance=..5,scores={char=33}] run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 1.2 1
execute as @a[scores={stray_terrorradius=80..}] at @s if entity @a[distance=5.1..11,scores={char=33}] run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 1 1
execute as @a[scores={stray_terrorradius=80..}] at @s if entity @a[distance=11.1..,scores={char=33}] run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 0.8 1

scoreboard players set @a[scores={stray_terrorradius=80..}] stray_terrorradius 0
scoreboard players set @a[scores={prey=0}] stray_terrorradius 0

execute at @a[scores={char=33}] unless entity @e[tag=prey_tracking] run summon marker ~ ~ ~ {Tags:["prey_tracking","entities_stray"]}
execute at @a[scores={char=33}] run tp @e[tag=prey_tracking] ~ ~ ~ facing entity @e[limit=1,scores={prey=1..}]
execute as @e[tag=prey_tracking] at @s if entity @e[scores={prey=1..},distance=3..] run function chars:prey_tracker
execute at @e[scores={prey=1..}] run particle raid_omen ~ ~0.5 ~ 0.3 0.8 0.3 0.1 1 force @p[scores={char=33}]

# stray

scoreboard players set @a[scores={s1_timer=1,char=33}] spellCD1 280
scoreboard players add @a[scores={s1_timer=1..,char=33}] s1_timer 1
scoreboard players set @a[scores={s1_timer=281..,char=33}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=33}] spellCD2 200
scoreboard players add @a[scores={s2_timer=1..,char=33}] s2_timer 1
scoreboard players set @a[scores={s2_timer=201..,char=33}] s2_timer 0

execute as @a[scores={char=33}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_sword",Slot:0b}]}] run clear @a[scores={char=33}] :stone_sword
item replace entity @a[scores={char=33}] hotbar.0 with minecraft:stone_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Pocket Knife"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.4d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1

execute as @a[scores={char=33,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=33}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=33,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:black_candle",minecraft:custom_name={text:"True Darkness",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=33,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=33}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=33,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:conduit",minecraft:custom_name={text:"Rusted Wounds",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={stealth=3..,char=33,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:3b}]}] run clear @a[scores={char=33}] carrot_on_a_stick[custom_data={s3:1}]
execute unless entity @p[scores={prey=1..}] run item replace entity @a[scores={stealth=3..,char=33,CC_silence=0}] hotbar.3 with carrot_on_a_stick[custom_data={s3:1},minecraft:item_model="minecraft:netherite_helmet",minecraft:custom_name={text:"No Place to Hide",color:"dark_aqua",bold:1b}] 1


scoreboard players remove @a[scores={char=33,s3_timer=1..}] s3_timer 1