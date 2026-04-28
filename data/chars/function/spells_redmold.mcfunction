

#passives

#effects


execute at @a[scores={char=59},team=purple] run team join purple @e[tag=MoldHost]
execute at @a[scores={char=59},team=yellow] run team join yellow @e[tag=MoldHost]
execute at @a[scores={char=59},team=purple] run team join purple @e[tag=MoldStructure]
execute at @a[scores={char=59},team=yellow] run team join yellow @e[tag=MoldStructure]
scoreboard players operation @e[tag=MoldHost] Team = @p[scores={char=59}] Team
scoreboard players operation @e[tag=MoldStructure] Team = @p[scores={char=59}] Team
execute at @a[scores={char=59},team=ffa_redmold] run team join ffa_redmold @e[tag=MoldHost]
execute if score map_type settings matches 4 run team join ffa_redmold @a[scores={char=59}]
team join ffa_redmold @a[scores={char=59},team=ffa]

execute as @e[tag=MoldHost] store result score @s HP_display run data get entity @s Health
#execute as @e[tag=MoldHost] store result storage chars:minion_hp minion_hp int 1 run scoreboard players get @s minion_hp
#execute as @e[tag=MoldHost] run function chars:minion_hp with storage chars:minion_hp


execute as @e[tag=MoldProjectile] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=MoldProjectile] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=MoldProjectile] at @s unless block ^ ^ ^0.5 #minecraft:dash run kill @s

execute as @a[scores={char=59,s0_timer=1,universal_sneak=0}] at @s positioned ~ ~1.5 ~ run function chars:mold_raycast
scoreboard players set @a[scores={char=59,s0_timer=1,universal_sneak=0}] s0_timer 0
execute as @a[scores={char=59,s0_timer=1,universal_sneak=1..}] at @s positioned ~ ~1.5 ~ run function chars:mold_raycast_command
execute at @a[scores={char=59,s0_timer=1,universal_sneak=1..}] run scoreboard players set @e[tag=marked_host] undead_animaton 1

#spores

execute as @a[scores={char=59}] run title @s[scores={char=59}] actionbar [{text:"[",bold:1b,color:"dark_red",type:"text"},{text:" Spores: ",color:"gray",bold:0b,type:"text"},{score:{name:"@s",objective:"spores"},color:"red",bold:0b,type:"score"},{text:"/",color:"dark_red",bold:1b,type:"text"},{text:"10 ",color:"red",bold:0b,type:"text"},{text:"]",bold:1b,color:"dark_red",type:"text"}]

scoreboard players add @a[scores={char=59,spores=..9}] spores_timer 1
scoreboard players add @a[scores={char=59,spores=..9,spores_timer=70}] spores 1
scoreboard players set @a[scores={spores_timer=70..,spores=..9}] spores_timer 0

#target points

execute as @e[tag=mold_target_point] at @s if block ~ ~-0.5 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=mold_target_point] at @s if block ~ ~-0.5 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=mold_target_point] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=mold_target_point] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=mold_target_point] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute at @e[tag=mold_target_point] run particle crimson_spore ~ ~ ~ 1 1 1 0.01 40
execute at @e[tag=mold_target_point] run particle block{block_state:{Name:"minecraft:nether_wart"}} ~ ~ ~ 1 0.5 1 0.1 10
execute at @e[tag=mold_target_point] run particle block{block_state:{Name:"minecraft:dirt"}} ~ ~ ~ 1 0.2 1 0.1 10
execute at @e[tag=mold_target_point] run particle block{block_state:{Name:"minecraft:stripped_mangrove_wood"}} ~ ~ ~ 1 0.2 1 0.1 10
scoreboard players add @e[tag=mold_target_point] spores 1

kill @e[tag=mold_target_point,scores={spores=42..}]

scoreboard players add @e[tag=marked_host,scores={undead_animaton=1..30}] undead_animaton 1
execute as @e[tag=marked_host,scores={undead_animaton=1..10}] at @s run tp @s ~ ~-0.3 ~

execute as @e[tag=marked_host,scores={undead_animaton=1..2}] run data merge entity @s {NoAI:1b,Invulnerable:1b,CustomNameVisible:0}
execute at @e[tag=marked_host,scores={undead_animaton=1..15}] run particle crimson_spore ~ ~ ~ 0.5 1 0.5 0.01 1
execute at @e[tag=marked_host,scores={undead_animaton=1..15}] run particle falling_dust{block_state:{Name:"minecraft:nether_wart"}} ~ ~ ~ 0.8 1 0.8 1 10
execute at @e[tag=marked_host,scores={undead_animaton=5}] run playsound block.nether_wart.break master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @e[tag=marked_host,scores={undead_animaton=10}] run playsound block.nether_wart.break master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @e[tag=marked_host,scores={undead_animaton=15}] run playsound block.nether_wart.break master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @e[tag=marked_host,scores={undead_animaton=20}] run playsound block.nether_wart.break master @a[distance=..15] ~ ~ ~ 1 0.8 1

execute as @e[tag=mold_target_point,limit=1] at @s run tp @e[tag=marked_host,scores={undead_animaton=20}] ~ ~-1.5 ~

execute as @e[tag=marked_host,scores={undead_animaton=20..30}] at @s run tp @s ~ ~0.15 ~
execute as @e[tag=marked_host,scores={undead_animaton=20}] run data merge entity @s {Invulnerable:0b,CustomNameVisible:1}
execute as @e[tag=marked_host,scores={undead_animaton=20},tag=!Mold_Healer] run data merge entity @s {NoAI:0b}
execute as @e[tag=marked_host,scores={undead_animaton=30}] run tag @s remove marked_host

scoreboard players set @e[tag=MoldHost,scores={undead_animaton=30..}] undead_animaton 0

execute at @a[scores={mold_kills_2=1..}] as @a[scores={char=59}] run function chars:add_kill
execute at @a[scores={mold_kills=1..}] as @a[scores={char=59}] run function chars:add_kill
scoreboard players remove @a[scores={mold_kills_2=1..}] mold_kills_2 1
scoreboard players remove @a[scores={mold_kills=1..}] mold_kills 1


# ========================================================================================================================================================================================================================================================================================================
#s1 - buildings ========================================================================================================================================================================================================================================================================================================
# ========================================================================================================================================================================================================================================================================================================

scoreboard players set @a[scores={char=59,s1_timer=1}] s1_timer_recast 1
scoreboard players set @a[scores={char=59,s1_timer=1}] s1_timer 0

scoreboard players enable @a[scores={char=59,s1_timer_recast=1..}] MoldBuildings

dialog show @a[scores={char=59,s1_timer_recast=1..}] {type:multi_action,title:"",actions:[{label:[{text:"Overtaken Sentry",color:red},{text:" (5)",color:dark_red,bold:1b}],tooltip:[{text:"================\n",color:"dark_red",type:"text"},{text:"HP: ",color:"gray",type:"text"},{text:"20",color:"red",type:"text"},{text:" | ",color:"dark_red",type:"text"},{text:"Lifetime: ",color:"gray",type:"text"},{text:"18s",color:"red",type:"text"},{text:"\nConstruct a stationary Sentry, which rapidly shoots at the closest enemy within 15 block range, dealing ",color:"gray",type:"text"},{text:"3 damage",color:"red",type:"text"},{text:".\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}],action:{type:run_command,command:"/trigger MoldBuildings set 1"}},{label:[{text:"Mycelium Mortar",color:red},{text:" (6)",color:dark_red,bold:1}],tooltip:[{text:"================",color:"dark_red",type:"text"},{text:"\nFire a slow projectile at upwards angle, which explodes upon reaching terrain, dealing ",color:"gray",type:"text"},{text:"8 damage",color:"red",type:"text"},{text:" to all enemies within 6 blocks range.\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}],action:{type:run_command,command:"/trigger MoldBuildings set 2"}},{label:[{text:"Crumbling Ground ",color:red},{text:"(2)",color:dark_red,bold:1b}],tooltip:[{text:"================",color:"dark_red",type:"text"},{text:"\nSend forwards a shockwave which",color:"gray",type:"text"},{text:" slows ",color:"light_purple",type:"text"},{text:"all enemies hit by ",color:"gray",type:"text"},{text:"15%",color:"light_purple",type:"text"},{text:" for 1 second and pushes them away, dealing ",color:"gray",type:"text"},{text:"1 damage",color:"red",type:"text"},{text:".\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}],action:{type:run_command,command:"/trigger MoldBuildings set 5"}},{label:[{text:"Hungering Mold",color:red},{text:" (4)",color:dark_red,bold:1b}],tooltip:[{text:"================",color:"dark_red",type:"text"},{text:"\nLifetime: ",color:"gray",type:"text"},{text:"5s",color:"red",type:"text"},{text:"\nDefiles ",color:"light_purple",type:"text"},{text:"all enemies within 5 block range. All Mold Hosts gain ",color:"gray",type:"text"},{text:"+2 damage",color:"aqua",type:"text"},{text:" and ",color:"gray",type:"text"},{text:"+30% movement speed",color:"aqua",type:"text"},{text:".\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}],action:{type:run_command,command:"/trigger MoldBuildings set 6"}}],pause:false,can_close_with_escape:true,body:{type:"plain_message",contents:["",{text:"\n\n=======",bold:true,color:dark_red,strikethrough:true},{text:" Warped Tactics ",bold:true,color:red},{text:"=======",bold:true,color:dark_red,strikethrough:true}],width:350},columns:1}

scoreboard players set @a[scores={char=59,s1_timer_recast=1..}] s1_timer_recast 0

scoreboard players set @a[scores={char=59,MoldBuildings=1..}] s1_timer 1

scoreboard players add @e[tag=MoldStructure] SummonAge 1

kill @e[tag=Mold_Sentry,scores={SummonAge=360..}]
kill @e[tag=Mold_Ravager,scores={SummonAge=400..}]
kill @e[tag=Mold_Pile,scores={SummonAge=400..}]
kill @e[tag=Mold_Mycelium,scores={SummonAge=700..}]
kill @e[tag=Mold_Ground,scores={SummonAge=140..}]
kill @e[tag=Mold_Hunger,scores={SummonAge=100..}]


# shroom sentry

execute at @a[scores={char=59,MoldBuildings=1,spores=..4}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
execute as @a[scores={char=59,MoldBuildings=1,spores=5..}] at @s run summon wither_skeleton ~ ~0.5 ~ {Silent:1b,Health:20.0f,Tags:["MoldStructure","Mold_Sentry","entities_redmold","valid_spell_target"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":6164753},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":8001046},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":4007203},count:1},head:{id:"minecraft:dispenser",count:1}}}
scoreboard players remove @a[scores={char=59,MoldBuildings=1,spores=5..}] spores 5

execute at @a[scores={char=59}] as @e[tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run tag @s add mold_sentry_valid_target
execute at @a[scores={char=59}] as @e[tag=valid_spell_target] if score @s Team = @p[scores={char=59}] Team run tag @s remove mold_sentry_valid_target


execute at @e[tag=Mold_Sentry] unless entity @e[tag=SentryVisuals_1,distance=..1] run summon block_display ~ ~1 ~ {Tags:["SentryVisuals_1","SentryVisuals","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1.4,0.2,1.4],translation:[-.7,-.1,-.7]},block_state:{Name:"nether_bricks"}}
execute at @e[tag=Mold_Sentry] unless entity @e[tag=SentryVisuals_2,distance=..1] run summon block_display ~ ~1 ~ {Tags:["SentryVisuals_2","SentryVisuals","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.8,.4,0.8],translation:[-.4,-.2,-.4]},block_state:{Name:"netherrack"}}
execute at @e[tag=Mold_Sentry] unless entity @e[tag=SentryVisuals_3,distance=..1] run summon block_display ~ ~1 ~ {Tags:["SentryVisuals_3","SentryVisuals","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.8,.3,0.8],translation:[-.4,-.15,-.4]},block_state:{Name:"netherrack"}}
execute at @e[tag=Mold_Sentry] unless entity @e[tag=SentryVisuals_4,distance=..1] run summon block_display ~ ~1 ~ {Tags:["SentryVisuals_4","SentryVisuals","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.3,1.0,0.3],translation:[-.15,-.5,-.15]},block_state:{Name:"nether_wart_block"}}
execute at @e[tag=Mold_Sentry] unless entity @e[tag=SentryVisuals_5,distance=..1] run summon block_display ~ ~1 ~ {Tags:["SentryVisuals_5","SentryVisuals","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.3,1.5,0.3],translation:[-.15,-.75,-.15]},block_state:{Name:"nether_wart_block"}}

execute at @e[tag=Mold_Sentry] run tp @e[tag=SentryVisuals_1,distance=..1] ~ ~0.1 ~
execute at @e[tag=Mold_Sentry] run tp @e[tag=SentryVisuals_2,distance=..1] ~-0.1 ~0.4 ~-0.1
execute at @e[tag=Mold_Sentry] run tp @e[tag=SentryVisuals_3,distance=..1] ~0.2 ~0.3 ~0.2
execute at @e[tag=Mold_Sentry] run tp @e[tag=SentryVisuals_4,distance=..1] ~-0.2 ~0.5 ~0.2
execute at @e[tag=Mold_Sentry] run tp @e[tag=SentryVisuals_5,distance=..1] ~0.3 ~0.5 ~-0.3

execute as @e[tag=SentryVisuals] at @s unless entity @e[tag=Mold_Sentry,distance=..1] run playsound block.nether_wart.break master @a[distance=..12] ~ ~ ~ 1 0.1 1
execute as @e[tag=SentryVisuals] at @s unless entity @e[tag=Mold_Sentry,distance=..1] run particle block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~ ~ 0.5 0.8 0.5 0.1 150
execute as @e[tag=SentryVisuals] at @s unless entity @e[tag=Mold_Sentry,distance=..1] run kill @s



execute as @e[tag=Mold_Sentry] at @s run rotate @s facing entity @e[tag=mold_sentry_valid_target,distance=..15,limit=1,sort=nearest]
execute as @e[tag=Mold_Sentry] at @s if entity @e[tag=mold_sentry_valid_target,tag=valid_spell_target,distance=..15] run scoreboard players add @s spores 1



scoreboard players add @e[tag=Mold_Sentry_projectile] spores 1
execute at @e[tag=Mold_Sentry,scores={spores=15..}] run playsound entity.snow_golem.shoot master @a[distance=..12] ~ ~ ~ 0.5 0.8 1
execute at @e[tag=Mold_Sentry,scores={spores=15..}] run playsound block.nether_wart.break master @a[distance=..12] ~ ~ ~ 1 0.1 1
execute at @e[tag=Mold_Sentry,scores={spores=15..}] run summon item_display ~ ~1.5 ~ {Tags:["Mold_Sentry_projectile","MoldProjectile","entities_redmold"],teleport_duration:1,item:{id:"minecraft:nether_wart",count:1}}

execute as @e[tag=Mold_Sentry_projectile,scores={spores=1}] at @s rotated as @n[tag=Mold_Sentry] run rotate @s ~ ~
execute as @e[tag=Mold_Sentry_projectile] at @s run tp @s ^ ^ ^0.6
execute at @e[tag=Mold_Sentry_projectile] run particle block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~ ~ 0.1 0.1 0.1 0.1 2

execute at @e[tag=Mold_Sentry_projectile] positioned ~-.75 ~-.75 ~-.75 as @e[dx=.5,dy=.5,dz=.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run damage @s 3 player_attack by @n[tag=Mold_Sentry] from @p[scores={char=59}]
execute at @e[tag=Mold_Sentry_projectile] positioned ~-.75 ~-.75 ~-.75 as @e[dx=.5,dy=.5,dz=.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run kill @n[tag=Mold_Sentry_projectile]

scoreboard players set @e[tag=Mold_Sentry,scores={spores=15..}] spores 1
kill @e[tag=Mold_Sentry_projectile,scores={spores=30..}]


# mortar
execute at @a[scores={char=59,MoldBuildings=2,spores=..5}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
execute as @a[scores={char=59,MoldBuildings=2,spores=6..}] at @s run summon block_display ~ ~1 ~ {Tags:["Mold_Ravager_projectile","MoldProjectile","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[.5,.5,.5],translation:[-.25,-.25,-.25]},block_state:{Name:"netherrack"}}
scoreboard players remove @a[scores={char=59,MoldBuildings=2,spores=6..}] spores 6

#summon block_display ~ ~1 ~ {Tags:["Mold_Ravager_projectile","MoldProjectile","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[.5,.5,.5],translation:[-.25,-.25,-.25]},block_state:{Name:"netherrack"}}


scoreboard players add @e[tag=Mold_Ravager_projectile] spores 1

execute as @e[tag=Mold_Ravager_projectile,scores={spores=1}] at @s rotated as @n[scores={char=59}] run rotate @s ~ ~
execute as @e[tag=Mold_Ravager_projectile,scores={spores=1},x_rotation=44..90] at @s run tp @s ~ ~ ~ ~ 45
execute as @e[tag=Mold_Ravager_projectile,scores={spores=1..20}] at @s run tp @s ^ ^0.4 ^0.2
execute as @e[tag=Mold_Ravager_projectile,scores={spores=21..30}] at @s run tp @s ^ ^ ^0.3
execute as @e[tag=Mold_Ravager_projectile,scores={spores=21..30}] at @s run tp @s ~ ~-0.3 ~
execute as @e[tag=Mold_Ravager_projectile,scores={spores=31..}] at @s run tp @s ^ ^ ^0.3
execute as @e[tag=Mold_Ravager_projectile,scores={spores=31..}] at @s run tp @s ~ ~-0.5 ~
execute as @e[tag=Mold_Ravager_projectile,scores={spores=40..}] at @s run tp @s ~ ~-0.6 ~
execute as @e[tag=Mold_Ravager_projectile] run particle falling_dust{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~ ~ 0.2 0.2 0.2 0.1 1

execute at @e[tag=Mold_Ravager_projectile] run particle block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~ ~ 1 1 1 1 10
execute at @e[tag=Mold_Ravager_projectile] run particle crimson_spore ~ ~ ~ 0.5 0.5 0.5 0.5 30
execute at @e[tag=Mold_Ravager_projectile] run playsound block.nether_wart.break master @a[distance=..15] ~ ~ ~ 0.3 2 1

execute at @e[tag=Mold_Ravager_projectile] unless block ~ ~ ~ #minecraft:dash run summon marker ~ ~1 ~ {Tags:["RavagerBoom","MoldProjectile","entities_redmold"]}

execute at @e[tag=RavagerBoom] run kill @e[tag=Mold_Ravager_projectile]
execute at @e[tag=RavagerBoom] run playsound minecraft:entity.dragon_fireball.explode master @a[distance=..16] ~ ~ ~ 1 2 1
execute at @e[tag=RavagerBoom] run playsound minecraft:entity.dragon_fireball.explode master @a[distance=..16] ~ ~ ~ 1 2 1
execute at @e[tag=RavagerBoom] run particle explosion ~ ~ ~ 3 0.5 3 1 20
execute at @e[tag=RavagerBoom] run particle crimson_spore ~ ~ ~ 4 0.5 4 1 100
execute at @e[tag=RavagerBoom] run particle crimson_spore ~ ~ ~ 2 0.1 2 0.1 1000
execute at @e[tag=RavagerBoom] run particle block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~ ~ 3 1 3 1 100
execute at @e[tag=RavagerBoom] as @e[distance=..6,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run damage @s 8 player_attack by @n[tag=RavagerBoom] from @p[scores={char=59}]

kill @e[tag=RavagerBoom]

scoreboard players set @e[tag=Mold_Ravager,scores={spores=80..}] spores 1
kill @e[tag=Mold_Ravager_projectile,scores={spores=60..}]


# crumbling ground

execute at @a[scores={char=59,MoldBuildings=5,spores=..1}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
execute as @a[scores={char=59,MoldBuildings=5,spores=2..}] at @s run summon marker ~ ~ ~ {Tags:["MoldStructure","projectile","Mold_Ground","entities_redmold"]}
scoreboard players remove @a[scores={char=59,MoldBuildings=5,spores=3..}] spores 2


tp @e[tag=Mold_Ground,limit=1] @a[scores={char=59,MoldBuildings=5},limit=1]
execute store result entity @e[tag=Mold_Ground,limit=1] Rotation[1] float 1 run clear


execute at @e[tag=Mold_Ground] run particle block{block_state:{Name:"minecraft:hanging_roots"}} ~ ~ ~ 1 0.1 1 0.01 25
execute at @e[tag=Mold_Ground] run particle block{block_state:{Name:"minecraft:red_nether_bricks"}} ~ ~ ~ 1 0.3 1 0.01 10

execute at @e[tag=Mold_Ground] run playsound block.nether_bricks.break master @a[distance=..10] ~ ~ ~ 0.2 0.8 1
execute as @e[tag=Mold_Ground] at @s run tp @s ^ ^ ^0.35
execute at @e[tag=Mold_Ground] positioned ~-0.75 ~-1 ~-0.75 as @e[dx=0.5,dy=1,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run tag @s add mold_loged

effect give @e[tag=mold_loged] slowness 1 0
execute as @e[tag=mold_loged] run damage @s 1 mace_smash by @p[scores={char=59}] from @p[scores={char=59}]
tag @e remove mold_loged

execute as @e[tag=Mold_Ground] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=Mold_Ground] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~0.8 ~
execute as @e[tag=Mold_Ground] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=Mold_Ground] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~


# hunger of the mold

execute at @a[scores={char=59,MoldBuildings=6,spores=..3}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
execute as @a[scores={char=59,MoldBuildings=6,spores=4..}] at @s run summon marker ~ ~ ~ {Tags:["MoldStructure","Mold_Hunger","entities_redmold"]}
scoreboard players remove @a[scores={char=59,MoldBuildings=6,spores=4..}] spores 4

execute at @e[tag=Mold_Hunger] run playsound block.nether_wart.break master @a[distance=..12] ~ ~ ~ 0.1 0.5 1

execute at @e[tag=Mold_Hunger] as @e[tag=MoldHost,distance=..6] run effect give @s speed 1
execute at @e[tag=Mold_Hunger] as @e[tag=MoldHost,distance=..6] run attribute @s attack_damage modifier add mold_hunger_buff 2 add_multiplied_total
execute at @e[tag=Mold_Hunger] as @e[tag=MoldHost,distance=6.1..] run attribute @s attack_damage modifier remove mold_hunger_buff
execute at @e[tag=Mold_Hunger] as @e[distance=..6,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run scoreboard players set @s CC_defiled 10

execute as @e[tag=Mold_Hunger] at @s run rotate @s ~6 ~
execute as @e[tag=Mold_Hunger] at @s run particle dust{color:[.752,.25,0],scale:1} ^ ^ ^6 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Hunger] at @s run particle dust{color:[.752,.25,0],scale:1} ^ ^ ^-6 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Hunger] at @s run particle dust{color:[.752,.25,0],scale:1} ^6 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Hunger] at @s run particle dust{color:[.752,.25,0],scale:1} ^-6 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Hunger] at @s run particle dust{color:[.752,.25,0],scale:1} ^4 ^ ^4 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Hunger] at @s run particle dust{color:[.752,.25,0],scale:1} ^-4 ^ ^-4 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Hunger] at @s run particle dust{color:[.752,.25,0],scale:1} ^4 ^ ^-4 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Hunger] at @s run particle dust{color:[.752,.25,0],scale:1} ^-4 ^ ^4 0.1 0.2 0.1 0 10
execute at @e[tag=Mold_Hunger] run particle block{block_state:{Name:"minecraft:nether_wart"}} ~ ~ ~ 5 0.5 5 0.01 80
execute at @e[tag=Mold_Hunger] run particle crimson_spore ~ ~ ~ 3 0.2 3 0.1 10

scoreboard players set @a[scores={char=59,MoldBuildings=1..}] MoldBuildings 0

# ========================================================================================================================================================================================================================================================================================================
#s2 twisted army ========================================================================================================================================================================================================================================================================================================
# ========================================================================================================================================================================================================================================================================================================

scoreboard players set @a[scores={char=59,s2_timer=1}] s2_timer_recast 1
scoreboard players set @a[scores={char=59,s2_timer=1}] s2_timer 0

scoreboard players enable @a[scores={char=59,s2_timer_recast=1..}] MoldMinions

dialog show @a[scores={char=59,s2_timer_recast=1..}] {type:multi_action,title:"",actions:[{label:[{text:"Consumed Brute",color:red},{text:" (4)",color:dark_red,bold:1b}],tooltip:[{text:"================\n",color:"dark_red",type:"text"},{text:"HP: ",color:"gray",type:"text"},{text:"16",color:"red",type:"text"},{text:" | ",color:"dark_red",type:"text"},{text:"Lifetime: ",color:"gray",type:"text"},{text:"15s",color:"red",type:"text"},{text:"\nCreate two melee Brutes who deal ",color:"gray",type:"text"},{text:"4 damage",color:"red",type:"text"},{text:" and ",color:"gray",type:"text"},{text:"slow",color:"light_purple",type:"text"},{text:" enemy players hit by ",color:"gray",type:"text"},{text:"30%",color:"light_purple",type:"text"},{text:" for 1 second.\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}],action:{type:run_command,command:"/trigger MoldMinions set 1"}},{label:[{text:"Gorged Slayer",color:red},{text:" (3) ",color:dark_red,bold:1b}],tooltip:[{text:"================\n",color:"dark_red",type:"text"},{text:"HP:",color:"gray",type:"text"},{text:" 12",color:"red",type:"text"},{text:" | ",color:"dark_red",type:"text"},{text:"Lifetime: ",color:"gray",type:"text"},{text:"25s",color:"red",type:"text"},{text:"\nSummon a fragile Slayer, which fires fast projectiles at the closest enemy every 4 seconds, dealing ",color:"gray",type:"text"},{text:"3 damage",color:"red",type:"text"},{text:" + ",color:"gray",type:"text"},{text:"1",color:"red",type:"text"},{text:" per every ",color:"gray",type:"text"},{text:"10% of missing health",color:"red",type:"text"},{text:".\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}],action:{type:run_command,command:"/trigger MoldMinions set 2"}},{label:[{text:"Devoured Healer",color:red},{text:" (5)",color:dark_red,bold:1b}],tooltip:[{text:"================\n",color:"dark_red",type:"text"},{text:"HP:",color:"gray",type:"text"},{text:" 18",color:"red",type:"text"},{text:" | ",color:"dark_red",type:"text"},{text:"Lifetime: ",color:"gray",type:"text"},{text:"30s",color:"red",type:"text"},{text:"\nBring forth a delicate but long-lasting Healer. Every 5 seconds it",color:"gray",type:"text"},{text:" heals ",color:"green",type:"text"},{text:"all Mold Hosts within a 10 block range by",color:"gray",type:"text"},{text:" 4 health",color:"green",type:"text"},{text:" and increases their Lifetime by 4 seconds (excluding other Devoured Healers). It does not attack enemies.\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}],action:{type:run_command,command:"/trigger MoldMinions set 3"}},{label:[{text:"Ravaged Knight",color:red},{text:" (8)",color:dark_red,bold:1b}],tooltip:[{text:"================\n",color:"dark_red",type:"text"},{text:"HP:",color:"gray",type:"text"},{text:" 30",color:"red",type:"text"},{text:" | ",color:"dark_red",type:"text"},{text:"Lifetime: ",color:"gray",type:"text"},{text:"40s",color:"red",type:"text"},{text:"\nRaise a slow but powerful Knight. It's attacks deal ",color:"gray",type:"text"},{text:"8 damage",color:"red",type:"text"},{text:", and when within 4 blocks from an enemy it begins to charge a slam attack, which ",color:"gray",type:"text"},{text:"stuns",color:"light_purple",type:"text"},{text:" all enemies within 4 blocks for 1 second. Charging takes it 8 seconds.\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}],action:{type:run_command,command:"/trigger MoldMinions set 4"}}],pause:false,can_close_with_escape:true,body:{type:"plain_message",contents:["",{text:"\n\n=======",bold:true,color:dark_red,strikethrough:true},{text:" Twisted Army ",bold:true,color:red},{text:"=======",bold:true,color:dark_red,strikethrough:true}],width:350},columns:1}

scoreboard players set @a[scores={char=59,s2_timer_recast=1..}] s2_timer_recast 0

scoreboard players set @a[scores={char=59,MoldMinions=1..}] s2_timer 1

execute at @e[tag=MoldHost] run particle crimson_spore ~ ~1 ~ 0.3 0.5 0.3 0.01 1
execute at @e[tag=MoldHost] run particle block{block_state:{Name:"minecraft:nether_wart"}} ~ ~1 ~ 0.3 0.8 0.3 0.1 1
execute at @e[tag=marked_host] run particle happy_villager ~ ~ ~ 0.5 0.2 0.5 0.1 1
execute at @e[tag=mold_mage_projectile] run particle block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~ ~ 0.2 0.2 0.2 0.1 5

scoreboard players add @e[tag=MoldHost] SummonAge 1

kill @e[tag=Mold_Brute,scores={SummonAge=300..}]
kill @e[tag=Mold_Mage,scores={SummonAge=500..}]
kill @e[tag=Mold_Healer,scores={SummonAge=600..}]
kill @e[tag=Mold_Knight,scores={SummonAge=800..}]
kill @e[tag=Mold_Runner,scores={SummonAge=100..}]

# brute

execute at @a[scores={char=59,MoldMinions=1,spores=..3}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
execute as @a[scores={char=59,MoldMinions=1,spores=4..}] at @s run summon husk ^0.5 ^ ^ {CustomName:[{"text":"Consumed Brute"}],CustomNameVisible:1,Health:16.0f,IsBaby:0b,Tags:["summon","MoldHost","Mold_Brute","entities_redmold","valid_spell_target"],attributes:[{id:"minecraft:attack_damage",base:4},{id:"minecraft:knockback_resistance",base:0.2},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.25}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":11881548},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":11881548,"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:rib"}},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":14548992,"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:silence"}},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmFmMjdiNTg1NTA4YWRiNTA5MDRkY2QxMDY1Nzc1ZjNiODMwMjlhOThiZTkyZTk4ZDMwMWJhMzdlNDRkZDM4NCJ9fX0="}]}},count:1}}}
execute as @a[scores={char=59,MoldMinions=1,spores=4..}] at @s run summon husk ^-0.5 ^ ^ {CustomName:[{"text":"Consumed Brute"}],CustomNameVisible:1,Health:16.0f,IsBaby:0b,Tags:["summon","MoldHost","Mold_Brute","entities_redmold","valid_spell_target"],attributes:[{id:"minecraft:attack_damage",base:4},{id:"minecraft:knockback_resistance",base:0.2},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.25}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":11881548},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":11881548,"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:rib"}},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":14548992,"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:silence"}},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmFmMjdiNTg1NTA4YWRiNTA5MDRkY2QxMDY1Nzc1ZjNiODMwMjlhOThiZTkyZTk4ZDMwMWJhMzdlNDRkZDM4NCJ9fX0="}]}},count:1}}}
scoreboard players remove @a[scores={char=59,MoldMinions=1,spores=4..}] spores 4

effect give @a[advancements={chars:redmold_brute_slow=true}] slowness 1 1
advancement revoke @a[advancements={chars:redmold_brute_slow=true}] only chars:redmold_brute_slow

# slayer

execute at @a[scores={char=59,MoldMinions=2,spores=..2}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
execute as @a[scores={char=59,MoldMinions=2,spores=3..}] at @s run summon skeleton ^ ^ ^ {CustomName:[{"text":"Gorged Slayer"}],CustomNameVisible:1,Health:12.0f,Tags:["summon","MoldHost","Mold_Mage","entities_redmold","valid_spell_target"],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:max_health",base:12},{id:"minecraft:movement_speed",base:0.2}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":5707286},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":6164239},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":4532261},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;2048267317,-2065349005,-1862281771,-1072678910],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2E1Nzc1ZWFiYmJmODFmOGE5ZTNmYjE0MGZiN2RjYjBlNjhjNWIyZDAyZTEwYjEwNDM1NjQxMjU0OTRmMWEyZiJ9fX0="}]}},count:1}}}

scoreboard players remove @a[scores={char=59,MoldMinions=2,spores=3..}] spores 3

scoreboard players add @e[tag=Mold_Mage] spores 1
scoreboard players add @e[tag=mold_mage_projectile] spores 1


execute at @e[tag=Mold_Mage,scores={spores=80..}] run playsound entity.zombie.infect master @a[distance=..12] ~ ~ ~ 1 0.1 1
execute at @e[tag=Mold_Mage,scores={spores=80..}] run playsound entity.evoker.cast_spell master @a[distance=..12] ~ ~ ~ 0.5 0.8 1
execute at @e[tag=Mold_Mage,scores={spores=80..}] run playsound block.nether_wart.break master @a[distance=..12] ~ ~ ~ 1 0.1 1
execute at @e[tag=Mold_Mage,scores={spores=80..}] run summon block_display ~ ~1 ~ {Tags:["mold_mage_projectile","MoldProjectile","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[.5,.5,.5],translation:[-.25,-.25,-.25]},block_state:{Name:"red_stained_glass"}}

execute at @e[tag=Mold_Mage] as @e[distance=0.1..20,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run tag @s add mold_slayer_valid_target
execute at @e[tag=Mold_Mage] as @e[distance=20.1..,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run tag @s remove mold_slayer_valid_target
execute unless entity @e[tag=Mold_Mage] run tag @e remove mold_slayer_valid_target

execute as @e[tag=mold_mage_projectile,scores={spores=1..2}] at @s run tp @s ~ ~ ~ facing entity @n[tag=mold_slayer_valid_target] eyes

#execute as @e[tag=mold_mage_projectile,scores={spores=1..2}] at @s rotated as @n[tag=Mold_Mage] run rotate @s ~ ~
execute as @e[tag=mold_mage_projectile] at @s run tp @s ^ ^ ^0.3
execute as @e[tag=mold_mage_projectile] at @s run tp @s ^ ^ ^0.3
execute as @e[tag=mold_mage_projectile] at @s run tp @s ^ ^ ^0.3

execute at @e[tag=mold_mage_projectile] positioned ~-.75 ~-.75 ~-.75 as @e[dx=.5,dy=.5,dz=.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run tag @s add mold_slayed

damage @e[tag=mold_slayed,scores={HPercentage=90..},limit=1] 3 dragon_breath by @n[tag=mold_mage_projectile] from @p[scores={char=59}]
damage @e[tag=mold_slayed,scores={HPercentage=80..89},limit=1] 4 dragon_breath by @n[tag=mold_mage_projectile] from @p[scores={char=59}]
damage @e[tag=mold_slayed,scores={HPercentage=70..79},limit=1] 5 dragon_breath by @n[tag=mold_mage_projectile] from @p[scores={char=59}]
damage @e[tag=mold_slayed,scores={HPercentage=60..69},limit=1] 6 dragon_breath by @n[tag=mold_mage_projectile] from @p[scores={char=59}]
damage @e[tag=mold_slayed,scores={HPercentage=50..59},limit=1] 7 dragon_breath by @n[tag=mold_mage_projectile] from @p[scores={char=59}]
damage @e[tag=mold_slayed,scores={HPercentage=40..49},limit=1] 8 dragon_breath by @n[tag=mold_mage_projectile] from @p[scores={char=59}]
damage @e[tag=mold_slayed,scores={HPercentage=30..39},limit=1] 9 dragon_breath by @n[tag=mold_mage_projectile] from @p[scores={char=59}]
damage @e[tag=mold_slayed,scores={HPercentage=20..29},limit=1] 10 dragon_breath by @n[tag=mold_mage_projectile] from @p[scores={char=59}]
damage @e[tag=mold_slayed,scores={HPercentage=10..19},limit=1] 11 dragon_breath by @n[tag=mold_mage_projectile] from @p[scores={char=59}]
damage @e[tag=mold_slayed,scores={HPercentage=..9},limit=1] 12 dragon_breath by @n[tag=mold_mage_projectile] from @p[scores={char=59}]
execute at @e[tag=mold_slayed] run kill @n[tag=mold_mage_projectile]
tag @e remove mold_slayed

scoreboard players set @e[tag=Mold_Mage,scores={spores=80..}] spores 1
kill @e[tag=mold_mage_projectile,scores={spores=60..}]



# healer

execute at @a[scores={char=59,MoldMinions=3,spores=..4}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
execute as @a[scores={char=59,MoldMinions=3,spores=5..}] at @s run summon zombified_piglin ^ ^ ^ {CustomName:[{"text":"Devoured Healer"}],CustomNameVisible:1,Health:18.0f,NoAI:1,IsBaby:0b,Tags:["summon","MoldHost","Mold_Healer","entities_redmold","valid_spell_target"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:0,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:1},{id:"minecraft:knockback_resistance",base:0.2},{id:"minecraft:max_health",base:18},{id:"minecraft:movement_speed",base:0.15}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":16764100},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":16764100},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":7340051},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTc5ODc4ZDdjOWMwMDk0MGExM2Y1ZjliMzI3MWQ5OTcwZmYxYTEyZGQxYzViN2Y4Zjg3OGQwOGZhNjYwNzY4ZSJ9fX0="}]}},count:1}}}
execute as @a[scores={char=59,MoldMinions=3,spores=5..}] at @s run scoreboard players set @n[tag=Mold_Healer] undead_animaton 0
scoreboard players remove @a[scores={char=59,MoldMinions=3,spores=5..}] spores 5

execute as @e[tag=Mold_Healer] at @s unless entity @n[tag=Mold_Healer_circle,distance=..1] run summon marker ~ ~ ~ {Tags:["Mold_Healer_circle","entities_redmold"]}
execute as @e[tag=Mold_Healer] at @s run tp @n[tag=Mold_Healer_circle,distance=..1] ~ ~ ~
execute as @e[tag=Mold_Healer_circle] at @s unless entity @n[tag=Mold_Healer,distance=..1] run kill @s

execute as @e[tag=Mold_Healer,scores={undead_animaton=0}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~0.8 ~
execute as @e[tag=Mold_Healer,scores={undead_animaton=0}] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=Mold_Healer,scores={undead_animaton=0}] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

scoreboard players add @e[tag=Mold_Healer] spores 1

#execute as @e[tag=Mold_Healer] at @s as @e[distance=..8,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run rotate @n[tag=Mold_Healer] facing entity @s
execute as @e[tag=Mold_Healer] run rotate @s facing entity @n[distance=0.5..,tag=valid_spell_target]


execute as @e[tag=Mold_Healer_circle] at @s run rotate @s ~3 ~
execute as @e[tag=Mold_Healer_circle] at @s run particle dust{color:[1.0,0.33,0.33],scale:1} ^ ^ ^10 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Healer_circle] at @s run particle dust{color:[1.0,0.33,0.33],scale:1} ^ ^ ^-10 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Healer_circle] at @s run particle dust{color:[1.0,0.33,0.33],scale:1} ^10 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Healer_circle] at @s run particle dust{color:[1.0,0.33,0.33],scale:1} ^-10 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Healer_circle] at @s run particle dust{color:[0.88,0.06,0.35],scale:1} ^7.5 ^ ^7.5 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Healer_circle] at @s run particle dust{color:[0.88,0.06,0.35],scale:1} ^-7.5 ^ ^-7.5 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Healer_circle] at @s run particle dust{color:[0.88,0.06,0.35],scale:1} ^7.5 ^ ^-7.5 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Healer_circle] at @s run particle dust{color:[0.88,0.06,0.35],scale:1} ^-7.5 ^ ^7.5 0.1 0.2 0.1 0 10

execute at @e[tag=Mold_Healer,scores={spores=100..}] run playsound entity.zombie.infect master @a[distance=..12] ~ ~ ~ 1 0.1 1
execute at @e[tag=Mold_Healer,scores={spores=100..}] run playsound block.nether_wart.break master @a[distance=..12] ~ ~ ~ 1 0.1 1
execute at @e[tag=Mold_Healer,scores={spores=100..}] at @e[distance=0.5..10,tag=MoldHost] run particle block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~1.5 ~ 0.9 0.6 0.9 0.01 20 force
execute at @e[tag=Mold_Healer,scores={spores=100..}] at @e[distance=0.5..10,tag=MoldHost] run particle crimson_spore ~ ~1.5 ~ 0.9 0.6 0.9 0.00001 20 force
execute at @e[tag=Mold_Healer,scores={spores=100..}] run effect give @e[distance=0.5..10,tag=MoldHost] instant_damage
execute at @e[tag=Mold_Healer,scores={spores=100..}] run scoreboard players remove @e[distance=0.5..10,tag=MoldHost,tag=!Mold_Healer] SummonAge 80

scoreboard players set @e[tag=Mold_Healer,scores={spores=100..}] spores 1

# knight

execute at @a[scores={char=59,MoldMinions=4,spores=..7}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
execute as @a[scores={char=59,MoldMinions=4,spores=8..}] at @s run summon husk ^ ^ ^ {CustomName:[{"text":"Ravaged Knight"}],CustomNameVisible:1,Health:30.0f,IsBaby:0b,Tags:["summon","MoldHost","Mold_Knight","entities_redmold","valid_spell_target"],attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.2}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":10554894},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":10554894},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":2631480},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-715510116,1972850668,-1159482191,-631006333],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzU3NWFhZjc0ZDlkYjA3ODdmMjAwMzM0ZjU3YTUzMjUwZDlhNzQ5ZTU0ZTU5NWY4M2JkYTBkNWNhZGNiNWI1MCJ9fX0="}]}},count:1}}}
scoreboard players remove @a[scores={char=59,MoldMinions=4,spores=8..}] spores 8

execute at @e[tag=Mold_Knight] as @e[tag=valid_spell_target,distance=..4] unless score @s Team = @p[scores={char=59}] Team run scoreboard players add @n[tag=Mold_Knight] spores 1

execute at @e[tag=Mold_Knight,scores={spores=160..}] run particle sweep_attack ~ ~1 ~ 2 0.5 2 0.1 30
execute at @e[tag=Mold_Knight,scores={spores=160..}] run particle falling_dust{block_state:{Name:"minecraft:nether_wart"}} ~ ~1 ~ 2 0.5 2 0.1 10
execute at @e[tag=Mold_Knight,scores={spores=160..}] run playsound entity.husk.hurt master @a[distance=..8] ~ ~ ~ 1 0.8 1
execute at @e[tag=Mold_Knight,scores={spores=160..}] as @e[tag=valid_spell_target,distance=..4] unless score @s Team = @p[scores={char=59}] Team run scoreboard players set @s CC_stun 20

scoreboard players set @e[tag=Mold_Knight,scores={spores=160..}] spores 1

# runner

execute at @a[scores={char=59,MoldMinions=5,spores=..0}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
execute as @a[scores={char=59,MoldMinions=5,spores=1..}] at @s run summon husk ^ ^ ^ {Health:16.0f,IsBaby:1b,Tags:["MoldHost","Mold_Runner","entities_redmold","valid_spell_target"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:19999980,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.3}],equipment:{chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":14548992},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1786004301,-1930670662,-1498883828,1723512729],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmFmMjdiNTg1NTA4YWRiNTA5MDRkY2QxMDY1Nzc1ZjNiODMwMjlhOThiZTkyZTk4ZDMwMWJhMzdlNDRkZDM4NCJ9fX0="}]}},count:1}}}
scoreboard players remove @a[scores={char=59,MoldMinions=5,spores=1..}] spores 1

execute at @e[tag=Mold_Runner] as @e[tag=valid_spell_target,distance=0.5..1.5] unless score @s Team = @p[scores={char=59}] Team run summon marker ~ ~ ~ {Tags:["runner_boom","entities_redmold"]}

execute at @e[tag=runner_boom] run playsound entity.strider.death master @a[distance=..10] ~ ~ ~ 0.5 1.8 1
execute at @e[tag=runner_boom] run tp @e[tag=Mold_Runner] ~ ~-100 ~
execute at @e[tag=runner_boom] run kill @e[tag=Mold_Runner]
execute at @e[tag=runner_boom] run particle crimson_spore ~ ~ ~ 2 2 2 0.1 600
execute at @e[tag=runner_boom] run particle explosion ~ ~ ~ 1 1 1 0 4
execute at @e[tag=runner_boom] as @e[distance=..3,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run effect give @s slowness 2 2
execute at @e[tag=runner_boom] as @e[distance=..3,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run damage @s 4 generic by @p[scores={char=59}] from @p[scores={char=59}]

kill @e[tag=runner_boom]


scoreboard players set @a[scores={char=59,MoldMinions=1..}] MoldMinions 0

# red mold

#scoreboard players set @a[scores={s0_timer=1,char=59}] spellCD0 100
scoreboard players add @a[scores={s0_timer=1..,char=59}] s0_timer 1
scoreboard players set @a[scores={s0_timer=101..,char=59}] s0_timer 0

scoreboard players set @a[scores={s1_timer=1,char=59}] spellCD1 40
scoreboard players add @a[scores={s1_timer=1..,char=59}] s1_timer 1
scoreboard players set @a[scores={s1_timer=40..,char=59}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=59}] spellCD2 40
scoreboard players add @a[scores={s2_timer=1..,char=59}] s2_timer 1
scoreboard players set @a[scores={s2_timer=40..,char=59}] s2_timer 0


execute as @a[scores={char=59,s0_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:0b}]}] run clear @a[scores={char=59}] warped_fungus_on_a_stick[custom_data={s0:1}]
item replace entity @a[scores={char=59,s0_timer=0}] hotbar.0 with warped_fungus_on_a_stick[minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Command and Control"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:1.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1,custom_data={s0:1}] 1

execute as @a[scores={char=59,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=59}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=59,s1_timer=0}] hotbar.1 with carrot_on_a_stick[minecraft:custom_name={text:"Warped Tactics",color:"dark_aqua",bold:1b},custom_data={s1:1},item_model=crimson_fungus] 1

execute as @a[scores={char=59,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=59}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=59,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[minecraft:custom_name={text:"Twisted Army",color:"dark_aqua",bold:1b},custom_data={s2:1},item_model=nether_wart] 1