kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_pickaxe"}}]

#wardens verdict

execute as @a[scores={universal_kill=1..}] unless score @s Team = @p[scores={char=38}] Team run tag @s add outlaw

execute as @a[advancements={chars:warden_passive=true},tag=outlaw] unless score @s Team = @p[scores={char=38}] Team run tag @s add outlawed
advancement revoke @a[advancements={chars:warden_passive=true}] only chars:warden_passive

scoreboard players set @a[tag=outlawed] CC_stun 20
scoreboard players set @a[tag=outlawed] CC_crippled 100
tag @a[tag=outlawed] remove outlaw
tag @a[tag=outlawed] remove outlawed

tag @a[scores={universal_death=1..}] remove outlaw

execute at @a[tag=outlaw] positioned ~ ~3 ~ unless entity @e[distance=..1,tag=display_outlaw] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_outlaw","entities_warden"],Marker:1b,Invisible:1b,CustomName:{text:"OUTLAW",color:"gold",bold:1b},CustomNameVisible:1b}
execute at @a[tag=outlaw] positioned ~ ~3 ~ run tp @e[distance=..1,tag=display_outlaw] ~ ~ ~
execute as @e[tag=display_outlaw] at @s positioned ~ ~-3 ~ unless entity @a[distance=..1,tag=outlaw] run kill @s


#rite of chains

scoreboard players set @a[scores={char=38,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=38,s2_timer=1,CC_silence=1..}] s2_timer 420

execute at @a[scores={char=38,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["chains_mark","entites_warden"]}
tp @e[tag=chains_mark,limit=1] @a[scores={char=38,s2_timer=1},limit=1]
execute store result entity @e[tag=chains_mark,limit=1] Rotation[1] float 1 run clear
execute as @e[tag=chains_mark] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute at @a[scores={char=38,s2_timer=1,CC_silence=0}] run playsound minecraft:item.crossbow.loading_end master @a[distance=..15] ~ ~ ~ 1 0.8 1

scoreboard players set @e[scores={universal_death=1..}] rite_of_chains 0
scoreboard players set @e[scores={void=1..}] rite_of_chains 0
scoreboard players set @e[scores={abyss=1..}] rite_of_chains 0
scoreboard players set @e[scores={devoured=1..}] rite_of_chains 0

execute at @a[scores={char=38,s2_timer=1..5}] at @e[tag=chains_mark] run particle minecraft:block{block_state:{Name:"minecraft:stone"}} ~ ~ ~ 1 0.01 1 0.3 20 normal
execute at @a[scores={char=38,s2_timer=6..10}] at @e[tag=chains_mark] run particle minecraft:block{block_state:{Name:"minecraft:stone"}} ~ ~ ~ 2 0.01 2 0.3 40 normal
execute at @a[scores={char=38,s2_timer=11..15}] at @e[tag=chains_mark] run particle minecraft:block{block_state:{Name:"minecraft:stone"}} ~ ~ ~ 3 0.01 3 0.3 70 normal
execute at @a[scores={char=38,s2_timer=16..20}] at @e[tag=chains_mark] run particle minecraft:block{block_state:{Name:"minecraft:stone"}} ~ ~ ~ 3 0.01 3 0.3 100 normal

execute at @a[scores={char=38,s2_timer=1..5}] at @e[tag=chains_mark] as @a[distance=..2] unless score @s Team = @p[scores={char=38}] Team run scoreboard players set @s rite_of_chains 40
execute at @a[scores={char=38,s2_timer=6..10}] at @e[tag=chains_mark] as @a[distance=..3] unless score @s Team = @p[scores={char=38}] Team run scoreboard players set @s rite_of_chains 40
execute at @a[scores={char=38,s2_timer=11..15}] at @e[tag=chains_mark] as @a[distance=..4] unless score @s Team = @p[scores={char=38}] Team run scoreboard players set @s rite_of_chains 40
execute at @a[scores={char=38,s2_timer=16..20}] at @e[tag=chains_mark] as @a[distance=..4] unless score @s Team = @p[scores={char=38}] Team run scoreboard players set @s rite_of_chains 40


#execute at @a[scores={char=38,s2_timer=1..5},team=yellow] at @e[tag=chains_mark] run scoreboard players set @a[distance=..2,team=purple] rite_of_chains 40
#execute at @a[scores={char=38,s2_timer=6..10},team=yellow] at @e[tag=chains_mark] run scoreboard players set @a[distance=..3,team=purple] rite_of_chains 40
#execute at @a[scores={char=38,s2_timer=11..15},team=yellow] at @e[tag=chains_mark] run scoreboard players set @a[distance=..4,team=purple] rite_of_chains 40
#execute at @a[scores={char=38,s2_timer=16..20},team=yellow] at @e[tag=chains_mark] run scoreboard players set @a[distance=..4,team=purple] rite_of_chains 40

execute as @e[tag=chains_mark] at @s run tp @s ^ ^ ^0.6
execute as @e[tag=chains_mark] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=chains_mark] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

execute at @a[scores={char=32,s2_timer=10..}] run kill @e[tag=chains_mark]

effect give @a[scores={rite_of_chains=20}] minecraft:weakness 1 100 true
effect give @a[scores={rite_of_chains=20}] minecraft:resistance 1 100 true
scoreboard players set @a[scores={rite_of_chains=20}] CC_intangible 20
execute at @a[scores={rite_of_chains=20}] run summon minecraft:marker ~ ~ ~ {Tags:["rite_pull","entites_warden"],NoGravity:1b}
execute as @e[tag=rite_pull] at @s run tp @p[distance=..1,scores={rite_of_chains=19},limit=1]
execute at @a[scores={rite_of_chains=19}] as @e[distance=..1,tag=rite_pull,limit=1] at @s run tp @s ~ ~0.5 ~
execute at @a[scores={rite_of_chains=19}] as @e[tag=rite_pull] at @s run tp @s ~ ~ ~ facing entity @p[scores={char=38}]

execute as @a[scores={rite_of_chains=5..19}] at @s run tp @e[tag=rite_pull,sort=nearest,limit=1]


execute as @e[tag=rite_pull] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=rite_pull] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=rite_pull] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=rite_pull] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=rite_pull] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=rite_pull] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=rite_pull] at @s run tp @s ^ ^ ^0.5

execute at @e[tag=rite_pull] run playsound block.chain.place master @a[distance=..15] ~ ~ ~ 1 0.5 0.5

execute at @a[scores={rite_of_chains=5}] run kill @e[distance=..1,tag=rite_pull]
scoreboard players set @a[scores={rite_of_chains=5}] CC_stagger 100
scoreboard players remove @a[scores={rite_of_chains=1..}] rite_of_chains 1

#lockdown

scoreboard players set @a[scores={char=38,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=38,s1_timer=1,CC_silence=1..}] s1_timer 220

execute at @a[scores={char=38}] as @a[distance=0.1..8] unless score @s Team = @p[scores={char=38}] Team run tag @s add warden_lockdown_valid_target
execute at @a[scores={char=38}] as @a[distance=8.1..] unless score @s Team = @p[scores={char=38}] Team run tag @s remove warden_lockdown_valid_target
execute at @a[scores={char=38}] as @a if score @s Team = @p[scores={char=38}] Team run tag @s remove warden_lockdown_valid_target

execute at @a[scores={char=38,s1_timer=1,CC_silence=0}] unless entity @e[tag=warden_lockdown_valid_target,distance=..8] run title @a[scores={char=8}] times 0 20 0
execute at @a[scores={char=38,s1_timer=1,CC_silence=0}] unless entity @e[tag=warden_lockdown_valid_target,distance=..8] run title @a[scores={char=8}] actionbar {text:"No targets within range",color:red,bold:1b}
execute at @a[scores={char=38,s1_timer=1,CC_silence=0}] unless entity @e[tag=warden_lockdown_valid_target,distance=..8] run scoreboard players set @a[scores={char=38,CC_silence=0}] spellCD1 20
execute at @a[scores={char=38,s1_timer=1,CC_silence=0}] unless entity @e[tag=warden_lockdown_valid_target,distance=..8] run scoreboard players set @a[scores={char=38,CC_silence=0}] s1_timer 220

execute at @a[scores={char=38,s1_timer=3,CC_silence=0}] run playsound minecraft:block.chain.place master @a[distance=..10] ~ ~ ~ 1 0.7 1

execute at @a[scores={char=38,s1_timer=1,CC_silence=0}] as @a[distance=0.1..8,tag=valid_spell_target] unless score @s Team = @p[scores={char=38}] Team run effect give @s slowness 4 1
execute at @a[scores={char=38,s1_timer=1,CC_silence=0}] as @a[distance=0.1..8,tag=valid_spell_target] unless score @s Team = @p[scores={char=38}] Team run tag @s add lockdowned
execute at @a[scores={char=38,s1_timer=1,CC_silence=0}] as @a[distance=0.1..8,tag=valid_spell_target] at @s unless score @s Team = @p[scores={char=38}] Team run summon marker ~ ~ ~ {Tags:["lockdown","entites_warden"]}

execute at @a[scores={char=38,s1_timer=80}] run tag @a remove lockdowned
execute at @a[scores={char=38,s1_timer=80}] run kill @e[tag=lockdown]
execute at @e[tag=lockdown] run particle minecraft:block{block_state:{Name:"minecraft:iron_chain"}} ~ ~ ~ 0.1 0.8 0.1 0.001 30


execute at @e[tag=lockdown] if entity @a[distance=5..,tag=lockdowned] run playsound minecraft:block.chain.break master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute at @e[tag=lockdown] if entity @a[distance=5..,tag=lockdowned] at @a[tag=lockdowned] run particle minecraft:block{block_state:{Name:"minecraft:iron_chain"}} ~ ~1 ~ 0.5 0.5 0.5 0.01 30
execute at @e[tag=lockdown] if entity @a[distance=5..,tag=lockdowned] at @a[tag=chain_links] run particle minecraft:block{block_state:{Name:"minecraft:iron_chain"}} ~ ~1.5 ~ 0.5 0.5 0.5 0.01 100
execute at @e[tag=lockdown] if entity @a[distance=5..,tag=lockdowned] run effect give @a[tag=lockdowned] minecraft:slowness 1 100 true
execute at @e[tag=lockdown] if entity @a[distance=5..,tag=lockdowned] run effect give @a[tag=lockdowned] minecraft:weakness 1 100 true
execute at @e[tag=lockdown] if entity @a[distance=5..,tag=lockdowned] run scoreboard players set @a[tag=lockdowned] CC_stun 20
execute at @e[tag=lockdown] if entity @a[distance=5..,tag=lockdowned] run tag @a remove lockdowned
execute as @e[tag=lockdown] at @s unless entity @a[distance=..5,tag=lockdowned] run kill @s

execute unless entity @e[tag=lockdown] run kill @e[tag=chain_links]

#chain links animation ===============================================================================

execute as @e[tag=lockdown] at @s run tp @s ~ ~ ~ facing entity @p[tag=lockdowned]

#link 1
execute as @e[tag=lockdown] if entity @a[distance=1..,tag=lockdowned] unless entity @e[tag=link1] at @s positioned ^ ^ ^1 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["link1","chain_links","entites_warden"],Marker:1b,equipment:{head:{id:"minecraft:netherite_block",count:1}}}
execute at @e[tag=lockdown] if entity @a[distance=..1,tag=lockdowned] run kill @e[tag=link1]
execute as @e[tag=lockdown] at @s positioned ^ ^ ^1 run tp @e[tag=link1] ~ ~ ~

#link 2
execute as @e[tag=lockdown] if entity @a[distance=2..,tag=lockdowned] unless entity @e[tag=link2] at @s positioned ^ ^ ^2 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["link2","chain_links","entites_warden"],Marker:1b,equipment:{head:{id:"minecraft:netherite_block",count:1}}}
execute at @e[tag=lockdown] if entity @a[distance=..2,tag=lockdowned] run kill @e[tag=link2]
execute as @e[tag=lockdown] at @s positioned ^ ^ ^2 run tp @e[tag=link2] ~ ~ ~

#link 3
execute as @e[tag=lockdown] if entity @a[distance=3..,tag=lockdowned] unless entity @e[tag=link3] at @s positioned ^ ^ ^3 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["link3","chain_links","entites_warden"],Marker:1b,equipment:{head:{id:"minecraft:netherite_block",count:1}}}
execute at @e[tag=lockdown] if entity @a[distance=..3,tag=lockdowned] run kill @e[tag=link3]
execute as @e[tag=lockdown] at @s positioned ^ ^ ^3 run tp @e[tag=link3] ~ ~ ~

#link 4
execute as @e[tag=lockdown] if entity @a[distance=4..,tag=lockdowned] unless entity @e[tag=link4] at @s positioned ^ ^ ^4 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["link4","chain_links","entites_warden"],Marker:1b,equipment:{head:{id:"minecraft:netherite_block",count:1}}}
execute at @e[tag=lockdown] if entity @a[distance=..4,tag=lockdowned] run kill @e[tag=link4]
execute as @e[tag=lockdown] at @s positioned ^ ^ ^4 run tp @e[tag=link4] ~ ~ ~

#breaking links
execute at @e[tag=lockdown] if entity @a[distance=4..,tag=lockdowned] run data merge entity @e[tag=link1,limit=1] {equipment:{head:{id:"minecraft:red_concrete",count:1}}}
execute at @e[tag=lockdown] if entity @a[distance=4..,tag=lockdowned] run data merge entity @e[tag=link2,limit=1] {equipment:{head:{id:"minecraft:red_concrete",count:1}}}
execute at @e[tag=lockdown] if entity @a[distance=4..,tag=lockdowned] run data merge entity @e[tag=link3,limit=1] {equipment:{head:{id:"minecraft:red_concrete",count:1}}}
execute at @e[tag=lockdown] if entity @a[distance=4..,tag=lockdowned] run data merge entity @e[tag=link4,limit=1] {equipment:{head:{id:"minecraft:red_concrete",count:1}}}

execute at @e[tag=lockdown] if entity @a[distance=..4,tag=lockdowned] run data merge entity @e[tag=link1,limit=1] {equipment:{head:{id:"minecraft:netherite_block",count:1}}}
execute at @e[tag=lockdown] if entity @a[distance=..4,tag=lockdowned] run data merge entity @e[tag=link2,limit=1] {equipment:{head:{id:"minecraft:netherite_block",count:1}}}
execute at @e[tag=lockdown] if entity @a[distance=..4,tag=lockdowned] run data merge entity @e[tag=link3,limit=1] {equipment:{head:{id:"minecraft:netherite_block",count:1}}}
execute at @e[tag=lockdown] if entity @a[distance=..4,tag=lockdowned] run data merge entity @e[tag=link4,limit=1] {equipment:{head:{id:"minecraft:netherite_block",count:1}}}





# warden

scoreboard players set @a[scores={s1_timer=1,char=38}] spellCD1 240
scoreboard players add @a[scores={s1_timer=1..,char=38}] s1_timer 1
scoreboard players set @a[scores={s1_timer=241..,char=38}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=38}] spellCD2 440
scoreboard players add @a[scores={s2_timer=1..,char=38}] s2_timer 1
scoreboard players set @a[scores={s2_timer=441..,char=38}] s2_timer 0

execute as @a[scores={char=38}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_pickaxe",Slot:0b}]}] run clear @a[scores={char=38}] stone_pickaxe
item replace entity @a[scores={char=38}] hotbar.0 with stone_pickaxe[custom_data={warden:1},minecraft:custom_name={bold:1b,color:"gray",text:"Hook"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=38,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=38}] carrot_on_a_stick
item replace entity @a[scores={char=38,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:iron_bars",minecraft:custom_name={text:"Lockdown",color:"dark_aqua",bold:1b}] 1


execute as @a[scores={char=38,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=38}] warped_fungus_on_a_stick
item replace entity @a[scores={char=38,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:iron_chain",minecraft:custom_name={text:"Rite of Chains",color:"dark_aqua",bold:1b}] 1


