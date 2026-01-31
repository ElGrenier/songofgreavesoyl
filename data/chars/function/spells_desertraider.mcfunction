kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_sword"}}]



#passive

scoreboard players set @a[scores={char=44,CC_grounded=1..}] passive_raid_timer -60
scoreboard players set @a[scores={char=44,CC_root=1..}] passive_raid_timer -60
scoreboard players set @a[scores={char=44,CC_stun=1..}] passive_raid_timer -60
scoreboard players set @a[scores={char=44,CC_silence=1..}] passive_raid_timer -60

execute as @a[scores={char=44,universal_death=1..}] run kill @e[tag=raider_hook]
execute as @a[scores={char=44,universal_death=1..}] run kill @e[tag=grapple_point]
execute as @a[scores={char=44,CC_grounded=1..}] run kill @e[tag=raider_hook]
execute as @a[scores={char=44,CC_root=1..}] run kill @e[tag=raider_hook]
execute as @a[scores={char=44,CC_stun=1..}] run kill @e[tag=raider_hook]
execute as @a[scores={char=44,CC_silence=1..}] run kill @e[tag=raider_hook]

execute as @a[scores={char=44,universal_death=1..}] run kill @e[tag=grapple_rope_point]
execute as @a[scores={char=44,universal_death=1..}] run kill @e[tag=grapple_rope_point]
execute as @a[scores={char=44,CC_grounded=1..}] run kill @e[tag=grapple_rope_point]
execute as @a[scores={char=44,CC_root=1..}] run kill @e[tag=grapple_rope_point]
execute as @a[scores={char=44,CC_stun=1..}] run kill @e[tag=grapple_rope_point]
execute as @a[scores={char=44,CC_silence=1..}] run kill @e[tag=grapple_rope_point]

execute if entity @a[scores={char=44,universal_death=1..}] run kill @e[tag=raider_hook]
execute if entity @a[scores={char=44,universal_death=1..}] run kill @e[tag=grapple_rope_point]
execute if entity @e[tag=raider_hook] run scoreboard players set @a s0_timer 0



execute at @a[scores={s0_timer=1..,passive_raid=1..,passive_raid_timer=0..,char=44}] run playsound item.crossbow.loading_end master @a[distance=..10] ~ ~ ~ 1 1.6 1
execute as @a[scores={s0_timer=1..,passive_raid=1..,passive_raid_timer=0..,char=44}] at @s run summon block_display ~ ~ ~ {Tags:["raider_hook","entities_raider"],block_state:{Name:"minecraft:iron_bars",Properties:{east:"true",north:"true",south:"true",waterlogged:"false",west:"true"}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[-0.5f,-0.5f,-0.5f]}}
tp @e[tag=raider_hook,scores={passive_raid=1}] @p[scores={char=44}]
execute as @e[tag=raider_hook,scores={passive_raid=1}] positioned as @s run tp @s ~ ~1 ~
scoreboard players add @a[scores={char=44,passive_raid_timer=..200}] passive_raid_timer 1
scoreboard players add @a[scores={char=44,passive_raid_timer=200..,passive_raid=..2}] passive_raid 1
scoreboard players set @a[scores={char=44,passive_raid_timer=200..}] passive_raid_timer 0
scoreboard players set @a[scores={char=44,passive_raid=3..,passive_raid_timer=0..}] passive_raid_timer 0

scoreboard players add @e[tag=raider_hook] passive_raid 1

execute as @e[tag=raider_hook,scores={passive_raid=2..21}] positioned as @s rotated as @s if block ^ ^ ^1 #minecraft:dash run tp @s ^ ^ ^1
execute as @e[tag=raider_hook,scores={passive_raid=2..21}] positioned as @s rotated as @s unless block ^ ^ ^1 #minecraft:dash run kill @e[tag=grapple_rope_point]

execute as @e[tag=raider_hook,scores={passive_raid=2..21}] positioned as @s rotated as @s unless block ^ ^ ^1 #minecraft:dash run summon block_display ~ ~ ~ {Tags:["grapple_point","grapple_rope_point","entities_raider"],block_state:{Name:"minecraft:iron_bars",Properties:{east:"true",north:"true",south:"true",waterlogged:"false",west:"true"}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[-0.5f,-0.5f,-0.5f]}}
execute as @e[tag=raider_hook,scores={passive_raid=2..21}] positioned as @s rotated as @s unless block ^ ^ ^1 #minecraft:dash run playsound block.chain.place master @a[distance=..20] ~ ~ ~ 1 0.6 1
execute as @e[tag=raider_hook,scores={passive_raid=2..21}] positioned as @s rotated as @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute if entity @e[tag=grapple_point] at @a[scores={char=44}] run playsound item.crossbow.loading_start master @a[distance=..10] ~ ~ ~ 1 1.2 1
execute if entity @e[tag=grapple_point] run effect give @a[scores={char=44}] levitation 2 2 true
execute if entity @e[tag=grapple_point] run effect give @a[scores={char=44}] slow_falling 2 2 true
execute if entity @e[tag=grapple_point] as @e[scores={char=44}] at @s run tp @s ~ ~ ~ facing entity @e[tag=grapple_point,limit=1]
execute if entity @e[tag=grapple_point] as @e[scores={char=44}] at @s run tp @s ^ ^ ^1

execute as @a[scores={char=44}] at @s if entity @e[distance=..1.5,tag=grapple_point] run effect clear @a[scores={char=44}] slow_falling
execute as @a[scores={char=44}] at @s if entity @e[distance=..1.5,tag=grapple_point] run effect clear @a[scores={char=44}] levitation
execute as @a[scores={char=44}] at @s if entity @e[distance=..1.5,tag=grapple_point] run scoreboard players set @a[scores={char=44}] CC_intangible 0
execute as @a[scores={char=44}] at @s if entity @e[distance=..1.5,tag=grapple_point] run kill @e[tag=grapple_point]

execute at @e[tag=raider_hook,scores={passive_raid=22..}] run kill @e[tag=grapple_rope_point]
kill @e[tag=raider_hook,scores={passive_raid=22..}]


#execute as @e[tag=raider_hook,scores={passive_raid=2..21}] positioned as @s rotated as @s if block ^ ^ ^1 #dash unless block ^ ^ ^2 #dash run tp @a[scores={char=44}] ~ ~ ~
#execute as @e[tag=raider_hook,scores={passive_raid=2..21}] positioned as @s rotated as @s if block ^ ^ ^1 #dash unless block ^ ^ ^2 #dash run kill @s
#execute as @e[tag=raider_hook,scores={passive_raid=22..}] positioned as @s rotated as @s if block ~ ~-1 ~ #dash run tp @s ~ ~-.7 ~
#execute as @e[tag=raider_hook,scores={passive_raid=22..}] positioned as @s rotated as @s unless block ~ ~-1 ~ #dash run tp @a[scores={char=44}] ~ ~ ~
#execute as @e[tag=raider_hook,scores={passive_raid=22..}] positioned as @s rotated as @s unless block ~ ~-1 ~ #dash run kill @s

title @a[scores={char=44,passive_raid=0,passive_raid_timer=0..}] actionbar [{text:"[ ",color:"#523A1E",bold:1b,type:"text"},{text:"- - -",color:"gray",type:"text"},{text:" ]",color:"#523A1E",bold:1b,type:"text"}]
title @a[scores={char=44,passive_raid=1,passive_raid_timer=0..}] actionbar [{text:"[ ",color:"#523A1E",bold:1b,type:"text"},{text:"X",bold:1b,color:"dark_red",type:"text"},{text:" - -",color:"gray",type:"text"},{text:" ]",color:"#523A1E",bold:1b,type:"text"}]
title @a[scores={char=44,passive_raid=2,passive_raid_timer=0..}] actionbar [{text:"[ ",color:"#523A1E",bold:1b,type:"text"},{text:"X",bold:1b,color:"dark_red",type:"text"},{text:" X",bold:1b,color:"dark_red",type:"text"},{text:" -",bold:1b,color:"gray",type:"text"},{text:" ]",color:"#523A1E",bold:1b,type:"text"}]
title @a[scores={char=44,passive_raid=3,passive_raid_timer=0..}] actionbar [{text:"[ ",color:"#523A1E",bold:1b,type:"text"},{text:"X",bold:1b,color:"dark_red",type:"text"},{text:" X",bold:1b,color:"dark_red",type:"text"},{text:" X",bold:1b,color:"dark_red",type:"text"},{text:"",bold:1b,color:"gray",type:"text"},{text:" ]",color:"#523A1E",bold:1b,type:"text"}]
title @a[scores={char=44,passive_raid_timer=..-1}] actionbar [{text:"[ ",color:"#523A1E",bold:1b,type:"text"},{text:"DISABLED",bold:1b,color:"dark_red",type:"text"},{text:"",bold:1b,color:"dark_red",type:"text"},{text:"",bold:1b,color:"dark_red",type:"text"},{text:"",bold:1b,color:"gray",type:"text"},{text:" ]",color:"#523A1E",bold:1b,type:"text"}]
scoreboard players remove @a[scores={s0_timer=1..,passive_raid=1..,passive_raid_timer=0..}] passive_raid 1
scoreboard players set @a[scores={char=44}] s0_timer 0

execute unless entity @e[tag=grapple_animation_fix] run summon marker ~ ~ ~ {Tags:["grapple_animation_fix","entities_raider"]}
execute as @p[scores={char=44}] at @s run tp @e[tag=grapple_animation_fix] ~ ~1 ~

execute at @e[tag=raider_hook] unless entity @e[tag=grapple_rope_point] run summon marker ~ ~ ~ {Tags:["grapple_rope_point","entities_raider"]}
execute as @e[tag=raider_hook] at @s run tp @e[tag=grapple_rope_point] ~ ~ ~

execute as @e[tag=grapple_rope_point] at @s run tp @s ~ ~ ~ facing entity @e[tag=grapple_animation_fix,limit=1]

execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..1] unless entity @e[tag=grapple_rope1] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope1","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..2] unless entity @e[tag=grapple_rope2] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope2","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..3] unless entity @e[tag=grapple_rope3] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope3","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..4] unless entity @e[tag=grapple_rope4] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope4","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..5] unless entity @e[tag=grapple_rope5] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope5","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..6] unless entity @e[tag=grapple_rope6] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope6","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..7] unless entity @e[tag=grapple_rope7] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope7","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..8] unless entity @e[tag=grapple_rope8] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope8","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..9] unless entity @e[tag=grapple_rope9] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope9","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..10] unless entity @e[tag=grapple_rope10] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope10","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..11] unless entity @e[tag=grapple_rope11] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope11","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..12] unless entity @e[tag=grapple_rope12] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope12","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..13] unless entity @e[tag=grapple_rope13] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope13","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..14] unless entity @e[tag=grapple_rope14] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope14","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..15] unless entity @e[tag=grapple_rope15] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope15","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..16] unless entity @e[tag=grapple_rope16] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope16","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..17] unless entity @e[tag=grapple_rope17] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope17","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..18] unless entity @e[tag=grapple_rope18] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope18","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..19] unless entity @e[tag=grapple_rope19] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope19","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}
execute as @e[tag=grapple_rope_point] at @s unless entity @a[scores={char=44},distance=..20] unless entity @e[tag=grapple_rope20] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["grapple_rope20","grappling_hook_visuals","entities_raider"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.6f],scale:[0.1f,0.1f,1.2f]},block_state:{Name:"minecraft:jungle_wood"}}


execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..1.9] run kill @e[tag=grapple_rope2] 
execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..2.9] run kill @e[tag=grapple_rope3] 
execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..3.9] run kill @e[tag=grapple_rope4] 
execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..4.9] run kill @e[tag=grapple_rope5] 
execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..5.9] run kill @e[tag=grapple_rope6] 
execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..6.9] run kill @e[tag=grapple_rope7] 
execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..7.9] run kill @e[tag=grapple_rope8] 
execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..8.9] run kill @e[tag=grapple_rope9] 
execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..9.9] run kill @e[tag=grapple_rope10] 
execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..10.9] run kill @e[tag=grapple_rope11] 
execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..11.9] run kill @e[tag=grapple_rope12] 
execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..12.9] run kill @e[tag=grapple_rope13] 
execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..13.9] run kill @e[tag=grapple_rope14] 
execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..14.9] run kill @e[tag=grapple_rope15] 
execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..15.9] run kill @e[tag=grapple_rope16] 
execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..16.9] run kill @e[tag=grapple_rope17] 
execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..17.9] run kill @e[tag=grapple_rope18] 
execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..18.9] run kill @e[tag=grapple_rope19] 
execute as @e[tag=grapple_rope_point] at @s if entity @a[scores={char=44},distance=..19.9] run kill @e[tag=grapple_rope20] 


execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^1 run tp @e[tag=grapple_rope1] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^2 run tp @e[tag=grapple_rope2] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^3 run tp @e[tag=grapple_rope3] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^4 run tp @e[tag=grapple_rope4] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^5 run tp @e[tag=grapple_rope5] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^6 run tp @e[tag=grapple_rope6] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^7 run tp @e[tag=grapple_rope7] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^8 run tp @e[tag=grapple_rope8] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^9 run tp @e[tag=grapple_rope9] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^10 run tp @e[tag=grapple_rope10] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^11 run tp @e[tag=grapple_rope11] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^12 run tp @e[tag=grapple_rope12] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^13 run tp @e[tag=grapple_rope13] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^14 run tp @e[tag=grapple_rope14] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^15 run tp @e[tag=grapple_rope15] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^16 run tp @e[tag=grapple_rope16] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^17 run tp @e[tag=grapple_rope17] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^18 run tp @e[tag=grapple_rope18] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^19 run tp @e[tag=grapple_rope19] ~ ~ ~
execute as @e[tag=grapple_rope_point] at @s positioned ^ ^ ^20 run tp @e[tag=grapple_rope20] ~ ~ ~


execute as @e[tag=grappling_hook_visuals] at @s run rotate @s facing entity @e[tag=grapple_rope_point,limit=1]
execute unless entity @e[tag=grapple_rope_point] run kill @e[tag=grappling_hook_visuals]



#constrict
clear @a[scores={char=44,s1_timer=1,CC_silence=0}] *[custom_data={s1:1}]
clear @a[scores={char=44,s1_timer_recast=1,CC_silence=0}] *[custom_data={s1:2}]

scoreboard players set @a[scores={char=44,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=44,s1_timer=1,CC_silence=1..}] s1_timer 200

execute at @a[scores={char=44,death_dash_reset=1..}] run tag @a remove constrict_victim
execute at @a[scores={char=44,death_dash_reset=1..}] run scoreboard players set @a constricted 0
execute at @a[scores={char=44,death_dash_reset=1..}] run scoreboard players set @a constrict_choke 0

execute at @a[scores={char=44,s1_timer=1}] run tag @a remove constrict_victim
execute at @a[scores={char=44,s1_timer=1}] run scoreboard players set @a constricted 0
execute at @a[scores={char=44,s1_timer=1}] run scoreboard players set @a constrict_choke 0
execute at @a[scores={char=44,s1_timer=1,CC_silence=0}] run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,Tags:["bola"]}
execute as @a[scores={char=44,s1_timer=1,CC_silence=0}] as @e[tag=bola] rotated as @s at @s run tp @s ~ ~ ~ ~-120 ~
execute at @a[scores={char=44,s1_timer=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,Tags:["bola"]}
execute as @a[scores={char=44,s1_timer=1,CC_silence=0}] as @e[tag=bola] rotated as @s at @s run tp @s ~ ~ ~ ~-120 ~
execute at @a[scores={char=44,s1_timer=1,CC_silence=0}] run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,Tags:["bola"]}
execute as @a[scores={char=44,s1_timer=1,CC_silence=0}] as @e[tag=bola] rotated as @s at @s run tp @s ~ ~ ~ ~-120 ~

effect give @a[scores={char=44,s1_timer=1,CC_silence=0}] slowness 1 4
execute if entity @a[scores={char=44,s1_timer=1..21}] as @e[tag=bola] rotated as @s at @s run tp @s ~ ~ ~ ~-9 ~
execute if entity @a[scores={char=44,s1_timer=1..21}] as @e[tag=bola] rotated as @s positioned as @a[scores={char=44}] run particle minecraft:crit ^ ^1.5 ^1.5 0.1 0 0.1 0 15 force @a
execute if entity @a[scores={char=44,s1_timer=1..21}] as @e[tag=bola] rotated as @s at @s run tp @s ~ ~ ~ ~-9 ~
execute if entity @a[scores={char=44,s1_timer=1..21}] as @e[tag=bola] rotated as @s positioned as @a[scores={char=44}] run particle minecraft:crit ^ ^.1 ^.5 0.1 0 0.1 0 15 force @a
execute as @a[scores={char=44,s1_timer=1..21,CC_silence=0}] at @s run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ .5 1 .5
execute as @a[scores={char=44,CC_silence=1..}] run kill @e[tag=bola]
execute at @a[scores={char=44,s1_timer=21}] if entity @e[tag=bola] run summon marker ~ ~1.6 ~ {Tags:["bola2"]}
execute as @a[scores={char=44,s1_timer=21}] run kill @e[tag=bola]
execute as @a[scores={char=44,s1_timer=21,CC_silence=0}] at @s run playsound item.trident.riptide_3 master @a[distance=..10] ~ ~ ~ .7 1.5 .7
execute at @e[tag=bola2] run particle crit ~ ~ ~ 0.5 0.1 0.5 0 30 force @a
tp @e[tag=bola2] @p[scores={char=44,s1_timer=21}]
execute as @a[scores={char=44,s1_timer=21}] positioned as @e[tag=bola2] run tp @e[tag=bola2] ~ ~1.6 ~
execute if entity @a[scores={char=44,s1_timer=22..42}] as @e[tag=bola2] at @s rotated as @s if block ^ ^ ^1 #minecraft:dash run tp ^ ^ ^1
execute if entity @a[scores={char=44,s1_timer=22..42}] as @e[tag=bola2] at @s rotated as @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @a[scores={char=44,s1_timer=42}] run kill @e[tag=bola2]

execute at @e[tag=bola2] positioned ~-.5 ~-.5 ~-.5 as @p[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=44}] Team run scoreboard players set @s constricted 101

execute at @e[scores={constricted=1..}] run kill @e[tag=bola2]
scoreboard players set @a[scores={universal_death=1..}] constricted 0
execute if entity @a[scores={char=44,universal_death=1..}] run scoreboard players set @e[scores={constricted=1..}] constricted 0
scoreboard players remove @e[scores={constricted=1..}] constricted 1
execute as @e[scores={constricted=100}] at @s run playsound entity.leash_knot.place master @s ~ ~ ~ 1 0.5 1
effect give @e[scores={constricted=100}] slowness 1 4
execute as @e[scores={constricted=1..}] at @s run particle item{item:"lead"} ~ ~1 ~ 0 .6 0 0 30 normal

execute at @a[scores={char=44}] run scoreboard players add @e[scores={constricted=1..},distance=..10] constrict_choke 1

#recast
execute at @a[scores={char=44,s1_timer_recast=1,CC_silence=0}] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.4 1.4 0.4 0.00001 50 normal
execute at @a[scores={char=44,s1_timer_recast=1,CC_silence=0}] run particle crit ~ ~1 ~ 0.4 0.6 0.4 0 50
execute at @a[scores={char=44,s1_timer_recast=1,CC_silence=0}] run tag @e[distance=..10,scores={constricted=1..,constrict_choke=40..}] add constrict_victim
execute at @a[scores={char=44,s1_timer_recast=1,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @a[scores={char=44,s1_timer_recast=3,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 1 1.7 1
execute at @a[scores={char=44,s1_timer_recast=5,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 1 1.9 1
execute at @a[scores={char=44,s1_timer_recast=7,CC_silence=0}] run playsound entity.player.attack.strong master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=44,s1_timer_recast=1..7,CC_silence=0}] run particle sweep_attack ~ ~1 ~ 0.4 0.6 0.4 0 5
execute at @a[scores={char=44,s1_timer_recast=1..7,CC_silence=0}] run particle crit ~ ~1 ~ 0.4 0.6 0.4 0 5


scoreboard players set @e[tag=constrict_victim] constricted 0
scoreboard players set @e[tag=constrict_victim] constrict_choke 0
scoreboard players set @e[tag=constrict_victim] CC_stun 10

execute at @e[tag=constrict_victim] run effect clear @a[scores={char=44}] levitation
execute at @e[tag=constrict_victim] run kill @e[tag=grapple_point]
tp @a[scores={char=44,s1_timer_recast=2,CC_silence=0}] @n[tag=constrict_victim]
execute at @a[scores={char=44,s1_timer_recast=3,CC_silence=0}] as @e[tag=constrict_victim] run damage @s 8 generic by @p[scores={char=44}] from @p[scores={char=44}]
execute at @a[scores={char=44,s1_timer_recast=3..}] run tag @e remove constrict_victim

execute at @e[scores={constricted=1..}] unless entity @e[tag=constrict_range] run summon marker ~ ~ ~ {Tags:["constrict_range","entities_raider"]}
execute at @e[scores={constricted=1..}] run tp @e[tag=constrict_range] ~ ~0.1 ~
execute unless entity @e[scores={constricted=1..}] run kill @e[tag=constrict_range]

execute as @e[tag=constrict_range] at @s run rotate @s ~9 ~
execute as @e[tag=constrict_range] at @s run particle crit ^ ^ ^10 0.1 0.1 0.1 0 10 force @p[scores={char=44}]
execute as @e[tag=constrict_range] at @s run particle crit ^ ^ ^-10 0.1 0.1 0.1 0 10 force @p[scores={char=44}]
execute as @e[tag=constrict_range] at @s run particle crit ^10 ^ ^ 0.1 0.1 0.1 0 10 force @p[scores={char=44}]
execute as @e[tag=constrict_range] at @s run particle crit ^-10 ^ ^ 0.1 0.1 0.1 0 10 force @p[scores={char=44}]
execute as @e[tag=constrict_range] at @s run particle crit ^7.5 ^ ^7.5 0.1 0.1 0.1 0 10 force @p[scores={char=44}]
execute as @e[tag=constrict_range] at @s run particle crit ^-7.5 ^ ^-7.5 0.1 0.1 0.1 0 10 force @p[scores={char=44}]
execute as @e[tag=constrict_range] at @s run particle crit ^7.5 ^ ^-7.5 0.1 0.1 0.1 0 10 force @p[scores={char=44}]
execute as @e[tag=constrict_range] at @s run particle crit ^-7.5 ^ ^7.5 0.1 0.1 0.1 0 10 force @p[scores={char=44}]

#left for dead



execute at @a[scores={char=44,death_dash_reset=1..}] run kill @e[tag=sands_dashes]
execute at @a[scores={char=44,universal_death=1..}] run kill @e[tag=sands_dashes]
execute at @a[scores={char=44,CC_grounded=1..}] run kill @e[tag=sands_dashes]
execute at @a[scores={char=44,CC_root=1..}] run kill @e[tag=sands_dashes]
execute at @a[scores={char=44,CC_stun=1..}] run kill @e[tag=sands_dashes]
execute at @a[scores={char=44,CC_silence=1..}] run kill @e[tag=sands_dashes]


execute at @a[scores={char=44,s2_timer=1,CC_silence=0}] run playsound block.sand.break master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=44,s2_timer=1,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=44,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["s_dash_first","sands_dashes","entities_raider"]}
execute at @a[scores={char=44,s2_timer=1,CC_silence=0}] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.5 0.4 0.5 0.00001 50 normal
tp @e[tag=s_dash_first,limit=1] @a[scores={char=44,s2_timer=1},limit=1]
execute at @a[scores={char=44,s2_timer=1},limit=1] run tp @e[tag=s_dash_first,limit=1] ~ ~0.75 ~

execute as @e[tag=s_dash_first] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=s_dash_first] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=s_dash_first] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=s_dash_first] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=s_dash_first] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=s_dash_first] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=s_dash_first] at @s run tp @s ^ ^ ^0.8

tp @a[scores={char=44,s2_timer=1..6,death_dash_reset=0}] @e[tag=s_dash_first,limit=1]
execute at @a[scores={char=44,s2_timer=6}] run kill @e[tag=s_dash_first]
execute as @a[scores={char=44,s2_timer=6}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~


execute as @e[tag=s_dash_second] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=s_dash_second] at @s unless block ^ ^ ^-1 #minecraft:dash run kill @s
execute as @e[tag=s_dash_second] at @s unless block ^ ^1 ^-0.5 #minecraft:dash run kill @s
execute as @e[tag=s_dash_second] at @s unless block ^ ^1.5 ^-1.5 #minecraft:dash run kill @s
execute as @e[tag=s_dash_second] at @s unless block ^ ^1 ^-1 #minecraft:dash run kill @s
execute as @e[tag=s_dash_second] at @s unless block ^ ^ ^-1 #minecraft:dash run kill @s
execute as @e[tag=s_dash_second] at @s run tp @s ^ ^ ^-1

tp @a[scores={char=44,s2_timer_recast=1..8,death_dash_reset=0}] @e[tag=s_dash_second,limit=1]
execute at @a[scores={char=44,s2_timer_recast=8}] run kill @e[tag=s_dash_second]
execute as @a[scores={char=44,s2_timer_recast=8}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

execute at @e[tag=sands_dashes] run particle crit ~ ~1 ~ 0.8 0.5 0.8 0.1 1 normal

execute at @e[tag=s_dash_first] positioned ~-0.75 ~-0.75 ~-0.75 as @p[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=44}] Team run tag @s add raider_execute

execute at @e[tag=raider_execute] run kill @e[tag=s_dash_first]
execute at @e[tag=raider_execute] run particle crit ~ ~1 ~ 0.6 0.8 0.6 0.3 80
execute at @e[tag=raider_execute] run scoreboard players set @a[scores={char=44}] s2_timer_recast 1
scoreboard players set @e[tag=raider_execute] CC_defiled 60
scoreboard players set @e[tag=raider_execute] CC_knockdown 5
damage @e[tag=raider_execute,limit=1,scores={HPercentage=31..}] 4 generic by @p[scores={char=44}] from @p[scores={char=44}]
damage @e[tag=raider_execute,limit=1,scores={HPercentage=..30}] 8 generic by @p[scores={char=44}] from @p[scores={char=44}]

tag @e remove raider_execute

execute at @a[scores={char=44,s2_timer_recast=1,CC_silence=0}] run playsound block.sand.place master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=44,s2_timer_recast=1,CC_silence=0}] run playsound entity.player.attack.strong master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=44,s2_timer_recast=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["s_dash_second","sands_dashes","entities_raider"]}
execute at @a[scores={char=44,s2_timer_recast=1,CC_silence=0}] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.5 0.3 0.5 0.00001 30 normal
tp @e[tag=s_dash_second,limit=1] @a[scores={char=44,s2_timer_recast=1},limit=1]
execute at @a[scores={char=44,s2_timer_recast=1},limit=1] run tp @e[tag=s_dash_second,limit=1] ~ ~0.5 ~ ~ 10



# raider

scoreboard players add @a[scores={s0_timer=1..,char=44}] s0_timer 1
scoreboard players set @a[scores={s0_timer=11..,char=44}] s0_timer 0

scoreboard players set @a[scores={s1_timer=140,char=44}] spellCD1 120
scoreboard players add @a[scores={s1_timer=1..,char=44}] s1_timer 1
scoreboard players set @a[scores={s1_timer=261..,char=44}] s1_timer 0

scoreboard players add @a[scores={s1_timer_recast=1..,char=44}] s1_timer_recast 1
scoreboard players set @a[scores={s1_timer_recast=20..,char=44}] s1_timer_recast 0

scoreboard players set @a[scores={s2_timer=1,char=44}] spellCD2 320
scoreboard players add @a[scores={s2_timer=1..,char=44}] s2_timer 1
scoreboard players set @a[scores={s2_timer=321..,char=44}] s2_timer 0

scoreboard players add @a[scores={s2_timer_recast=1..,char=44}] s2_timer_recast 1
scoreboard players set @a[scores={s2_timer_recast=20..,char=44}] s2_timer_recast 0

execute as @a[scores={char=44}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:0b}]}] run clear @a[scores={char=44}] warped_fungus_on_a_stick[custom_data={s0:1}]
item replace entity @a[scores={char=44}] hotbar.0 with warped_fungus_on_a_stick[custom_data={s0:1},minecraft:item_model="minecraft:wooden_sword",minecraft:custom_name={bold:1b,color:"gray",text:"Rusted Knife"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1

execute as @a[scores={char=44,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=44}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=44,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:string",minecraft:custom_name={text:"Constrict",color:"dark_aqua",bold:1b}] 1

execute at @a[scores={char=44}] if entity @e[scores={constrict_choke=40..},distance=..10] as @a[scores={char=44,s1_timer_recast=0,s1_timer=1..139}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=44}] carrot_on_a_stick[custom_data={s1:2}]
execute at @a[scores={char=44}] if entity @e[scores={constrict_choke=40..},distance=..10] run item replace entity @a[scores={char=44,s1_timer_recast=0,s1_timer=1..139}] hotbar.1 with carrot_on_a_stick[custom_data={s1:2},minecraft:item_model="minecraft:bone_meal",minecraft:custom_name={text:"Choke",color:"dark_aqua",bold:1b}] 1
execute at @a[scores={char=44}] unless entity @e[scores={constrict_choke=40..},distance=..10] run clear @a[scores={char=44}] carrot_on_a_stick[custom_data={s1:2}]

execute as @a[scores={char=44,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=44}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=44,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:suspicious_sand",minecraft:custom_name={text:"Dead in the Sands",color:"dark_aqua",bold:1b}] 1

