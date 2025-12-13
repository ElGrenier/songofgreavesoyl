kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:dead_brain_coral"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:powder_snow_bucket"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_hoe"}}]

#ice worms contract

execute at @a[scores={char=43}] as @p[distance=0.1..10] if score @s Team = @p[scores={char=43}] Team run tag @s add iceworm_contracted
execute at @a[scores={char=43}] as @p[distance=0.1..10] if score @s Team = @p[scores={char=43}] Team run effect give @s resistance 1
execute at @a[scores={char=43}] as @p[distance=0.1..10] if score @s Team = @p[scores={char=43}] Team run effect give @a[scores={char=43}] resistance 1

execute at @a[scores={char=43}] run tag @e[distance=10.1..] remove iceworm_contracted


execute unless entity @e[tag=contract_range] run summon marker ~ ~ ~ {Tags:["contract_range","entities_iceworm"]}
execute at @a[scores={char=43}] run tp @e[tag=contract_range] ~ ~0.1 ~

execute as @e[tag=contract_range] at @s run rotate @s ~35 ~
execute as @e[tag=contract_range] at @s run particle dust{color:[0.75,1.0,1.0],scale:1} ^ ^ ^10 0.1 0.1 0.1 0 5 force @p[scores={char=43}]
execute as @e[tag=contract_range] at @s run particle dust{color:[0.75,1.0,1.0],scale:1} ^ ^ ^-10 0.1 0.1 0.1 0 5 force @p[scores={char=43}]
execute as @e[tag=contract_range] at @s run particle dust{color:[0.75,1.0,1.0],scale:1} ^10 ^ ^ 0.1 0.1 0.1 0 5 force @p[scores={char=43}]
execute as @e[tag=contract_range] at @s run particle dust{color:[0.75,1.0,1.0],scale:1} ^-10 ^ ^ 0.1 0.1 0.1 0 5 force @p[scores={char=43}]
execute as @e[tag=contract_range] at @s run particle dust{color:[0.75,1.0,1.0],scale:1} ^7.5 ^ ^7.5 0.1 0.1 0.1 0 5 force @p[scores={char=43}]
execute as @e[tag=contract_range] at @s run particle dust{color:[0.75,1.0,1.0],scale:1} ^-7.5 ^ ^-7.5 0.1 0.1 0.1 0 5 force @p[scores={char=43}]
execute as @e[tag=contract_range] at @s run particle dust{color:[0.75,1.0,1.0],scale:1} ^7.5 ^ ^-7.5 0.1 0.1 0.1 0 5 force @p[scores={char=43}]
execute as @e[tag=contract_range] at @s run particle dust{color:[0.75,1.0,1.0],scale:1} ^-7.5 ^ ^7.5 0.1 0.1 0.1 0 5 force @p[scores={char=43}]

execute at @e[tag=iceworm_contracted] unless entity @e[tag=contracted_circle] run summon marker ~ ~ ~ {Tags:["contracted_circle","contract_spin","entities_iceworm"]}


execute at @a[scores={char=43}] unless entity @e[tag=contractor_circle] run summon marker ~ ~ ~ {Tags:["contractor_circle","contract_spin","entities_iceworm"]}
execute as @a[scores={char=43}] at @s run tp @e[tag=contractor_circle] ~ ~ ~
execute as @e[tag=iceworm_contracted] at @s run tp @e[tag=contracted_circle] ~ ~ ~

execute unless entity @e[tag=iceworm_contracted] run kill @e[tag=contract_spin]

execute as @e[tag=contract_spin] at @s run rotate @s ~15 ~
execute at @e[tag=contract_spin] run particle dust{color:[0.75,1.0,1.0],scale:1} ^ ^0.5 ^1 0.1 0 0.1 0.1 1 force
execute at @e[tag=contract_spin] run particle dust{color:[0.75,1.0,1.0],scale:1} ^ ^0.5 ^-1 0.1 0 0.1 0.1 1 force
execute at @e[tag=contract_spin] run particle dust{color:[0.75,1.0,1.0],scale:1} ^1 ^0.5 ^ 0.1 0 0.1 0.1 1 force
execute at @e[tag=contract_spin] run particle dust{color:[0.75,1.0,1.0],scale:1} ^-1 ^0.5 ^ 0.1 0 0.1 0.1 1 force
execute at @e[tag=contract_spin] run particle dust{color:[0.75,1.0,1.0],scale:1} ^0.7 ^0.5 ^0.7 0.1 0 0.1 0.1 1 force
execute at @e[tag=contract_spin] run particle dust{color:[0.75,1.0,1.0],scale:1} ^0.7 ^0.5 ^-0.7 0.1 0 0.1 0.1 1 force
execute at @e[tag=contract_spin] run particle dust{color:[0.75,1.0,1.0],scale:1} ^-0.7 ^0.5 ^0.7 0.1 0 0.1 0.1 1 force
execute at @e[tag=contract_spin] run particle dust{color:[0.75,1.0,1.0],scale:1} ^-0.7 ^0.5 ^-0.7 0.1 0 0.1 0.1 1 force

#breath of rime

scoreboard players set @a[scores={char=43,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=43,s1_timer=1,CC_silence=1..}] s1_timer 200

execute at @a[scores={char=43,s1_timer=1,CC_silence=0}] run playsound minecraft:entity.zombie.infect master @a[distance=..10] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=43,s1_timer=1,CC_silence=0}] run playsound minecraft:entity.spider.death master @a[distance=..10] ~ ~ ~ 0.5 0.5 1
execute at @a[scores={char=43,s1_timer=3,CC_silence=0}] run playsound entity.player.hurt_freeze master @a[distance=..10] ~ ~ ~ 0.3 0.8 1
execute at @a[scores={char=43,s1_timer=1..5,CC_silence=0}] run playsound minecraft:block.snow.break master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute at @a[scores={char=43,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["breathofrime","projectile","entities_iceworm"]}
scoreboard players operation @e[tag=projectile,tag=breathofrime] Team = @p[scores={char=43}] Team
tp @e[tag=breathofrime,limit=1] @a[scores={char=43,s1_timer=1},limit=1]
execute at @a[scores={char=43,s1_timer=1,CC_silence=0}] as @e[tag=breathofrime,limit=1] at @s run tp @s ~ ~1.5 ~ 

execute as @e[tag=breathofrime] at @s run tp @s ^ ^ ^0.3

execute at @e[tag=breathofrime] positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=43}] Team run effect give @s slowness 3 1
execute at @e[tag=breathofrime] positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=43}] Team run effect give @s blindness 3 1
execute at @e[tag=breathofrime] positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] if score @s Team = @p[scores={char=43}] Team run effect give @s absorption 3 1


execute at @a[scores={char=43,s1_timer=4..11}] at @e[tag=breathofrime] run particle cloud ~ ~ ~ 0.2 0.2 0.2 0.01 2
execute at @a[scores={char=43,s1_timer=4..12}] at @e[tag=breathofrime] run particle dust{color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0.2 0.2 0.2 0.01 5

execute at @a[scores={char=43,s1_timer=5..18}] at @e[tag=breathofrime] run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.01 3
execute at @a[scores={char=43,s1_timer=12..20}] at @e[tag=breathofrime] run particle dust{color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0.5 0.5 0.5 0.01 10

execute at @a[scores={char=43,s1_timer=15..20}] at @e[tag=breathofrime] run particle cloud ~ ~ ~ 1 1 1 0.01 5

execute at @a[scores={char=43,s1_timer=20..}] run kill @e[tag=breathofrime]

#frozen burrow

scoreboard players set @a[scores={char=43,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=43,s2_timer=1,CC_silence=1..}] s2_timer 100

execute at @e[tag=skryal_tunnel,scores={SummonAge=3..}] run particle minecraft:cloud ~ ~0.3 ~ 1 0.5 1 0.5 5
execute at @e[tag=skryal_tunnel,scores={SummonAge=3..}] run particle minecraft:block{block_state:{Name:"minecraft:snow_block"}} ~ ~0.3 ~ 1 0.5 1 0.5 20
execute at @e[tag=skryal_tunnel,scores={SummonAge=3..}] run playsound minecraft:block.gravel.break master @a[distance=..10] ~ ~ ~ 1 0.4 1
kill @e[tag=skryal_tunnel,scores={SummonAge=3..}]

execute at @a[scores={char=43,s2_timer=2}] run summon marker ~ ~ ~ {Tags:["skryal_tunnel","entities_iceworm"]}
execute at @a[scores={char=43,s2_timer=3}] run scoreboard players add @e[tag=skryal_tunnel] SummonAge 1
scoreboard players set @a[scores={char=43,s2_timer=1..20}] tunneling -5
scoreboard players set @a[scores={char=43,s2_timer=21}] tunneling 0

execute at @a[scores={char=43,s2_timer=2}] run playsound minecraft:block.gravel.break master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=43,s2_timer=5}] run playsound minecraft:block.gravel.break master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=43,s2_timer=10}] run playsound :block.gravel.break master @a[distance=..10] ~ ~ ~ 1 0.8 1


execute at @e[tag=skryal_tunnel] run particle minecraft:falling_dust{block_state:{Name:"minecraft:snow"}} ~ ~0.2 ~ 0.6 0.6 0.6 0.01 1
execute at @e[tag=skryal_tunnel] run particle minecraft:cloud ~ ~0.2 ~ 0.5 0.5 0.5 0.01 1
execute as @e[tag=skryal_tunnel] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.2 ~
execute as @e[tag=skryal_tunnel] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.2 ~
execute as @e[tag=skryal_tunnel] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.2 ~
execute as @e[tag=skryal_tunnel] at @s if block ~ ~ ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=skryal_tunnel] at @s if block ~ ~0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

execute as @e[tag=skryal_tunnel_visuals] at @s unless entity @e[distance=..2,tag=skryal_tunnel] run kill @s

execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] unless entity @e[tag=skryal_tunnel_visual_a_1] run summon block_display ~ ~0.5 ~ {Tags:["skryal_tunnel_visual_a_1","skryal_tunnel_visuals","entities_iceworm"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] unless entity @e[tag=skryal_tunnel_visual_a_2] run summon block_display ~ ~0.5 ~ {Tags:["skryal_tunnel_visual_a_2","skryal_tunnel_visuals","entities_iceworm"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] unless entity @e[tag=skryal_tunnel_visual_a_3] run summon block_display ~ ~0.5 ~ {Tags:["skryal_tunnel_visual_a_3","skryal_tunnel_visuals","entities_iceworm"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] unless entity @e[tag=skryal_tunnel_visual_a_4] run summon block_display ~ ~0.5 ~ {Tags:["skryal_tunnel_visual_a_4","skryal_tunnel_visuals","entities_iceworm"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] unless entity @e[tag=skryal_tunnel_visual_a_5] run summon block_display ~ ~0.5 ~ {Tags:["skryal_tunnel_visual_a_5","skryal_tunnel_visuals","entities_iceworm"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.2f,-0.25f],scale:[0.5f,0.4f,0.5f]},block_state:{Name:"minecraft:packed_ice"}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] unless entity @e[tag=skryal_tunnel_visual_a_6] run summon block_display ~ ~0.5 ~ {Tags:["skryal_tunnel_visual_a_6","skryal_tunnel_visuals","entities_iceworm"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] unless entity @e[tag=skryal_tunnel_visual_a_7] run summon block_display ~ ~0.5 ~ {Tags:["skryal_tunnel_visual_a_7","skryal_tunnel_visuals","entities_iceworm"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] unless entity @e[tag=skryal_tunnel_visual_a_8] run summon block_display ~ ~0.5 ~ {Tags:["skryal_tunnel_visual_a_8","skryal_tunnel_visuals","entities_iceworm"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] unless entity @e[tag=skryal_tunnel_visual_a_9] run summon block_display ~ ~0.5 ~ {Tags:["skryal_tunnel_visual_a_9","skryal_tunnel_visuals","entities_iceworm"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"}}

execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] unless entity @e[tag=skryal_tunnel_visual_b_1] run summon block_display ~ ~0.5 ~ {Tags:["skryal_tunnel_visual_b_1","skryal_tunnel_visuals","entities_iceworm"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] unless entity @e[tag=skryal_tunnel_visual_b_2] run summon block_display ~ ~0.5 ~ {Tags:["skryal_tunnel_visual_b_2","skryal_tunnel_visuals","entities_iceworm"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] unless entity @e[tag=skryal_tunnel_visual_b_3] run summon block_display ~ ~0.5 ~ {Tags:["skryal_tunnel_visual_b_3","skryal_tunnel_visuals","entities_iceworm"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] unless entity @e[tag=skryal_tunnel_visual_b_4] run summon block_display ~ ~0.5 ~ {Tags:["skryal_tunnel_visual_b_4","skryal_tunnel_visuals","entities_iceworm"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] unless entity @e[tag=skryal_tunnel_visual_b_5] run summon block_display ~ ~0.5 ~ {Tags:["skryal_tunnel_visual_b_5","skryal_tunnel_visuals","entities_iceworm"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.2f,-0.25f],scale:[0.5f,0.4f,0.5f]},block_state:{Name:"minecraft:packed_ice"}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] unless entity @e[tag=skryal_tunnel_visual_b_6] run summon block_display ~ ~0.5 ~ {Tags:["skryal_tunnel_visual_b_6","skryal_tunnel_visuals","entities_iceworm"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] unless entity @e[tag=skryal_tunnel_visual_b_7] run summon block_display ~ ~0.5 ~ {Tags:["skryal_tunnel_visual_b_7","skryal_tunnel_visuals","entities_iceworm"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] unless entity @e[tag=skryal_tunnel_visual_b_8] run summon block_display ~ ~0.5 ~ {Tags:["skryal_tunnel_visual_b_8","skryal_tunnel_visuals","entities_iceworm"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"}}
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] unless entity @e[tag=skryal_tunnel_visual_b_9] run summon block_display ~ ~0.5 ~ {Tags:["skryal_tunnel_visual_b_9","skryal_tunnel_visuals","entities_iceworm"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"}}

execute as @e[tag=skryal_tunnel_visuals] at @s unless entity @e[tag=skryal_tunnel,distance=..1] run kill @s

execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] run tp @e[tag=skryal_tunnel_visual_a_1] ~ ~0.25 ~0.5
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] run tp @e[tag=skryal_tunnel_visual_a_2] ~ ~0.25 ~-0.5
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] run tp @e[tag=skryal_tunnel_visual_a_3] ~0.5 ~0.25 ~
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] run tp @e[tag=skryal_tunnel_visual_a_4] ~-0.5 ~0.25 ~
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] run tp @e[tag=skryal_tunnel_visual_a_5] ~ ~0.2 ~
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] run tp @e[tag=skryal_tunnel_visual_a_6] ~0.4 ~0.25 ~0.4
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] run tp @e[tag=skryal_tunnel_visual_a_7] ~-0.4 ~0.25 ~-0.4
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] run tp @e[tag=skryal_tunnel_visual_a_8] ~0.4 ~0.25 ~-0.4
execute at @e[tag=skryal_tunnel,scores={SummonAge=1}] run tp @e[tag=skryal_tunnel_visual_a_9] ~-0.4 ~0.25 ~0.4

execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] run tp @e[tag=skryal_tunnel_visual_b_1] ~ ~0.25 ~0.5
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] run tp @e[tag=skryal_tunnel_visual_b_2] ~ ~0.25 ~-0.5
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] run tp @e[tag=skryal_tunnel_visual_b_3] ~0.5 ~0.25 ~
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] run tp @e[tag=skryal_tunnel_visual_b_4] ~-0.5 ~0.25 ~
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] run tp @e[tag=skryal_tunnel_visual_b_5] ~ ~0.2 ~
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] run tp @e[tag=skryal_tunnel_visual_b_6] ~0.4 ~0.25 ~0.4
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] run tp @e[tag=skryal_tunnel_visual_b_7] ~-0.4 ~0.25 ~-0.4
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] run tp @e[tag=skryal_tunnel_visual_b_8] ~0.4 ~0.25 ~-0.4
execute at @e[tag=skryal_tunnel,scores={SummonAge=2}] run tp @e[tag=skryal_tunnel_visual_b_9] ~-0.4 ~0.25 ~0.4


scoreboard players set @a[scores={CC_silence=1..}] tunneling 0
execute as @a[scores={tunneling=1..40}] at @s unless entity @e[distance=..1,tag=skryal_tunnel] run scoreboard players set @s tunneling 0

execute at @e[tag=skryal_tunnel] run scoreboard players add @a[distance=..1,scores={tunneling=0..40}] tunneling 1

scoreboard players add @a[scores={tunneling=41..}] tunneling 1
scoreboard players set @a[scores={tunneling=140..}] tunneling 0


#travel + sound effects
execute as @a[scores={tunneling=1..41}] if score @s Team = @p[scores={char=43}] Team at @s run particle block{block_state:{Name:"minecraft:snow_block"}} ~ ~1.5 ~ 0.1 0.5 0.1 0.01 1
execute as @a[scores={tunneling=1..41}] if score @s Team = @p[scores={char=43}] Team at @s run playsound block.gravel.place master @a[distance=..10] ~ ~ ~ 0.6 0.6 1
execute as @a[scores={tunneling=42..43}] if score @s Team = @p[scores={char=43}] Team at @s run particle cloud ~ ~1.5 ~ 0.5 1 0.5 0.01 20
execute as @a[scores={tunneling=42..43}] if score @s Team = @p[scores={char=43}] Team at @s run playsound block.gravel.break master @a[distance=..10] ~ ~ ~ 1 0.7 1

execute as @a[scores={tunneling=42}] if score @s Team = @p[scores={char=43}] Team at @s at @e[tag=skryal_tunnel,sort=furthest,limit=1] run tp @s ~ ~1 ~

execute as @a[scores={tunneling=42}] if score @s Team = @p[scores={char=43}] Team run effect give @s speed 3
execute as @a[scores={tunneling=42}] if score @s Team = @p[scores={char=43}] Team run effect give @s levitation 1 11 true
execute as @a[scores={tunneling=44}] if score @s Team = @p[scores={char=43}] Team run effect clear @s levitation



title @a[scores={tunneling=1..5}] times 0 3 1
title @a[scores={tunneling=1..40}] title {text:" ",type:"text"}

execute as @a[scores={tunneling=1..10}] if score @s Team = @p[scores={char=43}] Team run title @s subtitle [{text:"[",bold:1b,color:"blue",type:"text"},{text:"=",color:"aqua",type:"text"},{text:"===",color:"gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
execute as @a[scores={tunneling=11..20}] if score @s Team = @p[scores={char=43}] Team run title @s subtitle [{text:"[",bold:1b,color:"blue",type:"text"},{text:"==",color:"aqua",type:"text"},{text:"==",color:"gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
execute as @a[scores={tunneling=21..30}] if score @s Team = @p[scores={char=43}] Team run title @s subtitle [{text:"[",bold:1b,color:"blue",type:"text"},{text:"===",color:"aqua",type:"text"},{text:"=",color:"gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]
execute as @a[scores={tunneling=31..40}] if score @s Team = @p[scores={char=43}] Team run title @s subtitle [{text:"[",bold:1b,color:"blue",type:"text"},{text:"====",color:"aqua",type:"text"},{text:"",color:"gray",type:"text"},{text:"]",bold:1b,color:"blue",type:"text"}]


#breaking tunnels

execute if entity @a[scores={char=43}] as @a[scores={tunneling=1..41}] at @s unless score @s Team = @p[scores={char=43}] Team run particle block{block_state:{Name:"minecraft:snow_block"}} ~ ~0.5 ~ 0.5 0.5 0.5 0.01 1
execute if entity @a[scores={char=43}] as @a[scores={tunneling=1..41}] at @s unless score @s Team = @p[scores={char=43}] Team run playsound block.gravel.break master @a[distance=..10] ~ ~ ~ 0.6 0.6 1

execute if entity @a[scores={char=43}] as @a[scores={tunneling=42}] unless score @s Team = @p[scores={char=43}] Team run playsound block.gravel.break master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute if entity @a[scores={char=43}] as @a[scores={tunneling=42}] unless score @s Team = @p[scores={char=43}] Team run scoreboard players set @e[tag=skryal_tunnel] SummonAge 3


# ice worm

scoreboard players set @a[scores={char=43}] MaxHP 24

scoreboard players set @a[scores={s1_timer=1,char=43}] spellCD1 220
scoreboard players add @a[scores={s1_timer=1..,char=43}] s1_timer 1
scoreboard players set @a[scores={s1_timer=221..,char=43}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=43}] spellCD2 120
scoreboard players add @a[scores={s2_timer=1..,char=43}] s2_timer 1
scoreboard players set @a[scores={s2_timer=121..,char=43}] s2_timer 0


execute as @a[scores={char=43}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_hoe",Slot:0b}]}] run clear @a[scores={char=43}] iron_hoe
item replace entity @a[scores={char=43}] hotbar.0 with iron_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Worm Claw"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:frost_walker":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=43,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=43}] carrot_on_a_stick
item replace entity @a[scores={char=43,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:dead_brain_coral",minecraft:custom_name={text:"Breath of Rime",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=43,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=43}] warped_fungus_on_a_stick
item replace entity @a[scores={char=43,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:powder_snow_bucket",minecraft:custom_name={text:"Frozen Burrow",color:"dark_aqua",bold:1b}] 1
