kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_axe"}}]

#claws of the desert

scoreboard players set @a[scores={char=24,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=24,s1_timer=1,CC_silence=1..}] s1_timer 100

execute at @a[scores={char=24,s1_timer=1,CC_silence=0}] run playsound block.sand.place master @a[distance=..1] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=24,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Invisible:1b,Tags:["sand_claw","projectile","entities_sandwitch"]}
tp @e[tag=sand_claw,limit=1] @a[scores={char=24,s1_timer=1},limit=1]
execute store result entity @e[tag=sand_claw,limit=1] Rotation[1] float 1 run clear


execute at @e[tag=sand_claw] run particle dust{color:[1.0,0.67,0.0],scale:1} ^1.5 ^0.1 ^0.5 0.1 0 0.1 0.1 20
execute at @e[tag=sand_claw] run particle dust{color:[1.0,0.67,0.0],scale:1} ^-1.5 ^0.1 ^0.5 0.1 0 0.1 0.1 20
execute at @e[tag=sand_claw] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.2 1 0.2 0.0001 20 normal
execute at @e[tag=sand_claw] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.2 1 0.2 0.0001 15 normal
execute at @e[tag=sand_claw] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 1 0.1 1 0.0001 25 normal
execute at @e[tag=sand_claw] run particle wax_on ~ ~1 ~ 0.5 1 0.5 2 2
execute as @e[tag=sand_claw] at @s run tp @s ^ ^ ^0.7


execute as @e[tag=sand_claw] at @s unless block ^ ^1 ^1 #minecraft:dash run particle block{block_state:{Name:"minecraft:sand"}} ~ ~0.5 ~ 1.5 1.5 1.5 1 250
execute as @e[tag=sand_claw] at @s unless block ^ ^1 ^1 #minecraft:dash run playsound block.sand.break master @a[distance=..20] ~ ~ ~ 1 1.2 1
execute as @e[tag=sand_claw] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=sand_claw] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~0.8 ~
execute as @e[tag=sand_claw] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=sand_claw] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

#{teleport_duration:1,Tags:["sand_visual_1","sand_visuals","entities_sandwitch"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:sand"}}
#/summon minecraft:block_display ~ ~ ~ {block_state: {Name: "minecraft:sand"}, transformation: {left_rotation: [0.3826835f, 0.0f, 0.0f, 0.9238795f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0000002f, 1.0000002f, 1.0000002f], translation: [0.0f, 0.0f, 0.0f]}}
#/summon minecraft:block_display ~ ~ ~ {block_state: {Name: "minecraft:sand"}, transformation: {left_rotation: [0.95371705f, 0.0f, 0.0f, 0.3007058f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0000004f, 1.0000002f, 1.0000002f], translation: [0.0f, 0.0f, 0.0f]}}
#/summon minecraft:block_display ~ ~ ~ {block_state: {Name: "minecraft:sand"}, transformation: {left_rotation: [0.3826835f, 0.0f, 0.0f, 0.92387956f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0000006f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}}

execute at @e[tag=sand_claw] unless entity @e[tag=sand_visual_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_visual_1","sand_visuals","entities_sandwitch"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.25f,-0.4f],scale:[0.8f,0.5f,0.8f]},block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sand_claw] unless entity @e[tag=sand_visual_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_visual_2","sand_visuals","entities_sandwitch"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.6f,-0.35f],scale:[0.7f,1.2f,0.7f]},block_state:{Name:"minecraft:sand"}}

execute at @e[tag=sand_claw] unless entity @e[tag=sand_visual_4] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_visual_4","sand_visuals","entities_sandwitch"],transformation:{left_rotation:[0.3826835f, 0.0f, 0.0f, 0.9238795f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.3f],scale:[0.6f,0.6f,0.6f]},block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sand_claw] unless entity @e[tag=sand_visual_5] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_visual_5","sand_visuals","entities_sandwitch"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.3f],scale:[0.6f,0.6f,0.6f]},block_state:{Name:"minecraft:sand"}}

execute at @e[tag=sand_claw] unless entity @e[tag=sand_visual_7] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_visual_7","sand_visuals","entities_sandwitch"],transformation:{left_rotation:[0.3826835f, 0.0f, 0.0f, 0.9238795f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.3f],scale:[0.6f,0.6f,0.6f]},block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sand_claw] unless entity @e[tag=sand_visual_8] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_visual_8","sand_visuals","entities_sandwitch"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.2f,-0.3f],scale:[0.7f,0.4f,0.6f]},block_state:{Name:"minecraft:sand"}}

execute at @e[tag=sand_claw] unless entity @e[tag=sand_visual_9] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_visual_9","sand_visuals","entities_sandwitch"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.3f],scale:[0.2f,0.2f,0.6f]},block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sand_claw] unless entity @e[tag=sand_visual_10] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_visual_10","sand_visuals","entities_sandwitch"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.3f],scale:[0.2f,0.2f,0.6f]},block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sand_claw] unless entity @e[tag=sand_visual_11] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_visual_11","sand_visuals","entities_sandwitch"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.3f],scale:[0.2f,0.2f,0.6f]},block_state:{Name:"minecraft:sand"}}

execute at @e[tag=sand_claw] unless entity @e[tag=sand_visual_12] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_visual_12","sand_visuals","entities_sandwitch"],transformation:{left_rotation:[0.3826835f, 0.0f, 0.0f, 0.9238795f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.2f],scale:[0.2f,0.2f,0.4f]},block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sand_claw] unless entity @e[tag=sand_visual_13] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_visual_13","sand_visuals","entities_sandwitch"],transformation:{left_rotation:[0.3826835f, 0.0f, 0.0f, 0.9238795f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.2f],scale:[0.2f,0.2f,0.4f]},block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sand_claw] unless entity @e[tag=sand_visual_14] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_visual_14","sand_visuals","entities_sandwitch"],transformation:{left_rotation:[0.3826835f, 0.0f, 0.0f, 0.9238795f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.2f],scale:[0.2f,0.2f,0.4f]},block_state:{Name:"minecraft:sand"}}

execute at @e[tag=sand_claw] unless entity @e[tag=sand_visual_15] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_visual_15","sand_visuals","entities_sandwitch"],transformation:{left_rotation:[0.3826835f, 0.0f, 0.0f, 0.92387956f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.15f,-0.1f],scale:[0.2f,0.3f,0.2f]},block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sand_claw] unless entity @e[tag=sand_visual_16] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_visual_16","sand_visuals","entities_sandwitch"],transformation:{left_rotation:[0.3826835f, 0.0f, 0.0f, 0.92387956f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.15f,-0.1f],scale:[0.2f,0.3f,0.2f]},block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sand_claw] unless entity @e[tag=sand_visual_17] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_visual_17","sand_visuals","entities_sandwitch"],transformation:{left_rotation:[0.3826835f, 0.0f, 0.0f, 0.92387956f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.15f,-0.1f],scale:[0.2f,0.3f,0.2f]},block_state:{Name:"minecraft:sand"}}

tp @e[tag=sand_visuals,tag=!sand_readjust] @e[tag=sand_claw,limit=1]
tag @e[tag=sand_visuals] add sand_readjust

execute as @e[tag=sand_claw] at @s run tp @e[tag=sand_visual_1] ^ ^ ^
execute as @e[tag=sand_claw] at @s run tp @e[tag=sand_visual_2] ^ ^0.3 ^-0.1

execute as @e[tag=sand_claw] at @s run tp @e[tag=sand_visual_4] ^ ^1.8 ^-0.1
execute as @e[tag=sand_claw] at @s run tp @e[tag=sand_visual_5] ^ ^1.2 ^-0.1

execute as @e[tag=sand_claw] at @s run tp @e[tag=sand_visual_7] ^ ^2.2 ^0.3
execute as @e[tag=sand_claw] at @s run tp @e[tag=sand_visual_8] ^ ^2.1 ^0.6

execute as @e[tag=sand_claw] at @s run tp @e[tag=sand_visual_9] ^-0.3 ^2.1 ^0.85
execute as @e[tag=sand_claw] at @s run tp @e[tag=sand_visual_10] ^ ^2.3 ^1.1
execute as @e[tag=sand_claw] at @s run tp @e[tag=sand_visual_11] ^0.3 ^2.1 ^0.85

execute as @e[tag=sand_claw] at @s run tp @e[tag=sand_visual_12] ^-0.3 ^2.1 ^1.15
execute as @e[tag=sand_claw] at @s run tp @e[tag=sand_visual_13] ^ ^2.3 ^1.4
execute as @e[tag=sand_claw] at @s run tp @e[tag=sand_visual_14] ^0.3 ^2.1 ^1.15

execute as @e[tag=sand_claw] at @s run tp @e[tag=sand_visual_15] ^-0.3 ^1.9 ^1.15
execute as @e[tag=sand_claw] at @s run tp @e[tag=sand_visual_16] ^ ^2.1 ^1.4
execute as @e[tag=sand_claw] at @s run tp @e[tag=sand_visual_17] ^0.3 ^1.9 ^1.15
execute unless entity @e[tag=sand_claw] run kill @e[tag=sand_visuals]

execute at @e[tag=sand_claw] positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=2,dz=1,tag=valid_spell_target,limit=1] unless score @s Team = @p[scores={char=24}] Team run tag @s add sandexplosion

execute if entity @e[tag=sandexplosion] run kill @e[tag=sand_claw]

execute at @a[scores={char=24,s1_timer=15..}] at @e[tag=sand_claw] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~0.5 ~ 1 1.5 1 1 200
execute at @a[scores={char=24,s1_timer=15..}] at @e[tag=sand_claw] run playsound block.sand.break master @a[distance=..20] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=24,s1_timer=15..}] run kill @e[tag=sand_claw]


execute at @e[tag=sandexplosion] run particle falling_dust{block_state:{Name:"minecraft:sandstone"}} ~ ~1 ~ 1 1 1 1 200 force
execute at @e[tag=sandexplosion] run particle wax_on ~ ~1 ~ 2 2 2 1 100 force
execute at @e[tag=sandexplosion] run playsound block.sand.fall master @a[distance=..20] ~ ~ ~ 1.0 0.6 1.0

effect give @e[tag=sandexplosion] slowness 2 1
damage @n[tag=sandexplosion] 6 generic by @p[scores={char=24}] from @p[scores={char=24}]

tag @e remove sandexplosion



#approaching sandstorm

scoreboard players set @a[scores={char=24,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=24,s2_timer=1,CC_silence=1..}] s2_timer 220

scoreboard players set @a[scores={char=24,s2_timer=1..60,CC_silence=1..}] spellCD2 170
scoreboard players set @a[scores={char=24,s2_timer=1..60,CC_silence=1..}] s2_timer 71

effect give @a[scores={char=24,s2_timer=1,CC_silence=0}] speed 3 0
execute at @a[scores={char=24,s2_timer=1..60,CC_silence=0}] run particle minecraft:wax_on ~ ~0.2 ~ 0.5 0.1 0.5 1 2 force
execute at @a[scores={char=24,s2_timer=1..40,CC_silence=0}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 1 1 1 1 3 force
execute at @a[scores={char=24,s2_timer=1..20,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.5 0.1 0.5 0.001 10 force
execute at @a[scores={char=24,s2_timer=21..40,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 1 0.1 1 0.001 20 force
execute at @a[scores={char=24,s2_timer=41..60,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 2 0.1 2 0.001 30 force
execute at @a[scores={char=24,s2_timer=61,CC_silence=0}] as @p[distance=0.5..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=24}] Team run scoreboard players set @s desert_funeral 1
execute at @a[scores={char=24,s2_timer=61..65,CC_silence=0}] run playsound minecraft:block.sand.fall master @a[distance=..20] ~ ~ ~ 1.0 0.3 1.0

effect give @a[scores={desert_funeral=2..7}] blindness 2
scoreboard players set @a[scores={desert_funeral=2}] CC_stun 30
execute at @a[scores={desert_funeral=2}] run particle wax_on ~ ~ ~ 1.5 1.5 1.5 1 100 force
execute at @a[scores={desert_funeral=2..30}] run particle falling_dust{block_state:{Name:"minecraft:sandstone"}} ~ ~ ~ 0.8 1 0.8 1 10 force
execute at @a[scores={desert_funeral=2..30}] run particle wax_on ~ ~ ~ 0.5 1 0.5 0.1 3 force
execute at @a[scores={desert_funeral=2}] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_tomb_visual_1","sand_tomb_visuals","entities_sandwitch"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.8f,0f,-0.8f],scale:[1.6f,0.5f,1.6f]},block_state:{Name:"minecraft:sand"}}
execute at @a[scores={desert_funeral=2}] run playsound block.sand.place master @a[distance=..20] ~ ~ ~ 1.0 0.2 1.0
execute at @a[scores={desert_funeral=5}] run summon block_display ~ ~0.5 ~ {teleport_duration:1,Tags:["sand_tomb_visual_2","sand_tomb_visuals","entities_sandwitch"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.6f,0f,-0.6f],scale:[1.2f,0.5f,1.2f]},block_state:{Name:"minecraft:sand"}}
execute at @a[scores={desert_funeral=5}] run playsound block.sand.place master @a[distance=..20] ~ ~ ~ 1.0 0.3 1.0
execute at @a[scores={desert_funeral=7}] run summon block_display ~ ~1 ~ {teleport_duration:1,Tags:["sand_tomb_visual_3","sand_tomb_visuals","entities_sandwitch"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,0.5f,1f]},block_state:{Name:"minecraft:sand"}}
execute at @a[scores={desert_funeral=7}] run playsound block.sand.place master @a[distance=..20] ~ ~ ~ 1.0 0.4 1.0
execute at @a[scores={desert_funeral=9}] run summon block_display ~ ~1.2 ~ {teleport_duration:1,Tags:["sand_tomb_visual_4","sand_tomb_visuals","entities_sandwitch"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.45f,0f,-0.45f],scale:[0.9f,0.5f,0.9f]},block_state:{Name:"minecraft:sand"}}
execute at @a[scores={desert_funeral=9}] run playsound block.sand.place master @a[distance=..20] ~ ~ ~ 1.0 0.5 1.0

execute at @a[scores={desert_funeral=1..}] run tp @e[tag=sand_tomb_visual_1] ~ ~ ~
execute at @a[scores={desert_funeral=1..}] run tp @e[tag=sand_tomb_visual_2] ~ ~0.5 ~
execute at @a[scores={desert_funeral=1..}] run tp @e[tag=sand_tomb_visual_3] ~ ~1 ~
execute at @a[scores={desert_funeral=1..}] run tp @e[tag=sand_tomb_visual_4] ~ ~1.2 ~


execute at @a[scores={desert_funeral=30}] run kill @e[tag=sand_tomb_visuals]
execute at @a[scores={desert_funeral=30}] run particle block{block_state:{Name:"minecraft:sandstone"}} ~ ~ ~ 0.8 1 0.8 1 150 force
execute at @a[scores={desert_funeral=30}] run playsound block.sand.break master @a[distance=..20] ~ ~ ~ 1.0 0.5 1.0

scoreboard players add @a[scores={desert_funeral=1..}] desert_funeral 1
scoreboard players set @a[scores={desert_funeral=40..}] desert_funeral 0



title @a[scores={char=24,s2_timer=1..75,CC_silence=0}] times 0 20 0
title @a[scores={char=24,s2_timer=1..75,CC_silence=0}] title {text:" ",type:"text"}
title @a[scores={char=24,s2_timer=1..19,CC_silence=0}] subtitle [{text:"=",bold:1b,color:"gold",type:"text"},{text:" 3 ",bold:1b,color:"yellow",type:"text"},{text:"=",bold:1b,color:"gold",type:"text"}]
title @a[scores={char=24,s2_timer=20..39,CC_silence=0}] subtitle [{text:"=",bold:1b,color:"gold",type:"text"},{text:" 2 ",bold:1b,color:"yellow",type:"text"},{text:"=",bold:1b,color:"gold",type:"text"}]
title @a[scores={char=24,s2_timer=40..59,CC_silence=0}] subtitle [{text:"=",bold:1b,color:"gold",type:"text"},{text:" 1 ",bold:1b,color:"yellow",type:"text"},{text:"=",bold:1b,color:"gold",type:"text"}]
title @a[scores={char=24,s2_timer=60..70,CC_silence=0}] subtitle {text:"Shraa'um Satt rou",italic:1b,color:"yellow",type:"text"}
title @a[scores={char=24,s2_timer=71..75,CC_silence=0}] subtitle {text:" ",type:"text"}



#sandbender mantle
scoreboard players add @a[scores={char=24,s1_timer=1}] passive_witc 1
scoreboard players add @a[scores={char=24,s2_timer=1}] passive_witc 1

scoreboard players set @a[scores={char=24,passive_witc=5}] passive_witc 6
scoreboard players set @a[scores={char=24,passive_witc=6..}] passive_witc 6

scoreboard players set @a[scores={char=24,s3_timer=1,CC_silence=1..}] s3_timer 0

clear @a[scores={char=24,s3_timer=1,CC_silence=0}] *[custom_data={s3:1}]
execute at @a[scores={char=24,s3_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["mantle_spin_1","mantle_visuals","entities_sandwitch"]}
execute at @a[scores={char=24,s3_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["mantle_spin_2","mantle_visuals","entities_sandwitch"]}
execute at @a[scores={char=24,s3_timer=1,CC_silence=0}] run playsound item.armor.equip_gold master @a[distance=..20] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=24,s3_timer=1,CC_silence=0}] run playsound block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.5 1
execute at @a[scores={char=24,s3_timer=1,CC_silence=0}] run playsound block.sand.fall master @a[distance=..20] ~ ~ ~ 1.0 0.6 1.0
execute at @a[scores={char=24,s3_timer=1..2,CC_silence=0}] run particle falling_dust{block_state:{Name:"minecraft:sandstone"}} ~ ~0.5 ~ 0.8 0.8 0.8 1 100 force
execute at @a[scores={char=24,s3_timer=1,CC_silence=0}] run particle wax_on ~ ~ ~ 0.5 1 0.5 2 50
effect give @a[scores={char=24,s3_timer=1,CC_silence=0}] absorption 5 2
scoreboard players set @a[scores={char=24,s3_timer=1,CC_silence=0}] passive_witc 0
execute at @a[scores={char=24,s3_timer=9..10,CC_silence=0}] run kill @e[tag=mantle_visuals]



#execute at @a[scores={char=24}] unless entity @e[tag=mantle_spin_1] run summon marker ~ ~ ~ {Tags:["mantle_spin_1","mantle_visuals","entities_sandwitch"]}
#execute at @a[scores={char=24}] unless entity @e[tag=mantle_spin_2] run summon marker ~ ~ ~ {Tags:["mantle_spin_2","mantle_visuals","entities_sandwitch"]}
execute as @a[scores={char=24}] at @s run tp @e[tag=mantle_spin_1] ~ ~ ~
execute as @a[scores={char=24}] at @s run tp @e[tag=mantle_spin_2] ~ ~ ~
execute as @e[tag=mantle_spin_1] at @s run rotate @s ~15 ~
execute as @e[tag=mantle_spin_2] at @s run rotate @s ~-15 ~

execute at @e[tag=mantle_spin_1] run particle dust{color:[1.0,0.67,0.0],scale:1} ^ ^0.5 ^1 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_1] run particle dust{color:[1.0,0.67,0.0],scale:1} ^ ^0.5 ^-1 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_1] run particle dust{color:[1.0,0.67,0.0],scale:1} ^1 ^0.5 ^ 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_1] run particle dust{color:[1.0,0.67,0.0],scale:1} ^-1 ^0.5 ^ 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_1] run particle dust{color:[1.0,0.67,0.0],scale:1} ^ ^1.5 ^1 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_1] run particle dust{color:[1.0,0.67,0.0],scale:1} ^ ^1.5 ^-1 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_1] run particle dust{color:[1.0,0.67,0.0],scale:1} ^1 ^1.5 ^ 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_1] run particle dust{color:[1.0,0.67,0.0],scale:1} ^-1 ^1.5 ^ 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_1] run particle dust{color:[1.0,0.67,0.0],scale:1} ^ ^1 ^1 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_1] run particle dust{color:[1.0,0.67,0.0],scale:1} ^ ^1 ^-1 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_1] run particle dust{color:[1.0,0.67,0.0],scale:1} ^1 ^1 ^ 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_1] run particle dust{color:[1.0,0.67,0.0],scale:1} ^-1 ^1 ^ 0.1 0 0.1 0.1 2 force

execute at @e[tag=mantle_spin_2] run particle dust{color:[1.0,0.67,0.0],scale:1} ^ ^0.5 ^1 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_2] run particle dust{color:[1.0,0.67,0.0],scale:1} ^ ^0.5 ^-1 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_2] run particle dust{color:[1.0,0.67,0.0],scale:1} ^1 ^0.5 ^ 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_2] run particle dust{color:[1.0,0.67,0.0],scale:1} ^-1 ^0.5 ^ 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_2] run particle dust{color:[1.0,0.67,0.0],scale:1} ^ ^1.5 ^1 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_2] run particle dust{color:[1.0,0.67,0.0],scale:1} ^ ^1.5 ^-1 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_2] run particle dust{color:[1.0,0.67,0.0],scale:1} ^1 ^1.5 ^ 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_2] run particle dust{color:[1.0,0.67,0.0],scale:1} ^-1 ^1.5 ^ 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_2] run particle dust{color:[1.0,0.67,0.0],scale:1} ^ ^1 ^1 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_2] run particle dust{color:[1.0,0.67,0.0],scale:1} ^ ^1 ^-1 0.1 0 0.1 0.1 2 force
execute at @e[tag=mantle_spin_2] run particle dust{color:[1.0,0.67,0.0],scale:1} ^1 ^1 ^ 0.1 0 0.1 0.1 2 force

title @a[scores={char=24,passive_witc=0}] actionbar [{text:"[ ",color:"gold",bold:1b,type:"text"},{text:"- - - - -",color:"gray",type:"text"},{text:" ]",color:"gold",bold:1b,type:"text"}]
title @a[scores={char=24,passive_witc=1}] actionbar [{text:"[ ",color:"gold",bold:1b,type:"text"},{text:"=",color:"yellow",type:"text"},{text:" - - - -",color:"gray",type:"text"},{text:" ]",color:"gold",bold:1b,type:"text"}]
title @a[scores={char=24,passive_witc=2}] actionbar [{text:"[ ",color:"gold",bold:1b,type:"text"},{text:"= =",color:"yellow",type:"text"},{text:" - - -",color:"gray",type:"text"},{text:" ]",color:"gold",bold:1b,type:"text"}]
title @a[scores={char=24,passive_witc=3}] actionbar [{text:"[ ",color:"gold",bold:1b,type:"text"},{text:"= = =",color:"yellow",type:"text"},{text:" - -",color:"gray",type:"text"},{text:" ]",color:"gold",bold:1b,type:"text"}]
title @a[scores={char=24,passive_witc=4}] actionbar [{text:"[ ",color:"gold",bold:1b,type:"text"},{text:"= = = =",color:"yellow",type:"text"},{text:" -",color:"gray",type:"text"},{text:" ]",color:"gold",bold:1b,type:"text"}]
title @a[scores={char=24,passive_witc=5..6}] actionbar [{text:"[ ",color:"gold",bold:1b,type:"text"},{text:"= = = = =",color:"yellow",type:"text"},{text:" ]",color:"gold",bold:1b,type:"text"}]


# sand witch

scoreboard players set @a[scores={char=24}] MaxHP 24

scoreboard players set @a[scores={s1_timer=1,char=24}] spellCD1 120
scoreboard players add @a[scores={s1_timer=1..,char=24}] s1_timer 1
scoreboard players set @a[scores={s1_timer=121..,char=24}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=24}] spellCD2 220
scoreboard players add @a[scores={s2_timer=1..,char=24}] s2_timer 1
scoreboard players set @a[scores={s2_timer=221..,char=24}] s2_timer 0

scoreboard players add @a[scores={s3_timer=1..,char=24}] s3_timer 1
scoreboard players set @a[scores={s3_timer=20..,char=24}] s3_timer 0

execute as @a[scores={char=24}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_axe",Slot:0b}]}] run clear @a[scores={char=24}] golden_axe
item replace entity @a[scores={char=24}] hotbar.0 with minecraft:golden_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Mantis Claws"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=24,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=24}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=24,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:beetroot_seeds",minecraft:custom_name={text:"Claws of the Desert",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=24,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=24}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=24,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:rabbit_hide",minecraft:custom_name={text:"Approaching Sandstorm",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=24,passive_witc=5..6,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:3b}]}] run clear @a[scores={char=24}] carrot_on_a_stick[custom_data={s3:1}]
item replace entity @a[scores={char=24,passive_witc=5..6,CC_silence=0}] hotbar.3 with carrot_on_a_stick[custom_data={s3:1},minecraft:item_model="minecraft:sand",minecraft:custom_name={text:"Sandbender's Mantle",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:protection":1}] 1


