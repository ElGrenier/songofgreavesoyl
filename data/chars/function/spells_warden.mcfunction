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


#lockdown

scoreboard players set @a[scores={char=38,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=38,s1_timer=1,CC_silence=1..}] s1_timer 220

execute at @a[scores={char=38}] as @a[distance=0.1..8] unless score @s Team = @p[scores={char=38}] Team run tag @s add warden_lockdown_valid_target
execute at @a[scores={char=38}] as @a[distance=8.1..] unless score @s Team = @p[scores={char=38}] Team run tag @s remove warden_lockdown_valid_target
execute at @a[scores={char=38}] as @a if score @s Team = @p[scores={char=38}] Team run tag @s remove warden_lockdown_valid_target

execute at @a[scores={char=38,s1_timer=1,CC_silence=0}] unless entity @e[tag=warden_lockdown_valid_target,distance=..8] run title @a[scores={char=38}] times 0 20 0
execute at @a[scores={char=38,s1_timer=1,CC_silence=0}] unless entity @e[tag=warden_lockdown_valid_target,distance=..8] run title @a[scores={char=38}] actionbar {text:"No targets within range",color:red,bold:1b}
execute at @a[scores={char=38,s1_timer=1,CC_silence=0}] unless entity @e[tag=warden_lockdown_valid_target,distance=..8] run scoreboard players set @a[scores={char=38,CC_silence=0}] spellCD1 20
execute at @a[scores={char=38,s1_timer=1,CC_silence=0}] unless entity @e[tag=warden_lockdown_valid_target,distance=..8] run scoreboard players set @a[scores={char=38,CC_silence=0}] s1_timer 220

execute at @a[scores={char=38,s1_timer=3,CC_silence=0}] run playsound minecraft:block.chain.place master @a[distance=..10] ~ ~ ~ 1 0.7 1

execute at @a[scores={char=38,s1_timer=1,CC_silence=0}] as @a[distance=0.1..8,tag=valid_spell_target] unless score @s Team = @p[scores={char=38}] Team run effect give @s slowness 4 1
execute at @a[scores={char=38,s1_timer=1,CC_silence=0}] as @a[distance=0.1..8,tag=valid_spell_target] unless score @s Team = @p[scores={char=38}] Team run tag @s add lockdowned
execute at @a[scores={char=38,s1_timer=1,CC_silence=0}] as @a[distance=0.1..8,tag=valid_spell_target] at @s unless score @s Team = @p[scores={char=38}] Team run summon marker ~ ~ ~ {Tags:["lockdown_particle_circle","lockdown_visuals","entities_warden"]}
execute at @a[scores={char=38,s1_timer=1,CC_silence=0}] as @a[distance=0.1..8,tag=valid_spell_target] at @s unless score @s Team = @p[scores={char=38}] Team run summon marker ~ ~ ~ {Tags:["lockdown","entities_warden"]}
execute at @a[scores={char=38,s1_timer=1,CC_silence=0}] as @a[distance=0.1..8,tag=valid_spell_target] at @s unless score @s Team = @p[scores={char=38}] Team run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["lockdown_hookpoint","lockdown_visuals","entities_warden"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,0f,-0.3f],scale:[0.6f,0.5f,0.6f]},block_state:{Name:"minecraft:netherite_block"}}

execute at @a[scores={char=38,s1_timer=80}] run tag @a remove lockdowned
execute at @a[scores={char=38,s1_timer=80}] run kill @e[tag=lockdown]
execute at @e[tag=lockdown] run particle block{block_state:{Name:"minecraft:iron_chain"}} ~ ~ ~ 0.1 0.1 0.1 0.001 1
execute at @e[tag=lockdown] run particle entity_effect{color:[0.33,0.33,1.0,1.0]} ~ ~-0.3 ~ 0.3 0.3 0.3 0.001 1

execute as @e[tag=lockdown_hookpoint] at @s run tp @e[tag=lockdown_particle_circle] ~ ~0.2 ~
execute as @e[tag=lockdown_hookpoint] at @s run tp @e[tag=lockdown] ~ ~0.5 ~
execute as @e[tag=lockdown_hookpoint] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

execute at @e[tag=lockdown] if entity @a[distance=6..,tag=lockdowned] run playsound block.chain.break master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute at @e[tag=lockdown] if entity @a[distance=6..,tag=lockdowned] at @a[tag=lockdowned] run particle block{block_state:{Name:"minecraft:iron_chain"}} ~ ~1 ~ 0.5 0.5 0.5 0.01 30
execute at @e[tag=lockdown] if entity @a[distance=6..,tag=lockdowned] at @a[tag=chain_links] run particle block{block_state:{Name:"minecraft:iron_chain"}} ~ ~ ~ 0.5 0.5 0.5 0.01 100

execute at @e[tag=lockdown] if entity @a[distance=6..,tag=lockdowned] run scoreboard players set @a[tag=lockdowned] CC_stun 20
execute at @e[tag=lockdown] if entity @a[distance=6..,tag=lockdowned] run tag @a remove lockdowned
execute as @e[tag=lockdown] at @s unless entity @a[distance=..6,tag=lockdowned] run kill @s

execute unless entity @e[tag=lockdown] run kill @e[tag=lockdown_visuals]

#chain links animation ===============================================================================

execute at @a[tag=lockdowned] unless entity @e[tag=lockdown_chain_animation_fix] run summon marker ~ ~ ~ {Tags:["lockdown_chain_animation_fix","entities_warden"]}
execute as @a[tag=lockdowned] at @s run tp @e[tag=lockdown_chain_animation_fix] ~ ~0.3 ~
execute unless entity @a[tag=lockdowned] run kill @e[tag=lockdown_chain_animation_fix]

#link 1
execute as @e[tag=lockdown] if entity @a[distance=1..,tag=lockdowned] unless entity @e[tag=link1] at @s positioned ^ ^ ^1 run summon item_display ~ ~-20 ~ {Tags:["link1","lockdown_visuals","chain_links","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute at @e[tag=lockdown] if entity @a[distance=..1,tag=lockdowned] run kill @e[tag=link1]
execute as @e[tag=lockdown] at @s positioned ^ ^ ^1 run tp @e[tag=link1] ~ ~ ~

#link 2
execute as @e[tag=lockdown] if entity @a[distance=2..,tag=lockdowned] unless entity @e[tag=link2] at @s positioned ^ ^ ^2 run summon item_display ~ ~-20 ~ {Tags:["link2","lockdown_visuals","chain_links","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute at @e[tag=lockdown] if entity @a[distance=..2,tag=lockdowned] run kill @e[tag=link2]
execute as @e[tag=lockdown] at @s positioned ^ ^ ^2 run tp @e[tag=link2] ~ ~ ~

#link 3
execute as @e[tag=lockdown] if entity @a[distance=3..,tag=lockdowned] unless entity @e[tag=link3] at @s positioned ^ ^ ^3 run summon item_display ~ ~-20 ~ {Tags:["link3","lockdown_visuals","chain_links","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute at @e[tag=lockdown] if entity @a[distance=..3,tag=lockdowned] run kill @e[tag=link3]
execute as @e[tag=lockdown] at @s positioned ^ ^ ^3 run tp @e[tag=link3] ~ ~ ~

#link 4
execute as @e[tag=lockdown] if entity @a[distance=4..,tag=lockdowned] unless entity @e[tag=link4] at @s positioned ^ ^ ^4 run summon item_display ~ ~-20 ~ {Tags:["link4","lockdown_visuals","chain_links","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute at @e[tag=lockdown] if entity @a[distance=..4,tag=lockdowned] run kill @e[tag=link4]
execute as @e[tag=lockdown] at @s positioned ^ ^ ^4 run tp @e[tag=link4] ~ ~ ~
#link 5
execute as @e[tag=lockdown] if entity @a[distance=5..,tag=lockdowned] unless entity @e[tag=link5] at @s positioned ^ ^ ^5 run summon item_display ~ ~-20 ~ {Tags:["link5","lockdown_visuals","chain_links","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute at @e[tag=lockdown] if entity @a[distance=..5,tag=lockdowned] run kill @e[tag=link5]
execute as @e[tag=lockdown] at @s positioned ^ ^ ^5 run tp @e[tag=link5] ~ ~ ~

#breaking links
execute at @e[tag=lockdown] if entity @a[distance=5..,tag=lockdowned] at @e[tag=chain_links] run particle block{block_state:{Name:"minecraft:waxed_copper_chain"}} ~ ~ ~ 0.3 0.3 0.3 0.01 1
execute at @e[tag=lockdown] if entity @a[distance=5..,tag=lockdowned] as @e[tag=chain_links] run data merge entity @s {item:{count:1,id:"minecraft:waxed_copper_chain"}}
execute at @e[tag=lockdown] if entity @a[distance=..5,tag=lockdowned] as @e[tag=chain_links] run data merge entity @s {item:{count:1,id:"minecraft:iron_chain"}}


execute as @e[tag=lockdown] at @s run tp @s ~ ~ ~ facing entity @n[tag=lockdown_chain_animation_fix]
execute as @e[tag=chain_links] at @s run tp @s ~ ~ ~ facing entity @n[tag=lockdown]


#rite of chains

scoreboard players set @a[scores={char=38,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=38,s2_timer=1,CC_silence=1..}] s2_timer 420

execute as @a[scores={char=38,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~40 0 run function chars:warden_rite_raycast
execute as @a[scores={char=38,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~35 0 run function chars:warden_rite_raycast
execute as @a[scores={char=38,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~30 0 run function chars:warden_rite_raycast
execute as @a[scores={char=38,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~25 0 run function chars:warden_rite_raycast
execute as @a[scores={char=38,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~20 0 run function chars:warden_rite_raycast
execute as @a[scores={char=38,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~15 0 run function chars:warden_rite_raycast
execute as @a[scores={char=38,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~10 0 run function chars:warden_rite_raycast
execute as @a[scores={char=38,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~5 0 run function chars:warden_rite_raycast
execute as @a[scores={char=38,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~0 0 run function chars:warden_rite_raycast
execute as @a[scores={char=38,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~-5 0 run function chars:warden_rite_raycast
execute as @a[scores={char=38,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~-10 0 run function chars:warden_rite_raycast
execute as @a[scores={char=38,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~-15 0 run function chars:warden_rite_raycast
execute as @a[scores={char=38,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~-20 0 run function chars:warden_rite_raycast
execute as @a[scores={char=38,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~-25 0 run function chars:warden_rite_raycast
execute as @a[scores={char=38,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~-30 0 run function chars:warden_rite_raycast
execute as @a[scores={char=38,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~-35 0 run function chars:warden_rite_raycast
execute as @a[scores={char=38,s2_timer=1,CC_silence=0}] at @s positioned ~ ~0.2 ~ rotated ~-40 0 run function chars:warden_rite_raycast

execute at @a[scores={char=38,s2_timer=1,CC_silence=0}] run playsound item.crossbow.loading_end master @a[distance=..15] ~ ~ ~ 0.5 0.8 1
execute at @a[scores={char=38,s2_timer=1,CC_silence=0}] run playsound block.chain.place master @a[distance=..15] ~ ~ ~ 1 1.1 1

scoreboard players set @e[scores={universal_death=1..}] rite_of_chains 0
scoreboard players set @e[scores={void=1..}] rite_of_chains 0
scoreboard players set @e[scores={abyss=1..}] rite_of_chains 0
scoreboard players set @e[scores={devoured=1..}] rite_of_chains 0


effect give @a[scores={rite_of_chains=20}] weakness 1 100 true
effect give @a[scores={rite_of_chains=20}] resistance 1 100 true
scoreboard players set @a[scores={rite_of_chains=20}] CC_intangible 20
execute at @a[scores={rite_of_chains=20}] run summon marker ~ ~ ~ {Tags:["rite_pull","entities_warden"],NoGravity:1b}
execute as @e[tag=rite_pull] at @s run tp @p[distance=..1,scores={rite_of_chains=20},limit=1]
execute at @a[scores={rite_of_chains=20}] as @e[distance=..1,tag=rite_pull,limit=1] at @s run tp @s ~ ~0.5 ~
execute at @a[scores={rite_of_chains=20}] as @e[tag=rite_pull] at @s run tp @s ~ ~ ~ facing entity @p[scores={char=38}]

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

execute unless entity @e[tag=rite_chains_animation_fix] run summon marker ~ ~ ~ {Tags:["rite_chains_animation_fix","entities_warden"]}
execute as @p[scores={char=38}] at @s run tp @e[tag=rite_chains_animation_fix] ~ ~1 ~

execute at @e[scores={rite_of_chains=6..}] positioned ~ ~1 ~ unless entity @e[tag=chains_rite_point,distance=..1] run summon marker ~ ~ ~ {Tags:["chains_rite_point","entities_warden"]}
execute as @e[scores={rite_of_chains=6..}] at @s run tp @e[tag=chains_rite_point,distance=..1] ~ ~1 ~
execute as @e[tag=chains_rite_point] at @s unless entity @e[scores={rite_of_chains=6..},distance=..1] run kill @s


execute as @e[tag=chains_rite_point] at @s run tp @s ~ ~ ~ facing entity @e[tag=rite_chains_animation_fix,limit=1]

execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..1] positioned ^ ^ ^1 unless entity @e[tag=rite_chain_1,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_1","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..2] positioned ^ ^ ^2 unless entity @e[tag=rite_chain_2,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_2","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..3] positioned ^ ^ ^3 unless entity @e[tag=rite_chain_3,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_3","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..4] positioned ^ ^ ^4 unless entity @e[tag=rite_chain_4,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_4","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..5] positioned ^ ^ ^5 unless entity @e[tag=rite_chain_5,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_5","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..6] positioned ^ ^ ^6 unless entity @e[tag=rite_chain_6,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_6","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..7] positioned ^ ^ ^7 unless entity @e[tag=rite_chain_7,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_7","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..8] positioned ^ ^ ^8 unless entity @e[tag=rite_chain_8,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_8","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..9] positioned ^ ^ ^9 unless entity @e[tag=rite_chain_9,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_9","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..10] positioned ^ ^ ^10 unless entity @e[tag=rite_chain_10,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_10","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..11] positioned ^ ^ ^11 unless entity @e[tag=rite_chain_11,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_11","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..12] positioned ^ ^ ^12 unless entity @e[tag=rite_chain_12,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_12","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..13] positioned ^ ^ ^13 unless entity @e[tag=rite_chain_13,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_13","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..14] positioned ^ ^ ^14 unless entity @e[tag=rite_chain_14,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_14","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..15] positioned ^ ^ ^15 unless entity @e[tag=rite_chain_15,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_15","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..16] positioned ^ ^ ^16 unless entity @e[tag=rite_chain_16,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_16","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..17] positioned ^ ^ ^17 unless entity @e[tag=rite_chain_17,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_17","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..18] positioned ^ ^ ^18 unless entity @e[tag=rite_chain_18,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_18","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}
execute as @e[tag=chains_rite_point] at @s unless entity @a[scores={char=38},distance=..19] positioned ^ ^ ^19 unless entity @e[tag=rite_chain_19,distance=..1] run summon item_display ~ ~ ~ {Tags:["rite_chain_19","riteofchains_visuals","entities_warden"],item:{count:1,id:"minecraft:iron_chain"},teleport_duration:1,transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1.2f,2f],translation:[0f,0f,0f]}}

execute as @e[tag=riteofchains_visuals] at @s run rotate @s facing entity @e[tag=rite_chains_animation_fix,limit=1]

execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^1 run tp @e[tag=rite_chain_1,distance=..1] ~ ~ ~
execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^2 run tp @e[tag=rite_chain_2,distance=..1] ~ ~ ~
execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^3 run tp @e[tag=rite_chain_3,distance=..1] ~ ~ ~
execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^4 run tp @e[tag=rite_chain_4,distance=..1] ~ ~ ~
execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^5 run tp @e[tag=rite_chain_5,distance=..1] ~ ~ ~
execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^6 run tp @e[tag=rite_chain_6,distance=..1] ~ ~ ~
execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^7 run tp @e[tag=rite_chain_7,distance=..1] ~ ~ ~
execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^8 run tp @e[tag=rite_chain_8,distance=..1] ~ ~ ~
execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^9 run tp @e[tag=rite_chain_9,distance=..1] ~ ~ ~
execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^10 run tp @e[tag=rite_chain_10,distance=..1] ~ ~ ~
execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^11 run tp @e[tag=rite_chain_11,distance=..1] ~ ~ ~
execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^12 run tp @e[tag=rite_chain_12,distance=..1] ~ ~ ~
execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^13 run tp @e[tag=rite_chain_13,distance=..1] ~ ~ ~
execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^14 run tp @e[tag=rite_chain_14,distance=..1] ~ ~ ~
execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^15 run tp @e[tag=rite_chain_15,distance=..1] ~ ~ ~
execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^16 run tp @e[tag=rite_chain_16,distance=..1] ~ ~ ~
execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^17 run tp @e[tag=rite_chain_17,distance=..1] ~ ~ ~
execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^18 run tp @e[tag=rite_chain_18,distance=..1] ~ ~ ~
execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^19 run tp @e[tag=rite_chain_19,distance=..1] ~ ~ ~

#execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^1 run kill @e[tag=rite_chain_1,distance=1.1..]
#execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^2 run kill @e[tag=rite_chain_2,distance=1.1..]
#execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^3 run kill @e[tag=rite_chain_3,distance=1.1..]
#execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^4 run kill @e[tag=rite_chain_4,distance=1.1..]
#execute as @e[tag=chains_rite_point] at @s positioned ^ ^ ^5 run kill @e[tag=rite_chain_5,distance=1.1..]

execute as @e[tag=chains_rite_point] at @s if entity @a[scores={char=38},distance=..1.9] run kill @e[tag=rite_chain_2] 
execute as @e[tag=chains_rite_point] at @s if entity @a[scores={char=38},distance=..2.9] run kill @e[tag=rite_chain_3] 
execute as @e[tag=chains_rite_point] at @s if entity @a[scores={char=38},distance=..3.9] run kill @e[tag=rite_chain_4] 
execute as @e[tag=chains_rite_point] at @s if entity @a[scores={char=38},distance=..4.9] run kill @e[tag=rite_chain_5] 
execute as @e[tag=chains_rite_point] at @s if entity @a[scores={char=38},distance=..5.9] run kill @e[tag=rite_chain_6] 
execute as @e[tag=chains_rite_point] at @s if entity @a[scores={char=38},distance=..6.9] run kill @e[tag=rite_chain_7] 
execute as @e[tag=chains_rite_point] at @s if entity @a[scores={char=38},distance=..7.9] run kill @e[tag=rite_chain_8] 
execute as @e[tag=chains_rite_point] at @s if entity @a[scores={char=38},distance=..8.9] run kill @e[tag=rite_chain_9] 
execute as @e[tag=chains_rite_point] at @s if entity @a[scores={char=38},distance=..9.9] run kill @e[tag=rite_chain_10] 
execute as @e[tag=chains_rite_point] at @s if entity @a[scores={char=38},distance=..10.9] run kill @e[tag=rite_chain_11] 
execute as @e[tag=chains_rite_point] at @s if entity @a[scores={char=38},distance=..11.9] run kill @e[tag=rite_chain_12] 
execute as @e[tag=chains_rite_point] at @s if entity @a[scores={char=38},distance=..12.9] run kill @e[tag=rite_chain_13] 
execute as @e[tag=chains_rite_point] at @s if entity @a[scores={char=38},distance=..13.9] run kill @e[tag=rite_chain_14] 
execute as @e[tag=chains_rite_point] at @s if entity @a[scores={char=38},distance=..14.9] run kill @e[tag=rite_chain_15] 
execute as @e[tag=chains_rite_point] at @s if entity @a[scores={char=38},distance=..15.9] run kill @e[tag=rite_chain_16] 
execute as @e[tag=chains_rite_point] at @s if entity @a[scores={char=38},distance=..16.9] run kill @e[tag=rite_chain_17] 
execute as @e[tag=chains_rite_point] at @s if entity @a[scores={char=38},distance=..17.9] run kill @e[tag=rite_chain_18] 
execute as @e[tag=chains_rite_point] at @s if entity @a[scores={char=38},distance=..18.9] run kill @e[tag=rite_chain_19] 

execute as @e[tag=riteofchains_visuals] at @s run rotate @s facing entity @e[tag=rite_chains_animation_fix,limit=1]
execute unless entity @e[scores={rite_of_chains=6..}] run kill @e[tag=riteofchains_visuals]

#execute as @e[tag=riteofchains_visuals,tag=!chains_visual_fix] run data merge entity @s {item:{count:1,id:"minecraft:iron_chain"}}
#tag @e[tag=riteofchains_visuals] add chains_visual_fix


# warden

scoreboard players set @a[scores={s1_timer=1,char=38}] spellCD1 240
scoreboard players add @a[scores={s1_timer=1..,char=38}] s1_timer 1
scoreboard players set @a[scores={s1_timer=241..,char=38}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=38}] spellCD2 360
scoreboard players add @a[scores={s2_timer=1..,char=38}] s2_timer 1
scoreboard players set @a[scores={s2_timer=360..,char=38}] s2_timer 0

execute as @a[scores={char=38}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_pickaxe",Slot:0b}]}] run clear @a[scores={char=38}] stone_pickaxe
item replace entity @a[scores={char=38}] hotbar.0 with stone_pickaxe[custom_data={warden:1},minecraft:custom_name={bold:1b,color:"gray",text:"Hook"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1

execute as @a[scores={char=38,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=38}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=38,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:iron_bars",minecraft:custom_name={text:"Lockdown",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=38,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=38}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=38,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:iron_chain",minecraft:custom_name={text:"Rite of Chains",color:"dark_aqua",bold:1b}] 1


