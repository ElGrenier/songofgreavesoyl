

#passives

#effects

tag @a[scores={char=59}] add the_mold
effect give @a[scores={char=59}] invisibility infinite 0 true
effect give @a[scores={char=59}] weakness infinite 100 true
effect give @a[scores={char=59}] resistance infinite 100 true
scoreboard players set @a[scores={char=59}] CC_intangible 200


execute at @a[scores={char=59},team=purple] run team join purple @e[tag=MoldHost]
execute at @a[scores={char=59},team=yellow] run team join yellow @e[tag=MoldHost]
execute at @a[scores={char=59},team=purple] run team join purple @e[tag=MoldStructure]
execute at @a[scores={char=59},team=yellow] run team join yellow @e[tag=MoldStructure]

execute as @e[tag=MoldProjectile] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=MoldProjectile] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=MoldProjectile] at @s unless block ^ ^ ^0.5 #minecraft:dash run kill @s

execute as @a[scores={char=59,s0_timer=1,universal_sneak=0}] at @s positioned ~ ~1.5 ~ run function chars:mold_raycast
scoreboard players set @a[scores={char=59,s0_timer=1,universal_sneak=0}] s0_timer 0
execute as @a[scores={char=59,s0_timer=1,universal_sneak=1..}] at @s positioned ~ ~1.5 ~ run function chars:mold_raycast_command
execute at @a[scores={char=59,s0_timer=1,universal_sneak=1..}] run scoreboard players set @e[tag=marked_host] undead_animaton 1

#spores

execute as @a[scores={char=59}] run title @s[scores={char=59}] actionbar [{text:"[",bold:1b,color:"dark_red",type:"text"},{text:" Spores: ",color:"gray",bold:0b,type:"text"},{score:{name:"@s",objective:"spores"},color:"red",bold:0b,type:"score"},{text:"/",color:"dark_red",bold:1b,type:"text"},{text:"10",color:"red",bold:0b,type:"text"},{text:"]",bold:1b,color:"dark_red",type:"text"}]

scoreboard players add @a[scores={char=59,spores=..9}] spores_timer 1
scoreboard players add @a[scores={char=59,spores=..9,spores_timer=70}] spores 1
scoreboard players set @a[scores={spores_timer=70..,spores=..9}] spores_timer 0


#target points


execute at @e[tag=mold_target_point] run particle crimson_spore ~ ~ ~ 1 1 1 0.01 40
execute at @e[tag=mold_target_point] run particle block{block_state:{Name:"minecraft:nether_wart"}} ~ ~ ~ 1 0.5 1 0.1 10
execute at @e[tag=mold_target_point] run particle block{block_state:{Name:"minecraft:dirt"}} ~ ~ ~ 1 0.2 1 0.1 10
execute at @e[tag=mold_target_point] run particle block{block_state:{Name:"minecraft:stripped_mangrove_wood"}} ~ ~ ~ 1 0.2 1 0.1 10
scoreboard players add @e[tag=mold_target_point] spores 1

kill @e[tag=mold_target_point,scores={spores=42..}]

scoreboard players add @e[tag=marked_host,scores={undead_animaton=..20}] undead_animaton 1
execute as @e[tag=marked_host,scores={undead_animaton=1..10}] at @s run tp @s ~ ~-0.3 ~

execute as @e[tag=marked_host,scores={undead_animaton=1..2}] run data merge entity @s {NoAI:1b,Invulnerable:1b}
execute at @e[tag=marked_host,scores={undead_animaton=1..15}] run particle crimson_spore ~ ~ ~ 0.5 1 0.5 0.01 1
execute at @e[tag=marked_host,scores={undead_animaton=1..15}] run particle falling_dust{block_state:{Name:"minecraft:nether_wart"}} ~ ~ ~ 0.8 1 0.8 1 10
execute at @e[tag=marked_host,scores={undead_animaton=5}] run playsound block.nether_wart.break master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @e[tag=marked_host,scores={undead_animaton=10}] run playsound block.nether_wart.break master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @e[tag=marked_host,scores={undead_animaton=15}] run playsound block.nether_wart.break master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @e[tag=marked_host,scores={undead_animaton=20}] run playsound block.nether_wart.break master @a[distance=..15] ~ ~ ~ 1 0.8 1

execute as @e[tag=mold_target_point,limit=1] at @s run tp @e[tag=marked_host,scores={undead_animaton=20}] ~ ~-0.5 ~

execute as @e[tag=marked_host,scores={undead_animaton=20}] run effect give @s levitation 1 1 true
execute as @e[tag=marked_host,scores={undead_animaton=20}] run data merge entity @s {NoAI:0b,Invulnerable:0b}
execute as @e[tag=marked_host,scores={undead_animaton=20}] run tag @s remove marked_host


execute at @a[scores={mold_kills=1..}] as @a[scores={char=59}] run function chars:add_kill
scoreboard players remove @a[scores={mold_kills=1..}] mold_kills 1


# ========================================================================================================================================================================================================================================================================================================
#s1 - buildings ========================================================================================================================================================================================================================================================================================================
# ========================================================================================================================================================================================================================================================================================================

scoreboard players set @a[scores={char=59,s1_timer=1}] s1_timer_recast 1
scoreboard players set @a[scores={char=59,s1_timer=1}] s1_timer 0

scoreboard players enable @a[scores={char=59,s1_timer_recast=1..}] MoldBuildings
#tellraw @a[scores={char=59,s1_timer_recast=1..}] [{text:"\n\n======================",bold:1b,strikethrough:1b,color:"dark_red",type:"text"}]
#tellraw @a[scores={char=59,s1_timer_recast=1..}] [{text:">",bold:1b,color:"dark_red",type:"text"},{text:" [",bold:1b,color:"dark_red",type:"text"},{text:"Shroom Sentry",color:"red",bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger MoldBuildings set 1"},hover_event:{action:"show_text",value:[[{text:"================\n",color:"dark_red",type:"text"},{text:"20 HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: 16s",color:"gray",type:"text"},{text:"\nEvery 2 seconds shoots at the closest enemy in 15 block range, dealing ",color:"gray",type:"text"},{text:"2 damage",color:"red",type:"text"},{text:".\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}]]}},{text:"]",bold:1b,color:"dark_red",type:"text"},{text:" - Cost:",color:"gray",bold:0b,type:"text"},{text:" 3 ",color:"red",bold:0b,type:"text"},{text:"Spores",color:"gray",bold:0b,type:"text"}]
#tellraw @a[scores={char=59,s1_timer_recast=1..}] [{text:">",bold:1b,color:"dark_red",type:"text"},{text:" [",bold:1b,color:"dark_red",type:"text"},{text:"Lost Ravager",color:"red",bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger MoldBuildings set 2"},hover_event:{action:"show_text",value:[[{text:"================\n",color:"dark_red",type:"text"},{text:"30 HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: 20s",color:"gray",type:"text"},{text:"\nEvery 4 throws a mortar shell at the closest enemy in 8 block range, dealing ",color:"gray",type:"text"},{text:"4 damage",color:"red",type:"text"},{text:" to all enemies within 4 blocks range.\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}]]}},{text:"]",bold:1b,color:"dark_red",type:"text"},{text:" - Cost:",color:"gray",bold:0b,type:"text"},{text:" 3 ",color:"red",bold:0b,type:"text"},{text:"Spores",color:"gray",bold:0b,type:"text"}]
#tellraw @a[scores={char=59,s1_timer_recast=1..}] [{"text":">","bold":true,"color":"dark_red"},{"text":" [","bold":true,"color":"dark_red"},{"text":"Pile of Bodies","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/trigger MoldBuildings set 3"},"hoverEvent":{"action":"show_text","value":[[{"text":"================\n","color":"dark_red"},{"text":"30 HP","color":"gray"},{"text":" | ","color":"red"},{"text":"Livetime: 35s","color":"gray"},{"text":"\nEvery 7 seconds spawns 1 Sprouted Runner.\n","color":"gray"},{"text":"================","color":"dark_red"}]]}},{"text":"]","bold":true,"color":"dark_red"},{"text":" - Cost:","color":"gray","bold":false},{"text":" 5 ","color":"red","bold":false},{"text":"Spores","color":"gray","bold":false}]
#tellraw @a[scores={char=59,s1_timer_recast=1..}] [{text:">",bold:1b,color:"dark_red",type:"text"},{text:" [",bold:1b,color:"dark_red",type:"text"},{text:"Mycelium",color:"red",bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger MoldBuildings set 4"},hover_event:{action:"show_text",value:[[{text:"================\n",color:"dark_red",type:"text"},{text:"10 HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: 60s",color:"gray",type:"text"},{text:"\nEvery 7 seconds grants 1 Spore.\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}]]}},{text:"]",bold:1b,color:"dark_red",type:"text"},{text:" - Cost:",color:"gray",bold:0b,type:"text"},{text:" 6 ",color:"red",bold:0b,type:"text"},{text:"Spores",color:"gray",bold:0b,type:"text"}]
#tellraw @a[scores={char=59,s1_timer_recast=1..}] [{text:">",bold:1b,color:"dark_red",type:"text"},{text:" [",bold:1b,color:"dark_red",type:"text"},{text:"Crumbling Ground",color:"red",bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger MoldBuildings set 5"},hover_event:{action:"show_text",value:[[{text:"================\n",color:"dark_red",type:"text"},{text:"- HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: 7s",color:"gray",type:"text"},{text:"\nSlows ",color:"light_purple",type:"text"},{text:"all enemies within 8 block range by ",color:"gray",type:"text"},{text:"30%",color:"light_purple",type:"text"},{text:". Mold Hosts gain ",color:"gray",type:"text"},{text:"+20% speed",color:"gray",type:"text"},{text:".\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}]]}},{text:"]",bold:1b,color:"dark_red",type:"text"},{text:" - Cost:",color:"gray",bold:0b,type:"text"},{text:" 3 ",color:"red",bold:0b,type:"text"},{text:"Spores",color:"gray",bold:0b,type:"text"}]
#tellraw @a[scores={char=59,s1_timer_recast=1..}] [{text:">",bold:1b,color:"dark_red",type:"text"},{text:" [",bold:1b,color:"dark_red",type:"text"},{text:"Hungering Mold",color:"red",bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger MoldBuildings set 6"},hover_event:{action:"show_text",value:[[{text:"================\n",color:"dark_red",type:"text"},{text:"- HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: 5s",color:"gray",type:"text"},{text:"\nDefiles ",color:"light_purple",type:"text"},{text:"all enemies within 5 block range. All Mold Hosts are ",color:"gray",type:"text"},{text:"healed",color:"green",type:"text"},{text:" by ",color:"gray",type:"text"},{text:"6HP",color:"green",type:"text"},{text:" once.\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}]]}},{text:"]",bold:1b,color:"dark_red",type:"text"},{text:" - Cost:",color:"gray",bold:0b,type:"text"},{text:" 4 ",color:"red",bold:0b,type:"text"},{text:"Spores",color:"gray",bold:0b,type:"text"}]
#tellraw @a[scores={char=59,s1_timer_recast=1..}] [{text:"======================",bold:1b,strikethrough:1b,color:"dark_red",type:"text"}]

dialog show @a[scores={char=59,s1_timer_recast=1..}] {type:multi_action,title:"",actions:[{label:{text:"Shroom Sentry",color:red},tooltip:[{text:"================\n",color:"dark_red",type:"text"},{text:"20 HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: ",color:"gray",type:"text"},{text:"16s",color:"red",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Cost: ",color:"gray",type:"text"},{text:"3 Spores",color:"red",type:"text"},{text:"\nEvery 2 seconds, will shoots at the closest enemy in 15 block range, dealing ",color:"gray",type:"text"},{text:"2 damage",color:"red",type:"text"},{text:".\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}],action:{type:run_command,command:"/trigger MoldBuildings set 1"}},{label:{text:"Lost Ravager",color:red},tooltip:[{text:"================\n",color:"dark_red",type:"text"},{text:"30 HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: ",color:"gray",type:"text"},{text:"20s",color:"red",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Cost: ",color:"gray",type:"text"},{text:"3 Spores",color:"red",type:"text"},{text:"\nEvery 4 throws a mortar shell at the closest enemy in 8 block range, dealing ",color:"gray",type:"text"},{text:"4 damage",color:"red",type:"text"},{text:" to all enemies within 4 blocks range.\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}],action:{type:run_command,command:"/trigger MoldBuildings set 2"}},{label:{text:"Mycelium",color:red},tooltip:[{text:"================\n",color:"dark_red",type:"text"},{text:"10 HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: ",color:"gray",type:"text"},{text:"60s",color:"red",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Cost: ",color:"gray",type:"text"},{text:"6 Spores",color:"red",type:"text"},{text:"\nEvery 7 seconds grants ",color:"gray",type:"text"},{text:"1 Spore",color:"blue",type:"text"},{text:".\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}],action:{type:run_command,command:"/trigger MoldBuildings set 4"}},{label:{text:"Crumbling Ground",color:red},tooltip:[{text:"================\n",color:"dark_red",type:"text"},{text:"- HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: ",color:"gray",type:"text"},{text:"7s",color:"red",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Cost: ",color:"gray",type:"text"},{text:"3 Spores",color:"red",type:"text"},{text:"\nSlows ",color:"light_purple",type:"text"},{text:"all enemies within 8 block range by ",color:"gray",type:"text"},{text:"30%",color:"light_purple",type:"text"},{text:". Mold Hosts gain ",color:"gray",type:"text"},{text:"+20% speed",color:"aqua",type:"text"},{text:".\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}],action:{type:run_command,command:"/trigger MoldBuildings set 5"}},{label:{text:"Hungering Mold",color:red},tooltip:[{text:"================\n",color:"dark_red",type:"text"},{text:"- HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: ",color:"gray",type:"text"},{text:"5s",color:"red",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Cost: ",color:"gray",type:"text"},{text:"4 Spores",color:"red",type:"text"},{text:"\nDefiles ",color:"light_purple",type:"text"},{text:"all enemies within 5 block range. All Mold Hosts are ",color:"gray",type:"text"},{text:"healed",color:"green",type:"text"},{text:" by ",color:"gray",type:"text"},{text:"6 health",color:"green",type:"text"},{text:" when first spawned.\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}],action:{type:run_command,command:"/trigger MoldBuildings set 6"}}],pause:false,can_close_with_escape:true,body:{type:"plain_message",contents:["",{text:"\n\n=======",bold:true,color:dark_red,strikethrough:true},{text:" Select Warped Structure ",bold:true,color:red},{text:"=======",bold:true,color:dark_red,strikethrough:true}],width:350},columns:1}

scoreboard players set @a[scores={s1_timer_recast=1..}] s1_timer_recast 0

scoreboard players set @a[scores={char=59,MoldBuildings=1..}] s1_timer 1

scoreboard players add @e[tag=MoldStructure] SummonAge 1

kill @e[tag=Mold_Sentry,scores={SummonAge=320..}]
kill @e[tag=Mold_Ravager,scores={SummonAge=400..}]
kill @e[tag=Mold_Pile,scores={SummonAge=400..}]
kill @e[tag=Mold_Mycelium,scores={SummonAge=700..}]
kill @e[tag=Mold_Ground,scores={SummonAge=140..}]
kill @e[tag=Mold_Hunger,scores={SummonAge=100..}]







# shroom sentry

execute at @a[scores={char=59,MoldBuildings=1,spores=..2}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
execute as @a[scores={char=59,MoldBuildings=1,spores=3..}] at @s run summon wither_skeleton ~ ~0.5 ~ {Silent:1b,Health:20.0f,Tags:["MoldStructure","Mold_Sentry","entities_redmold"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:19999980,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":6164753},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":8001046},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":4007203},count:1},head:{id:"minecraft:dispenser",count:1}}}
scoreboard players remove @a[scores={char=59,MoldBuildings=1,spores=3..}] spores 3

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


execute as @e[tag=Mold_Sentry] at @s as @e[distance=..15,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run rotate @n[tag=Mold_Sentry] facing entity @s

scoreboard players add @e[tag=Mold_Sentry] spores 1
scoreboard players add @e[tag=Mold_Sentry_projectile] spores 1


execute at @e[tag=Mold_Sentry,scores={spores=40..}] run playsound entity.snow_golem.shoot master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @e[tag=Mold_Sentry,scores={spores=40..}] run playsound block.nether_wart.break master @a[distance=..12] ~ ~ ~ 1 0.1 1
execute at @e[tag=Mold_Sentry,scores={spores=40..}] run summon block_display ~ ~2 ~ {Tags:["Mold_Sentry_projectile","MoldProjectile","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[.5,.5,.5],translation:[-.25,-.25,-.25]},block_state:{Name:"nether_wart_block"}}

execute as @e[tag=Mold_Sentry_projectile,scores={spores=1}] at @s rotated as @n[tag=Mold_Sentry] run rotate @s ~ ~
execute as @e[tag=Mold_Sentry_projectile] at @s run tp @s ^ ^ ^0.6
execute at @e[tag=Mold_Sentry_projectile] run particle block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~ ~ 0.1 0.1 0.1 0.1 1

execute at @e[tag=Mold_Sentry_projectile] positioned ~-.75 ~-.75 ~-.75 as @e[dx=.5,dy=.5,dz=.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run damage @s 2 generic by @p[scores={char=59}] from @p[scores={char=59}]
execute at @e[tag=Mold_Sentry_projectile] positioned ~-.75 ~-.75 ~-.75 as @e[dx=.5,dy=.5,dz=.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run kill @e[tag=Mold_Sentry_projectile]

scoreboard players set @e[tag=Mold_Sentry,scores={spores=40..}] spores 1
kill @e[tag=Mold_Sentry_projectile,scores={spores=30..}]


# lost ravager


execute at @a[scores={char=59,MoldBuildings=2,spores=..2}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
execute as @a[scores={char=59,MoldBuildings=2,spores=3..}] at @s run summon skeleton ~ ~0.5 ~ {Silent:1b,Health:20.0f,Tags:["MoldStructure","Mold_Ravager","entities_redmold"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:19999980,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":3342593},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":6358791},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":4010286},count:1},head:{id:"minecraft:furnace",count:1}}}
scoreboard players remove @a[scores={char=59,MoldBuildings=2,spores=3..}] spores 3

execute at @e[tag=Mold_Ravager] unless entity @e[tag=RavagerVisuals_1,distance=..1] run summon block_display ~ ~1 ~ {Tags:["RavagerVisuals_1","RavagerVisuals","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1,0.6,1],translation:[-.5,-.3,-.5]},block_state:{Name:"nether_bricks"}}
execute at @e[tag=Mold_Ravager] unless entity @e[tag=RavagerVisuals_2,distance=..1] run summon block_display ~ ~1 ~ {Tags:["RavagerVisuals_2","RavagerVisuals","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1.2,.4,1.2],translation:[-.6,-.2,-.6]},block_state:{Name:"nether_wart_block"}}
execute at @e[tag=Mold_Ravager] unless entity @e[tag=RavagerVisuals_3,distance=..1] run summon block_display ~ ~1 ~ {Tags:["RavagerVisuals_3","RavagerVisuals","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.8,.3,0.8],translation:[-.4,-.15,-.4]},block_state:{Name:"nether_wart_block"}}
execute at @e[tag=Mold_Ravager] unless entity @e[tag=RavagerVisuals_4,distance=..1] run summon block_display ~ ~1 ~ {Tags:["RavagerVisuals_4","RavagerVisuals","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.3,1.0,0.3],translation:[-.15,-.5,-.15]},block_state:{Name:"netherrack"}}
execute at @e[tag=Mold_Ravager] unless entity @e[tag=RavagerVisuals_5,distance=..1] run summon block_display ~ ~1 ~ {Tags:["RavagerVisuals_5","RavagerVisuals","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.3,1,0.3],translation:[-.15,-.5,-.15]},block_state:{Name:"netherrack"}}
execute at @e[tag=Mold_Ravager] unless entity @e[tag=RavagerVisuals_6,distance=..1] run summon block_display ~ ~1 ~ {Tags:["RavagerVisuals_6","RavagerVisuals","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.3,1,0.3],translation:[-.15,-.5,-.15]},block_state:{Name:"netherrack"}}

execute at @e[tag=Mold_Ravager] run tp @e[tag=RavagerVisuals_1,distance=..1] ~ ~0.3 ~
execute at @e[tag=Mold_Ravager] run tp @e[tag=RavagerVisuals_2,distance=..1] ~-0.05 ~0.2 ~0.05
execute at @e[tag=Mold_Ravager] run tp @e[tag=RavagerVisuals_3,distance=..1] ~0.2 ~0.1 ~-0.2
execute at @e[tag=Mold_Ravager] run tp @e[tag=RavagerVisuals_4,distance=..1] ~-0.2 ~0.3 ~0.1
execute at @e[tag=Mold_Ravager] run tp @e[tag=RavagerVisuals_5,distance=..1] ~-0.3 ~0.4 ~-0.2
execute at @e[tag=Mold_Ravager] run tp @e[tag=RavagerVisuals_6,distance=..1] ~0.15 ~0.5 ~0.2

execute as @e[tag=RavagerVisuals] at @s unless entity @e[tag=Mold_Ravager,distance=..1] run playsound block.nether_wart.break master @a[distance=..12] ~ ~ ~ 1 0.1 1
execute as @e[tag=RavagerVisuals] at @s unless entity @e[tag=Mold_Ravager,distance=..1] run particle block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~ ~ 0.5 0.8 0.5 0.1 150
execute as @e[tag=RavagerVisuals] at @s unless entity @e[tag=Mold_Ravager,distance=..1] run kill @s



execute as @e[tag=Mold_Ravager] at @s as @e[distance=..8,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run rotate @n[tag=Mold_Ravager] facing entity @s

scoreboard players add @e[tag=Mold_Ravager] spores 1
scoreboard players add @e[tag=Mold_Ravager_projectile] spores 1


execute at @e[tag=Mold_Ravager,scores={spores=80..}] run playsound minecraft:block.iron_door.close master @a[distance=..12] ~ ~ ~ 1 0.4 1
execute at @e[tag=Mold_Ravager,scores={spores=80..}] run playsound minecraft:block.nether_wart.break master @a[distance=..12] ~ ~ ~ 1 0.1 1
execute at @e[tag=Mold_Ravager,scores={spores=80..}] run summon block_display ~ ~1 ~ {Tags:["Mold_Ravager_projectile","MoldProjectile","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[.5,.5,.5],translation:[-.25,-.25,-.25]},block_state:{Name:"netherrack"}}

execute as @e[tag=Mold_Ravager_projectile,scores={spores=1}] at @s rotated as @n[tag=Mold_Ravager] run rotate @s ~ ~
execute as @e[tag=Mold_Ravager_projectile,scores={spores=1..10}] at @s run tp @s ^ ^0.2 ^0.6
execute as @e[tag=Mold_Ravager_projectile,scores={spores=11..20}] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=Mold_Ravager_projectile,scores={spores=11..20}] at @s run tp @s ~ ~-0.3 ~
execute as @e[tag=Mold_Ravager_projectile,scores={spores=21..}] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=Mold_Ravager_projectile,scores={spores=21..}] at @s run tp @s ~ ~-0.5 ~
execute as @e[tag=Mold_Ravager_projectile,scores={spores=30..}] at @s run tp @s ~ ~-0.6 ~
execute as @e[tag=Mold_Ravager_projectile] run particle falling_dust{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~ ~ 0.2 0.2 0.2 0.1 1

execute at @e[tag=Mold_Ravager_projectile] unless block ^ ^ ^1 #minecraft:dash run summon minecraft:marker ~ ~ ~ {Tags:["RavagerBoom","MoldProjectile","entities_redmold"]}

execute at @e[tag=RavagerBoom] run kill @e[tag=Mold_Ravager_projectile]
execute at @e[tag=RavagerBoom] run playsound minecraft:entity.dragon_fireball.explode master @a[distance=..12] ~ ~ ~ 1 2 1
execute at @e[tag=RavagerBoom] run playsound minecraft:entity.dragon_fireball.explode master @a[distance=..12] ~ ~ ~ 1 2 1
execute at @e[tag=RavagerBoom] run particle minecraft:explosion ~ ~ ~ 2 0.5 2 1 40
execute at @e[tag=RavagerBoom] run particle minecraft:crimson_spore ~ ~ ~ 2 0.5 2 1 40
execute at @e[tag=RavagerBoom] run particle minecraft:block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~ ~ 3 3 3 1 40
execute at @e[tag=RavagerBoom] as @e[distance=..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run damage @s 4 generic by @p[scores={char=59}] from @p[scores={char=59}]

kill @e[tag=RavagerBoom]

scoreboard players set @e[tag=Mold_Ravager,scores={spores=80..}] spores 1
kill @e[tag=Mold_Ravager_projectile,scores={spores=60..}]

# pile of bodies

execute at @a[scores={char=59,MoldBuildings=3,spores=..4}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
#execute as @a[scores={char=59,MoldBuildings=3,spores=5..}] at @s run summon skeleton ~ ~0.5 ~ {Silent:1b,Health:20.0f,Tags:["MoldStructure","Mold_Ravager"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:19999980,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":3342593},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":6358791},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":4010286},count:1},head:{id:"minecraft:furnace",count:1}}}
scoreboard players remove @a[scores={char=59,MoldBuildings=3,spores=5..}] spores 5


scoreboard players add @e[tag=Mold_Pile] spores 1

#execute at @e[tag=Mold_Pile,scores={spores=140..}] run

scoreboard players set @e[tag=Mold_Pile,scores={spores=140..}] spores 1


# mycelium

execute at @a[scores={char=59,MoldBuildings=4,spores=..5}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
execute as @a[scores={char=59,MoldBuildings=4,spores=6..}] at @s run summon husk ~ ~ ~ {Health:10.0f,IsBaby:0b,Tags:["MoldStructure","Mold_Mycelium","entities_redmold"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:19999980,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:10},{id:"minecraft:movement_speed",base:0}],equipment:{chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":14548992},count:1},head:{id:"minecraft:nether_wart_block",count:1}}}
scoreboard players remove @a[scores={char=59,MoldBuildings=4,spores=6..}] spores 6

execute at @e[tag=Mold_Mycelium] unless entity @e[tag=MyceliumVisual_1,distance=..1] run summon block_display ~ ~1 ~ {Tags:["MyceliumVisual_1","MyceliumVisuals","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[.8,1.2,.8],translation:[-.4,-.6,-.4]},block_state:{Name:"nether_wart_block"}}
execute at @e[tag=Mold_Mycelium] unless entity @e[tag=MyceliumVisual_2,distance=..1] run summon block_display ~ ~1 ~ {Tags:["MyceliumVisual_2","MyceliumVisuals","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1.1,.4,1.1],translation:[-.55,-.2,-.55]},block_state:{Name:"netherrack"}}
execute at @e[tag=Mold_Mycelium] unless entity @e[tag=MyceliumVisual_3,distance=..1] run summon block_display ~ ~1 ~ {Tags:["MyceliumVisual_3","MyceliumVisuals","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1.2,.4,1.2],translation:[-.6,-.2,-.6]},block_state:{Name:"netherrack"}}


execute at @e[tag=Mold_Mycelium] run tp @e[tag=MyceliumVisual_1,distance=..1] ~ ~0.5 ~
execute at @e[tag=Mold_Mycelium] run tp @e[tag=MyceliumVisual_2,distance=..1] ~ ~0.5 ~
execute at @e[tag=Mold_Mycelium] run tp @e[tag=MyceliumVisual_3,distance=..1] ~ ~0.1 ~

execute as @e[tag=MyceliumVisuals] at @s unless entity @e[tag=Mold_Mycelium,distance=..1] run playsound block.nether_wart.break master @a[distance=..12] ~ ~ ~ 1 0.1 1
execute as @e[tag=MyceliumVisuals] at @s unless entity @e[tag=Mold_Mycelium,distance=..1] run particle block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~ ~ 0.5 0.8 0.5 0.1 150
execute as @e[tag=MyceliumVisuals] at @s unless entity @e[tag=Mold_Mycelium,distance=..1] run kill @s

scoreboard players add @e[tag=Mold_Mycelium] spores 1
execute at @e[tag=Mold_Mycelium,scores={spores=140..}] run particle block{block_state:{Name:"minecraft:netherrack"}} ~ ~ ~ 1 1 1 0.1 30
execute at @e[tag=Mold_Mycelium,scores={spores=140..}] run particle block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~ ~ 1 1 1 0.1 30
execute at @e[tag=Mold_Mycelium,scores={spores=140..}] run playsound block.azalea.place master @a[scores={char=59,spores=..9}] ~ ~ ~ 1 0.8 1
execute at @e[tag=Mold_Mycelium,scores={spores=140..}] run playsound entity.experience_orb.pickup master @a[scores={char=59,spores=..9}] ~ ~ ~ 0.5 0.8 1
execute at @e[tag=Mold_Mycelium,scores={spores=140..}] run scoreboard players add @a[scores={char=59,spores=..9}] spores 1

execute at @e[tag=Mold_Mycelium,scores={spores=140..}] if score @p[scores={char=59}] spores matches ..9 run summon marker ~ ~0.25 ~ {Tags:["mycelium_visual_core","mycelium_visuals","entities_redmold"]}
execute at @e[tag=Mold_Mycelium,scores={spores=140..}] if score @p[scores={char=59}] spores matches ..9 run summon marker ~0.5 ~0.25 ~ {Tags:["mycelium_visual_1","mycelium_visuals","entities_redmold"]}
execute at @e[tag=Mold_Mycelium,scores={spores=140..}] if score @p[scores={char=59}] spores matches ..9 run summon marker ~-0.5 ~0.25 ~ {Tags:["mycelium_visual_2","mycelium_visuals","entities_redmold"]}
execute at @e[tag=Mold_Mycelium,scores={spores=140..}] if score @p[scores={char=59}] spores matches ..9 run summon marker ~ ~0.25 ~0.5 {Tags:["mycelium_visual_3","mycelium_visuals","entities_redmold"]}
execute at @e[tag=Mold_Mycelium,scores={spores=140..}] if score @p[scores={char=59}] spores matches ..9 run summon marker ~ ~0.25 ~-0.5 {Tags:["mycelium_visual_4","mycelium_visuals","entities_redmold"]}

scoreboard players add @e[tag=mycelium_visuals] fire_life 1

execute at @e[tag=mycelium_visuals,tag=!mycelium_visual_core] run particle block_crumble{block_state:nether_wart_block} ~ ~0.2 ~ .1 .2 .1 0 10
execute at @e[tag=mycelium_visuals,tag=!mycelium_visual_core] run particle dust{color:[.533,.031,.031],scale:1.25} ~ ~0.2 ~ .2 .1 .2 0 10
execute as @e[tag=mycelium_visuals,tag=!mycelium_visual_core] at @s run tp @s ~ ~ ~ facing entity @e[tag=mycelium_visual_core,limit=1]
execute as @e[tag=mycelium_visuals,tag=!mycelium_visual_core] store result entity @s Rotation[1] float 1 run clear
execute as @e[tag=mycelium_visuals,tag=!mycelium_visual_core] at @s run tp @s ^0.45 ^ ^-0.21

kill @e[tag=mycelium_visuals,scores={fire_life=30..}]

scoreboard players set @e[tag=Mold_Mycelium,scores={spores=140..}] spores 1

execute at @e[tag=Mold_Mycelium] run particle block{block_state:{Name:"minecraft:hanging_roots"}} ~ ~0.5 ~ 0.3 0.8 0.3 0.1 5
execute at @e[tag=Mold_Mycelium] run particle block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~0.5 ~ 0.3 0.8 0.3 0.1 15
execute at @e[tag=Mold_Mycelium] run particle block{block_state:{Name:"minecraft:hanging_roots"}} ~ ~ ~ 5 2 5 0.1 10
execute at @e[tag=Mold_Mycelium] run particle block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~ ~ 3 3 3 0.1 5
execute at @e[tag=Mold_Mycelium] run particle crimson_spore ~ ~ ~ 3 3 3 0.1 5


# crumbling ground

execute at @a[scores={char=59,MoldBuildings=5,spores=..2}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
execute as @a[scores={char=59,MoldBuildings=5,spores=3..}] at @s run summon marker ~ ~ ~ {Tags:["MoldStructure","Mold_Ground","entities_redmold"]}
scoreboard players remove @a[scores={char=59,MoldBuildings=5,spores=3..}] spores 3

execute at @e[tag=Mold_Ground] run effect give @e[distance=..8,tag=MoldHost] speed 1 0
execute at @e[tag=Mold_Ground] as @e[distance=..8,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run effect give @s slowness 1 1
execute at @e[tag=Mold_Ground] run particle block{block_state:{Name:"minecraft:hanging_roots"}} ~ ~ ~ 5 0.1 5 0.01 100
execute at @e[tag=Mold_Ground] run particle block{block_state:{Name:"minecraft:red_nether_bricks"}} ~ ~ ~ 5 0.3 5 0.01 10

execute at @e[tag=Mold_Ground,scores={SummonAge=20}] run playsound block.nether_bricks.break master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @e[tag=Mold_Ground,scores={SummonAge=40}] run playsound block.nether_bricks.break master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @e[tag=Mold_Ground,scores={SummonAge=60}] run playsound block.nether_bricks.break master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @e[tag=Mold_Ground,scores={SummonAge=80}] run playsound block.nether_bricks.break master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @e[tag=Mold_Ground,scores={SummonAge=100}] run playsound block.nether_bricks.break master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @e[tag=Mold_Ground,scores={SummonAge=120}] run playsound block.nether_bricks.break master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @e[tag=Mold_Ground,scores={SummonAge=140}] run playsound block.nether_bricks.break master @a[distance=..10] ~ ~ ~ 1 0.8 1

execute as @e[tag=Mold_Ground] at @s run rotate @s ~4.5 ~
execute as @e[tag=Mold_Ground] at @s run particle dust{color:[.533,.031,.031],scale:1.25} ^ ^ ^8 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Ground] at @s run particle dust{color:[.533,.031,.031],scale:1.25} ^ ^ ^-8 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Ground] at @s run particle dust{color:[.533,.031,.031],scale:1.25} ^8 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Ground] at @s run particle dust{color:[.533,.031,.031],scale:1.25} ^-8 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Ground] at @s run particle dust{color:[.533,.031,.031],scale:1.25} ^6 ^ ^6 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Ground] at @s run particle dust{color:[.533,.031,.031],scale:1.25} ^-6 ^ ^-6 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Ground] at @s run particle dust{color:[.533,.031,.031],scale:1.25} ^6 ^ ^-6 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Ground] at @s run particle dust{color:[.533,.031,.031],scale:1.25} ^-6 ^ ^6 0.1 0.2 0.1 0 10

# hunger of the mold

execute at @a[scores={char=59,MoldBuildings=6,spores=..3}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
execute as @a[scores={char=59,MoldBuildings=6,spores=4..}] at @s run summon marker ~ ~ ~ {Tags:["MoldStructure","Mold_Hunger","entities_redmold"]}
scoreboard players remove @a[scores={char=59,MoldBuildings=6,spores=4..}] spores 4

execute at @e[tag=Mold_Hunger] run playsound block.nether_wart.break master @a[distance=..12] ~ ~ ~ 0.3 0.5 1
execute at @e[tag=Mold_Hunger,scores={spores=2}] run effect give @e[distance=..5,tag=MoldHost] instant_damage
execute at @e[tag=Mold_Hunger] run particle block{block_state:{Name:"minecraft:nether_wart"}} ~ ~ ~ 3 1 3 0.01 100
execute at @e[tag=Mold_Hunger] run particle crimson_spore ~ ~ ~ 2 0.5 2 0.1 10
execute at @e[tag=Mold_Hunger] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run scoreboard players set @s CC_defiled 20

execute as @e[tag=Mold_Hunger] at @s run rotate @s ~6 ~
execute as @e[tag=Mold_Hunger] at @s run particle dust{color:[.752,.25,0],scale:1} ^ ^ ^5 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Hunger] at @s run particle dust{color:[.752,.25,0],scale:1} ^ ^ ^-5 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Hunger] at @s run particle dust{color:[.752,.25,0],scale:1} ^5 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Hunger] at @s run particle dust{color:[.752,.25,0],scale:1} ^-5 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Hunger] at @s run particle dust{color:[.752,.25,0],scale:1} ^3.75 ^ ^3.75 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Hunger] at @s run particle dust{color:[.752,.25,0],scale:1} ^-3.75 ^ ^-3.75 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Hunger] at @s run particle dust{color:[.752,.25,0],scale:1} ^3.75 ^ ^-3.75 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Hunger] at @s run particle dust{color:[.752,.25,0],scale:1} ^-3.75 ^ ^3.75 0.1 0.2 0.1 0 10

scoreboard players set @a[scores={char=59,MoldBuildings=1..}] MoldBuildings 0

# ========================================================================================================================================================================================================================================================================================================
#s2 army of horrors ========================================================================================================================================================================================================================================================================================================
# ========================================================================================================================================================================================================================================================================================================

scoreboard players set @a[scores={char=59,s2_timer=1}] s2_timer_recast 1
scoreboard players set @a[scores={char=59,s2_timer=1}] s2_timer 0

scoreboard players enable @a[scores={char=59,s2_timer_recast=1..}] MoldMinions
#tellraw @a[scores={char=59,s2_timer_recast=1..}] [{text:"\n\n======================",bold:1b,strikethrough:1b,color:"dark_red",type:"text"}]
#tellraw @a[scores={char=59,s2_timer_recast=1..}] [{text:">",bold:1b,color:"dark_red",type:"text"},{text:" [",bold:1b,color:"dark_red",type:"text"},{text:"Consumed Brute",color:"red",bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger MoldMinions set 1"},hover_event:{action:"show_text",value:[[{text:"================\n",color:"dark_red",type:"text"},{text:"16 HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Melee",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Moderate",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Count: 3",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: 15s",color:"gray",type:"text"},{text:"\nTheir attacks deal ",color:"gray",type:"text"},{text:"4 damage",color:"red",type:"text"},{text:" and ",color:"gray",type:"text"},{text:"slow",color:"light_purple",type:"text"},{text:" enemies by ",color:"gray",type:"text"},{text:"15%",color:"light_purple",type:"text"},{text:" for 1 second.\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}]]}},{text:"]",bold:1b,color:"dark_red",type:"text"},{text:" - Cost:",color:"gray",bold:0b,type:"text"},{text:" 4 ",color:"red",bold:0b,type:"text"},{text:"Spores",color:"gray",bold:0b,type:"text"}]
#tellraw @a[scores={char=59,s2_timer_recast=1..}] [{text:">",bold:1b,color:"dark_red",type:"text"},{text:" [",bold:1b,color:"dark_red",type:"text"},{text:"Gorged Mage",color:"red",bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger MoldMinions set 2"},hover_event:{action:"show_text",value:[[{text:"================\n",color:"dark_red",type:"text"},{text:"12 HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Ranged",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Slow",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Count: 2",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: 25s",color:"gray",type:"text"},{text:"\nEvery 4 seconds shoots a projectile at the closest enemy, dealing ",color:"gray",type:"text"},{text:"3 damage",color:"red",type:"text"},{text:".\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}]]}},{text:"]",bold:1b,color:"dark_red",type:"text"},{text:" - Cost:",color:"gray",bold:0b,type:"text"},{text:" 3 ",color:"red",bold:0b,type:"text"},{text:"Spores",color:"gray",bold:0b,type:"text"}]
#tellraw @a[scores={char=59,s2_timer_recast=1..}] [{text:">",bold:1b,color:"dark_red",type:"text"},{text:" [",bold:1b,color:"dark_red",type:"text"},{text:"Devoured Healer",color:"red",bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger MoldMinions set 3"},hover_event:{action:"show_text",value:[[{text:"================\n",color:"dark_red",type:"text"},{text:"10 HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Ranged",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Moderate",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Count: 1",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: 30s",color:"gray",type:"text"},{text:"\nEvery 6 seconds",color:"gray",type:"text"},{text:" heals ",color:"green",type:"text"},{text:"all Mold Hosts within 10 blocks range by",color:"gray",type:"text"},{text:" 6 HP",color:"green",type:"text"},{text:", grants them ",color:"gray",type:"text"},{text:"4 shield points",color:"yellow",type:"text"},{text:" and increases their livetime by 4 seconds (excluding other Devoured Healers).\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}]]}},{text:"]",bold:1b,color:"dark_red",type:"text"},{text:" - Cost:",color:"gray",bold:0b,type:"text"},{text:" 5 ",color:"red",bold:0b,type:"text"},{text:"Spores",color:"gray",bold:0b,type:"text"}]
#tellraw @a[scores={char=59,s2_timer_recast=1..}] [{text:">",bold:1b,color:"dark_red",type:"text"},{text:" [",bold:1b,color:"dark_red",type:"text"},{text:"Ravaged Knight",color:"red",bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger MoldMinions set 4"},hover_event:{action:"show_text",value:[[{text:"================\n",color:"dark_red",type:"text"},{text:"30 HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Melee",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Very slow",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Count: 1",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: 40s",color:"gray",type:"text"},{text:"\nHis attacks deal ",color:"gray",type:"text"},{text:"8 damage",color:"red",type:"text"},{text:". Every 8 seconds he ",color:"gray",type:"text"},{text:"stuns",color:"light_purple",type:"text"},{text:" all enemies within 4 blocks for 1 second.\n",color:"gray",type:"text"},{text:" ",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}]]}},{text:"]",bold:1b,color:"dark_red",type:"text"},{text:" - Cost:",color:"gray",bold:0b,type:"text"},{text:" 8 ",color:"red",bold:0b,type:"text"},{text:"Spores",color:"gray",bold:0b,type:"text"}]
#tellraw @a[scores={char=59,s2_timer_recast=1..}] [{text:">",bold:1b,color:"dark_red",type:"text"},{text:" [",bold:1b,color:"dark_red",type:"text"},{text:"Sprouted Runner",color:"red",bold:0b,type:"text",click_event:{action:"run_command",command:"/trigger MoldMinions set 5"},hover_event:{action:"show_text",value:[[{text:"================\n",color:"dark_red",type:"text"},{text:"5 HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Melee",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Fast",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Count: 1",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: 5s",color:"gray",type:"text"},{text:"\nCharges at the closest enemy and explodes upon contact, dealing ",color:"gray",type:"text"},{text:"4 damage",color:"light_purple",type:"text"},{text:" and ",color:"gray",type:"text"},{text:"slowing",color:"light_purple",type:"text"},{text:" by ",color:"gray",type:"text"},{text:"45%",color:"light_purple",type:"text"},{text:" all enemies within 3 blocks for 1 second.\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}]]}},{text:"]",bold:1b,color:"dark_red",type:"text"},{text:" - Cost:",color:"gray",bold:0b,type:"text"},{text:" 1 ",color:"red",bold:0b,type:"text"},{text:"Spores",color:"gray",bold:0b,type:"text"}]
#tellraw @a[scores={char=59,s2_timer_recast=1..}] [{text:"======================",bold:1b,strikethrough:1b,color:"dark_red",type:"text"}]

dialog show @a[scores={char=59,s2_timer_recast=1..}] {type:multi_action,title:"",actions:[{label:{text:"Consumed Brute",color:red},tooltip:[{text:"================\n",color:"dark_red",type:"text"},{text:"16 HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Melee",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Moderate",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Count: ",color:"gray",type:"text"},{text:"2",color:"red",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: ",color:"gray",type:"text"},{text:"15s",color:"red",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Cost: ",color:"gray",type:"text"},{text:"4 Spores",color:"red",type:"text"},{text:"\nTheir attacks deal ",color:"gray",type:"text"},{text:"4 damage",color:"red",type:"text"},{text:" and ",color:"gray",type:"text"},{text:"slow",color:"light_purple",type:"text"},{text:" enemies by ",color:"gray",type:"text"},{text:"30%",color:"light_purple",type:"text"},{text:" for 1 second.\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}],action:{type:run_command,command:"/trigger MoldMinions set 1"}},{label:{text:"Gorged Mage",color:red},tooltip:[{text:"================\n",color:"dark_red",type:"text"},{text:"12 HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Ranged",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Slow",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Count: ",color:"gray",type:"text"},{text:"2",color:"red",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: ",color:"gray",type:"text"},{text:"25s",color:"red",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Cost: ",color:"gray",type:"text"},{text:"3 Spores",color:"red",type:"text"},{text:"\nEvery 4 seconds shoots a projectile at the closest enemy, dealing ",color:"gray",type:"text"},{text:"3 damage",color:"red",type:"text"},{text:".\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}],action:{type:run_command,command:"/trigger MoldMinions set 2"}},{label:{text:"Devoured Healer",color:red},tooltip:[{text:"================\n",color:"dark_red",type:"text"},{text:"10 HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Ranged",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Moderate",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Count: ",color:"gray",type:"text"},{text:"1",color:"red",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: ",color:"gray",type:"text"},{text:"30s",color:"red",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Cost: ",color:"gray",type:"text"},{text:"5 Spores",color:"red",type:"text"},{text:"\nEvery 6 seconds,",color:"gray",type:"text"},{text:" heals ",color:"green",type:"text"},{text:"all Mold Hosts within a 10 block range by",color:"gray",type:"text"},{text:" 6 health",color:"green",type:"text"},{text:", and grants them ",color:"gray",type:"text"},{text:"4 shield points",color:"yellow",type:"text"},{text:" and increases their livetime by 4 seconds (excluding other Devoured Healers).\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}],action:{type:run_command,command:"/trigger MoldMinions set 3"}},{label:{text:"Ravaged Knight",color:red},tooltip:[{text:"================\n",color:"dark_red",type:"text"},{text:"30 HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Melee",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Very Slow",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Count: ",color:"gray",type:"text"},{text:"1",color:"red",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: ",color:"gray",type:"text"},{text:"40s",color:"red",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Cost: ",color:"gray",type:"text"},{text:"8 Spores",color:"red",type:"text"},{text:"\nIts attacks deal ",color:"gray",type:"text"},{text:"8 damage",color:"red",type:"text"},{text:". Every 8 seconds it ",color:"gray",type:"text"},{text:"stuns",color:"light_purple",type:"text"},{text:" all enemies within 4 blocks for 1 second.\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}],action:{type:run_command,command:"/trigger MoldMinions set 4"}},{label:{text:"Sprouted Runner",color:red},tooltip:[{text:"================\n",color:"dark_red",type:"text"},{text:"5 HP",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Melee",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Fast",color:"gray",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Count: ",color:"gray",type:"text"},{text:"1",color:"red",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Livetime: ",color:"gray",type:"text"},{text:"5s",color:"red",type:"text"},{text:" | ",color:"red",type:"text"},{text:"Cost: ",color:"gray",type:"text"},{text:"1 Spores",color:"red",type:"text"},{text:"\nCharges at the closest enemy and explodes upon contact, dealing ",color:"gray",type:"text"},{text:"4 damage",color:"light_purple",type:"text"},{text:" and ",color:"gray",type:"text"},{text:"slowing",color:"light_purple",type:"text"},{text:" by ",color:"gray",type:"text"},{text:"45%",color:"light_purple",type:"text"},{text:" all enemies within 3 blocks for 1 second.\n",color:"gray",type:"text"},{text:"================",color:"dark_red",type:"text"}],action:{type:run_command,command:"/trigger MoldMinions set 5"}}],pause:false,can_close_with_escape:true,body:{type:"plain_message",contents:["",{text:"\n\n=======",bold:true,color:dark_red,strikethrough:true},{text:" Select Mold Host ",bold:true,color:red},{text:"=======",bold:true,color:dark_red,strikethrough:true}],width:350},columns:1}

scoreboard players set @a[scores={s2_timer_recast=1..}] s2_timer_recast 0

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
execute as @a[scores={char=59,MoldMinions=1,spores=4..}] at @s run summon husk ^0.5 ^ ^ {Health:16.0f,IsBaby:0b,Tags:["MoldHost","Mold_Brute","entities_redmold"],attributes:[{id:"minecraft:attack_damage",base:4},{id:"minecraft:knockback_resistance",base:0.2},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.3}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":11881548},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":11881548},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":14548992},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1786004301,-1930670662,-1498883828,1723512729],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmFmMjdiNTg1NTA4YWRiNTA5MDRkY2QxMDY1Nzc1ZjNiODMwMjlhOThiZTkyZTk4ZDMwMWJhMzdlNDRkZDM4NCJ9fX0="}]}},count:1}}}
execute as @a[scores={char=59,MoldMinions=1,spores=4..}] at @s run summon husk ^-0.5 ^ ^ {Health:16.0f,IsBaby:0b,Tags:["MoldHost","Mold_Brute","entities_redmold"],attributes:[{id:"minecraft:attack_damage",base:4},{id:"minecraft:knockback_resistance",base:0.2},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.3}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":11881548},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":11881548},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":14548992},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1786004301,-1930670662,-1498883828,1723512729],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmFmMjdiNTg1NTA4YWRiNTA5MDRkY2QxMDY1Nzc1ZjNiODMwMjlhOThiZTkyZTk4ZDMwMWJhMzdlNDRkZDM4NCJ9fX0="}]}},count:1}}}
scoreboard players remove @a[scores={char=59,MoldMinions=1,spores=4..}] spores 4

effect give @a[advancements={chars:redmold_brute_slow=true}] slowness 1 1
advancement revoke @a[advancements={chars:redmold_brute_slow=true}] only chars:redmold_brute_slow

# mage

execute at @a[scores={char=59,MoldMinions=2,spores=..2}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
execute as @a[scores={char=59,MoldMinions=2,spores=3..}] at @s run summon skeleton ^-0.5 ^ ^ {Health:12.0f,Tags:["MoldHost","Mold_Mage","entities_redmold"],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:max_health",base:12},{id:"minecraft:movement_speed",base:0.2}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":5707286},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":6164239},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":4532261},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;2048267317,-2065349005,-1862281771,-1072678910],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2E1Nzc1ZWFiYmJmODFmOGE5ZTNmYjE0MGZiN2RjYjBlNjhjNWIyZDAyZTEwYjEwNDM1NjQxMjU0OTRmMWEyZiJ9fX0="}]}},count:1}}}
execute as @a[scores={char=59,MoldMinions=2,spores=3..}] at @s run summon skeleton ^-0.5 ^ ^ {Health:12.0f,Tags:["MoldHost","Mold_Mage","entities_redmold"],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:max_health",base:12},{id:"minecraft:movement_speed",base:0.2}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":5707286},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":6164239},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":4532261},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;2048267317,-2065349005,-1862281771,-1072678910],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2E1Nzc1ZWFiYmJmODFmOGE5ZTNmYjE0MGZiN2RjYjBlNjhjNWIyZDAyZTEwYjEwNDM1NjQxMjU0OTRmMWEyZiJ9fX0="}]}},count:1}}}
scoreboard players remove @a[scores={char=59,MoldMinions=2,spores=3..}] spores 3

scoreboard players add @e[tag=Mold_Mage] spores 1
scoreboard players add @e[tag=mold_mage_projectile] spores 1


execute at @e[tag=Mold_Mage,scores={spores=80..}] run playsound entity.zombie.infect master @a[distance=..12] ~ ~ ~ 1 0.1 1
execute at @e[tag=Mold_Mage,scores={spores=80..}] run playsound entity.evoker.cast_spell master @a[distance=..12] ~ ~ ~ 0.5 0.8 1
execute at @e[tag=Mold_Mage,scores={spores=80..}] run playsound block.nether_wart.break master @a[distance=..12] ~ ~ ~ 1 0.1 1
execute at @e[tag=Mold_Mage,scores={spores=80..}] run summon block_display ~ ~1 ~ {Tags:["mold_mage_projectile","MoldProjectile","entities_redmold"],teleport_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[.5,.5,.5],translation:[-.25,-.25,-.25]},block_state:{Name:"red_stained_glass"}}

execute as @e[tag=mold_mage_projectile,scores={spores=1..2}] at @s rotated as @n[tag=Mold_Mage] run rotate @s ~ ~
execute as @e[tag=mold_mage_projectile] at @s run tp @s ^ ^ ^0.5


execute at @e[tag=mold_mage_projectile] positioned ~-.75 ~-.75 ~-.75 as @n[dx=.5,dy=.5,dz=.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run damage @s 3 generic by @p[scores={char=59}] from @p[scores={char=59}]
execute at @e[tag=mold_mage_projectile] positioned ~-.75 ~-.75 ~-.75 as @n[dx=.5,dy=.5,dz=.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run kill @n[tag=mold_mage_projectile]

scoreboard players set @e[tag=Mold_Mage,scores={spores=80..}] spores 1
kill @e[tag=mold_mage_projectile,scores={spores=20..}]



# healer

execute at @a[scores={char=59,MoldMinions=3,spores=..4}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
execute as @a[scores={char=59,MoldMinions=3,spores=5..}] at @s run summon husk ^ ^ ^ {Health:10.0f,IsBaby:0b,Tags:["MoldHost","Mold_Healer","entities_redmold"],attributes:[{id:"minecraft:attack_damage",base:1},{id:"minecraft:knockback_resistance",base:0.2},{id:"minecraft:max_health",base:10},{id:"minecraft:movement_speed",base:0.25}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":16764100},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":16764100},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":7340051},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;985245507,-1854585322,-1628479916,1149341398],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTc5ODc4ZDdjOWMwMDk0MGExM2Y1ZjliMzI3MWQ5OTcwZmYxYTEyZGQxYzViN2Y4Zjg3OGQwOGZhNjYwNzY4ZSJ9fX0="}]}},count:1}}}
scoreboard players remove @a[scores={char=59,MoldMinions=3,spores=5..}] spores 5

execute as @e[tag=Mold_Healer] at @s unless entity @n[tag=Mold_Healer_circle,distance=..1] run summon marker ~ ~ ~ {Tags:["Mold_Healer_circle","entities_redmold"]}
execute as @e[tag=Mold_Healer] at @s run tp @n[tag=Mold_Healer_circle,distance=..1] ~ ~ ~
execute as @e[tag=Mold_Healer_circle] at @s unless entity @n[tag=Mold_Healer,distance=..1] run kill @s

scoreboard players add @e[tag=Mold_Healer] spores 1

execute as @e[tag=Mold_Healer_circle] at @s run rotate @s ~3 ~
execute as @e[tag=Mold_Healer_circle] at @s run particle dust{color:[1.0,0.33,0.33],scale:1} ^ ^ ^10 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Healer_circle] at @s run particle dust{color:[1.0,0.33,0.33],scale:1} ^ ^ ^-10 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Healer_circle] at @s run particle dust{color:[1.0,0.33,0.33],scale:1} ^10 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Healer_circle] at @s run particle dust{color:[1.0,0.33,0.33],scale:1} ^-10 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Healer_circle] at @s run particle dust{color:[0.88,0.06,0.35],scale:1} ^7.5 ^ ^7.5 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Healer_circle] at @s run particle dust{color:[0.88,0.06,0.35],scale:1} ^-7.5 ^ ^-7.5 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Healer_circle] at @s run particle dust{color:[0.88,0.06,0.35],scale:1} ^7.5 ^ ^-7.5 0.1 0.2 0.1 0 10
execute as @e[tag=Mold_Healer_circle] at @s run particle dust{color:[0.88,0.06,0.35],scale:1} ^-7.5 ^ ^7.5 0.1 0.2 0.1 0 10

execute at @e[tag=Mold_Healer,scores={spores=120..}] run playsound entity.zombie.infect master @a[distance=..12] ~ ~ ~ 1 0.1 1
execute at @e[tag=Mold_Healer,scores={spores=120..}] run playsound block.nether_wart.break master @a[distance=..12] ~ ~ ~ 1 0.1 1
execute at @e[tag=Mold_Healer,scores={spores=120..}] at @e[distance=0.5..10,tag=MoldHost] run particle block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~1.5 ~ 0.9 0.6 0.9 0.01 20 force
execute at @e[tag=Mold_Healer,scores={spores=120..}] at @e[distance=0.5..10,tag=MoldHost] run particle crimson_spore ~ ~1.5 ~ 0.9 0.6 0.9 0.00001 20 force
execute at @e[tag=Mold_Healer,scores={spores=120..}] run effect give @e[distance=0.5..10,tag=MoldHost] instant_damage
execute at @e[tag=Mold_Healer,scores={spores=120..}] run effect give @e[distance=0.5..10,tag=MoldHost] absorption
execute at @e[tag=Mold_Healer,scores={spores=120..}] run scoreboard players remove @e[distance=0.5..10,tag=MoldHost,tag=!Mold_Healer] SummonAge 80

scoreboard players set @e[tag=Mold_Healer,scores={spores=120..}] spores 1

# knight

execute at @a[scores={char=59,MoldMinions=4,spores=..7}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
execute as @a[scores={char=59,MoldMinions=4,spores=8..}] at @s run summon husk ^ ^ ^ {Health:30.0f,IsBaby:0b,Tags:["MoldHost","Mold_Knight","entities_redmold"],attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.25}],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":10554894},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":10554894},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":2631480},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-715510116,1972850668,-1159482191,-631006333],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzU3NWFhZjc0ZDlkYjA3ODdmMjAwMzM0ZjU3YTUzMjUwZDlhNzQ5ZTU0ZTU5NWY4M2JkYTBkNWNhZGNiNWI1MCJ9fX0="}]}},count:1}}}
scoreboard players remove @a[scores={char=59,MoldMinions=4,spores=8..}] spores 8

scoreboard players add @e[tag=Mold_Knight] spores 1

execute at @e[tag=Mold_Knight,scores={spores=160..}] run particle sweep_attack ~ ~1 ~ 2 0.5 2 0.1 30
execute at @e[tag=Mold_Knight,scores={spores=160..}] run particle falling_dust{block_state:{Name:"minecraft:nether_wart"}} ~ ~1 ~ 2 0.5 2 0.1 10
execute at @e[tag=Mold_Knight,scores={spores=160..}] run playsound entity.husk.hurt master @a[distance=..8] ~ ~ ~ 1 0.8 1

execute at @e[tag=Mold_Knight,scores={spores=160..}] as @e[tag=valid_spell_target,distance=..4] unless score @s Team = @p[scores={char=59}] Team run scoreboard players set @s CC_stun 20

scoreboard players set @e[tag=Mold_Knight,scores={spores=160..}] spores 1

# runner

execute at @a[scores={char=59,MoldMinions=5,spores=..0}] run playsound entity.wandering_trader.hurt master @a[scores={char=59}] ~ ~ ~ 1 1 1
execute as @a[scores={char=59,MoldMinions=5,spores=1..}] at @s run summon husk ^ ^ ^ {Health:16.0f,IsBaby:1b,Tags:["MoldHost","Mold_Runner","entities_redmold"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:19999980,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.3}],equipment:{chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":14548992},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1786004301,-1930670662,-1498883828,1723512729],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmFmMjdiNTg1NTA4YWRiNTA5MDRkY2QxMDY1Nzc1ZjNiODMwMjlhOThiZTkyZTk4ZDMwMWJhMzdlNDRkZDM4NCJ9fX0="}]}},count:1}}}
scoreboard players remove @a[scores={char=59,MoldMinions=5,spores=1..}] spores 1

execute at @e[tag=Mold_Runner] as @e[tag=valid_spell_target,distance=..1.5] unless score @s Team = @p[scores={char=59}] Team run summon minecraft:marker ~ ~ ~ {Tags:["runner_boom","entities_redmold"]}

execute at @e[tag=runner_boom] run tp @e[tag=Mold_Runner] ~ ~-100 ~
execute at @e[tag=runner_boom] run kill @e[tag=Mold_Runner]
execute at @e[tag=runner_boom] run particle crimson_spore ~ ~ ~ 2 2 2 0.1 600
execute at @e[tag=runner_boom] run particle explosion ~ ~ ~ 1 1 1 0 4
execute at @e[tag=runner_boom] as @e[distance=..3,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run effect give @s slowness 2 2
execute at @e[tag=runner_boom] as @e[distance=..3,tag=valid_spell_target] unless score @s Team = @p[scores={char=59}] Team run damage @s 4 generic by @p[scores={char=59}] from @p[scores={char=59}]

kill @e[tag=runner_boom]



scoreboard players set @a[scores={char=59,MoldMinions=1..}] MoldMinions 0

# red mold

scoreboard players set @a[scores={s0_timer=1,char=59}] spellCD0 100
scoreboard players add @a[scores={s0_timer=1..,char=59}] s0_timer 1
scoreboard players set @a[scores={s0_timer=101..,char=59}] s0_timer 0

scoreboard players set @a[scores={s1_timer=1,char=59}] spellCD1 60
scoreboard players add @a[scores={s1_timer=1..,char=59}] s1_timer 1
scoreboard players set @a[scores={s1_timer=61..,char=59}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=59}] spellCD2 60
scoreboard players add @a[scores={s2_timer=1..,char=59}] s2_timer 1
scoreboard players set @a[scores={s2_timer=61..,char=59}] s2_timer 0


execute as @a[scores={char=59,s0_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:0b}]}] run clear @a[scores={char=59}] warped_fungus_on_a_stick[custom_data={s0:1}]
item replace entity @a[scores={char=59,s0_timer=0}] hotbar.0 with warped_fungus_on_a_stick[minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Command and Control"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:0.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.1d,operation:"add_multiplied_base",slot:"mainhand"}],custom_data={s0:1}] 1

execute as @a[scores={char=59,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=59}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=59,s1_timer=0}] hotbar.1 with carrot_on_a_stick[minecraft:custom_name={text:"It Grows",color:"dark_aqua",bold:1b},custom_data={s1:1},item_model=crimson_fungus] 1

execute as @a[scores={char=59,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=59}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=59,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[minecraft:custom_name={text:"Army of Horrors",color:"dark_aqua",bold:1b},custom_data={s2:1},item_model=nether_wart] 1