kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:red_stained_glass"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:red_glazed_terracotta"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:light_gray_glazed_terracotta"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_sword"}}]


#juggle


scoreboard players set @a[tag=dazzle,scores={char=51,s0_timer=1,juggle=0,CC_silence=0}] juggle 1
scoreboard players set @a[tag=laugh,scores={char=51,s0_timer=1,juggle=0,CC_silence=0}] juggle 101


tag @a[scores={char=51,juggle=1}] remove dazzle
tag @a[scores={char=51,juggle=1}] add laugh
scoreboard players set @a[scores={juggle=1}] juggle_animation 1
scoreboard players set @a[scores={juggle=1,s2_timer=0}] spellCD2 59
scoreboard players set @a[scores={juggle=1,s2_timer_recast=0}] spellCD2 59
scoreboard players set @a[scores={juggle=1,s2_timer=0}] s2_timer 100
scoreboard players set @a[scores={juggle=1,s2_timer_recast=0}] s2_timer_recast 100

tag @a[scores={char=51,juggle=101}] remove laugh
tag @a[scores={char=51,juggle=101}] add dazzle
scoreboard players set @a[scores={juggle=101}] juggle_animation 1
scoreboard players set @a[scores={juggle=101,s2_timer=0}] spellCD2 59
scoreboard players set @a[scores={juggle=101,s2_timer_recast=0}] spellCD2 59
scoreboard players set @a[scores={juggle=101,s2_timer=0}] s2_timer 100
scoreboard players set @a[scores={juggle=101,s2_timer_recast=0}] s2_timer_recast 100

effect give @a[scores={juggle_animation=1}] speed 3

scoreboard players add @a[scores={juggle=1..180}] juggle 1
scoreboard players set @a[scores={juggle=61..70}] juggle 0
scoreboard players set @a[scores={juggle=161..170}] juggle 0

scoreboard players add @a[scores={juggle_animation=1..60}] juggle_animation 1
scoreboard players set @a[scores={juggle_animation=61..}] juggle_animation 0

#Accordingly to spyglass "{equipment:{head:{id:"air",count:1}}}" can't be used here, so if it really breaks, try "{equipment:{head:{}}}"
execute if entity @a[scores={char=51},nbt={active_effects:[{id:"minecraft:invisibility"}]}] run data merge entity @e[tag=juggle_ball,limit=1] {equipment:{head:{id:"air",count:1}}}
execute unless entity @a[scores={char=51},nbt={active_effects:[{id:"minecraft:invisibility"}]}] run data merge entity @e[tag=juggle_ball,limit=1] {equipment:{head:{id:"minecraft:red_shulker_box",count:1}}}


execute at @a[scores={juggle_animation=1..2,char=51}] run kill @e[tag=juggle_balls]
execute at @a[scores={juggle_animation=2,char=51}] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["juggle_ball","juggle_balls","entities_jester"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.15f],scale:[0.3f,0.3f,0.3f]},block_state:{Name:"minecraft:red_shulker_box"}}
execute at @a[scores={juggle_animation=12,char=51}] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["juggle_ball_2","juggle_balls","entities_jester"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.15f],scale:[0.3f,0.3f,0.3f]},block_state:{Name:"minecraft:orange_shulker_box"}}
execute at @a[scores={juggle_animation=22,char=51}] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["juggle_ball_3","juggle_balls","entities_jester"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.15f],scale:[0.3f,0.3f,0.3f]},block_state:{Name:"minecraft:yellow_shulker_box"}}
execute at @a[scores={juggle_animation=34,char=51}] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["juggle_ball_4","juggle_balls","entities_jester"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.15f],scale:[0.3f,0.3f,0.3f]},block_state:{Name:"minecraft:light_gray_glazed_terracotta"}}


execute at @a[scores={juggle_animation=4,char=51}] run playsound entity.snow_golem.shoot master @a[distance=..10] ~ ~ ~ 1 0.2 1
execute at @a[scores={juggle_animation=14,char=51}] run playsound entity.snow_golem.shoot master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute at @a[scores={juggle_animation=24,char=51}] run playsound entity.snow_golem.shoot master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute at @a[scores={juggle_animation=34,char=51}] run playsound entity.snow_golem.shoot master @a[distance=..10] ~ ~ ~ 1 0.5 1

execute at @a[scores={juggle_animation=21,char=51}] run playsound entity.item.pickup master @a[distance=..10] ~ ~ ~ 1 0.2 1
execute at @a[scores={juggle_animation=31,char=51}] run playsound entity.item.pickup master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute at @a[scores={juggle_animation=41,char=51}] run playsound entity.item.pickup master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute at @a[scores={juggle_animation=51,char=51}] run playsound entity.item.pickup master @a[distance=..10] ~ ~ ~ 1 0.5 1

execute at @a[scores={juggle_animation=4,char=51}] run tp @e[tag=juggle_ball] ~ ~2 ~
execute at @a[scores={juggle_animation=6,char=51}] run tp @e[tag=juggle_ball] ~ ~2.3 ~
execute at @a[scores={juggle_animation=8,char=51}] run tp @e[tag=juggle_ball] ~ ~2.6 ~
execute at @a[scores={juggle_animation=10,char=51}] run tp @e[tag=juggle_ball] ~ ~2.9 ~
execute at @a[scores={juggle_animation=12,char=51}] run tp @e[tag=juggle_ball] ~ ~3.2 ~
execute at @a[scores={juggle_animation=14,char=51}] run tp @e[tag=juggle_ball] ~ ~2.9 ~
execute at @a[scores={juggle_animation=16,char=51}] run tp @e[tag=juggle_ball] ~ ~2.6 ~
execute at @a[scores={juggle_animation=18,char=51}] run tp @e[tag=juggle_ball] ~ ~2.3 ~
execute at @a[scores={juggle_animation=20,char=51}] run tp @e[tag=juggle_ball] ~ ~2 ~

execute at @a[scores={juggle_animation=14,char=51}] run tp @e[tag=juggle_ball_2] ~ ~2 ~
execute at @a[scores={juggle_animation=16,char=51}] run tp @e[tag=juggle_ball_2] ~ ~2.3 ~
execute at @a[scores={juggle_animation=18,char=51}] run tp @e[tag=juggle_ball_2] ~ ~2.6 ~
execute at @a[scores={juggle_animation=20,char=51}] run tp @e[tag=juggle_ball_2] ~ ~2.9 ~
execute at @a[scores={juggle_animation=22,char=51}] run tp @e[tag=juggle_ball_2] ~ ~3.2 ~
execute at @a[scores={juggle_animation=24,char=51}] run tp @e[tag=juggle_ball_2] ~ ~2.9 ~
execute at @a[scores={juggle_animation=26,char=51}] run tp @e[tag=juggle_ball_2] ~ ~2.6 ~
execute at @a[scores={juggle_animation=28,char=51}] run tp @e[tag=juggle_ball_2] ~ ~2.3 ~
execute at @a[scores={juggle_animation=30,char=51}] run tp @e[tag=juggle_ball_2] ~ ~2 ~

execute at @a[scores={juggle_animation=24,char=51}] run tp @e[tag=juggle_ball_3] ~ ~2 ~
execute at @a[scores={juggle_animation=26,char=51}] run tp @e[tag=juggle_ball_3] ~ ~2.3 ~
execute at @a[scores={juggle_animation=28,char=51}] run tp @e[tag=juggle_ball_3] ~ ~2.6 ~
execute at @a[scores={juggle_animation=30,char=51}] run tp @e[tag=juggle_ball_3] ~ ~2.9 ~
execute at @a[scores={juggle_animation=32,char=51}] run tp @e[tag=juggle_ball_3] ~ ~3.2 ~
execute at @a[scores={juggle_animation=34,char=51}] run tp @e[tag=juggle_ball_3] ~ ~2.9 ~
execute at @a[scores={juggle_animation=36,char=51}] run tp @e[tag=juggle_ball_3] ~ ~2.6 ~
execute at @a[scores={juggle_animation=38,char=51}] run tp @e[tag=juggle_ball_3] ~ ~2.3 ~
execute at @a[scores={juggle_animation=40,char=51}] run tp @e[tag=juggle_ball_3] ~ ~2 ~


execute at @a[scores={juggle_animation=34,char=51}] run tp @e[tag=juggle_ball_4] ~ ~2 ~
execute at @a[scores={juggle_animation=36,char=51}] run tp @e[tag=juggle_ball_4] ~ ~2.3 ~
execute at @a[scores={juggle_animation=38,char=51}] run tp @e[tag=juggle_ball_4] ~ ~2.6 ~
execute at @a[scores={juggle_animation=40,char=51}] run tp @e[tag=juggle_ball_4] ~ ~2.9 ~
execute at @a[scores={juggle_animation=42,char=51}] run tp @e[tag=juggle_ball_4] ~ ~3.2 ~
execute at @a[scores={juggle_animation=44,char=51}] run tp @e[tag=juggle_ball_4] ~ ~2.9 ~
execute at @a[scores={juggle_animation=46,char=51}] run tp @e[tag=juggle_ball_4] ~ ~2.6 ~
execute at @a[scores={juggle_animation=48,char=51}] run tp @e[tag=juggle_ball_4] ~ ~2.3 ~
execute at @a[scores={juggle_animation=50,char=51}] run tp @e[tag=juggle_ball_4] ~ ~2 ~


execute at @a[scores={juggle_animation=21,char=51}] run kill @e[tag=juggle_ball]
execute at @a[scores={juggle_animation=31,char=51}] run kill @e[tag=juggle_ball_2]
execute at @a[scores={juggle_animation=41,char=51}] run kill @e[tag=juggle_ball_3]
execute at @a[scores={juggle_animation=51,char=51}] run kill @e[tag=juggle_ball_4]

#surprise

scoreboard players set @a[scores={char=51,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=51,s1_timer=1,CC_silence=1..}] s1_timer 240

execute at @a[scores={char=51,s1_timer=1,CC_silence=0}] run particle dust{color:[0.67,0.0,0.0],scale:1} ~ ~1 ~ 0.4 0.6 0.4 0 100
execute at @a[scores={char=51,s1_timer=1,CC_silence=0}] run particle dust{color:[1.0,0.0,0.0],scale:1.0f} ~ ~1 ~ 0.4 0.6 0.4 0 100
execute at @a[scores={char=51,s1_timer=1,CC_silence=0}] run particle falling_dust{block_state:{Name:"minecraft:red_wool"}} ~ ~ ~ 0.5 1.5 0.5 2 100
execute at @a[scores={char=51,s1_timer=1,CC_silence=0}] run playsound item.armor.equip_leather master @a[distance=..10] ~ ~ ~ 1 0.1 1
effect give @a[scores={char=51,s1_timer=1,CC_silence=0}] invisibility 3 0 true
item replace entity @a[scores={char=51,s1_timer=1..2,CC_silence=0}] armor.head with minecraft:air
item replace entity @a[scores={char=51,s1_timer=1..2,CC_silence=0}] armor.chest with minecraft:air
item replace entity @a[scores={char=51,s1_timer=1..2,CC_silence=0}] armor.legs with minecraft:air
item replace entity @a[scores={char=51,s1_timer=1..2,CC_silence=0}] armor.feet with minecraft:air
tag @a[scores={char=51,s1_timer=1,CC_silence=0}] add invisible

scoreboard players set @a[scores={char=51,universal_hit=1..,s1_timer=1..59}] spellCD1 200
scoreboard players set @a[scores={char=51,universal_hit=1..,s1_timer=1..59}] s1_timer 59

tag @a[scores={char=51,universal_hit=1..}] remove invisible
effect clear @a[scores={char=51,universal_hit=1..}] invisibility

execute at @a[scores={char=51,s1_timer=61,CC_silence=0}] run playsound entity.witch.celebrate master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=51,s1_timer=60,CC_silence=0}] run playsound entity.firework_rocket.twinkle master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=51,s1_timer=60,CC_silence=0}] run particle damage_indicator ~ ~ ~ 2 2 2 0.5 50
execute at @a[scores={char=51,s1_timer=60,CC_silence=0}] run particle block{block_state:{Name:"minecraft:red_wool"}} ~ ~ ~ 3 3 3 2 120
execute at @a[scores={char=51,s1_timer=60,CC_silence=0}] run particle falling_dust{block_state:{Name:"minecraft:red_wool"}} ~ ~ ~ 3 3 3 2 120
execute at @a[scores={char=51,s1_timer=60,CC_silence=0}] run particle dust{color:[1.0,0.0,0.0],scale:1.0f} ~ ~ ~ 3 3 3 2 120
tag @a[scores={char=51,s1_timer=60}] remove invisible

execute at @a[scores={char=51,s1_timer=60,CC_silence=0}] as @a[tag=valid_spell_target,distance=..8] unless score @s Team = @p[scores={char=51}] Team run tag @s add taunt_source_jester
execute at @a[scores={char=51,s1_timer=60,CC_silence=0}] as @a[tag=valid_spell_target,distance=..8] unless score @s Team = @p[scores={char=51}] Team run scoreboard players set @s CC_taunt 40
execute at @a[scores={char=51,s1_timer=60,CC_silence=0}] as @a[tag=valid_spell_target,distance=..8] unless score @s Team = @p[scores={char=51}] Team at @s run particle angry_villager ~ ~1.2 ~ 0.4 0.4 0.4 1 10

execute as @a[tag=taunt_source_jester,scores={CC_taunt=2..}] at @s run rotate @s facing entity @p[scores={char=51}]
execute as @a[tag=taunt_source_jester,scores={CC_taunt=2..}] at @s unless entity @a[distance=..8,scores={char=51}] run scoreboard players set @s CC_taunt 2
tag @a[scores={CC_taunt=..1}] remove taunt_source_jester

#dazzle orb

scoreboard players set @a[scores={char=51,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=51,s2_timer=1,CC_silence=1..}] s2_timer 140

execute at @a[tag=dazzle,scores={char=51,s2_timer=1,CC_silence=0}] run playsound entity.snow_golem.shoot master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute at @a[tag=dazzle,scores={char=51,s2_timer=1,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["dazzle_ball_initiall","dazzle_balls","projectile","entities_jester"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.15f],scale:[0.3f,0.3f,0.3f]},block_state:{Name:"minecraft:red_shulker_box"}}
scoreboard players operation @e[tag=projectile,tag=dazzle_ball_initiall] Team = @p[scores={char=51}] Team
tp @e[tag=dazzle_ball_initiall,limit=1] @a[scores={char=51,s2_timer=1},limit=1]
execute at @a[scores={char=51,s2_timer=1,CC_silence=0}] as @e[tag=dazzle_ball_initiall,limit=1] at @s run tp @s ~ ~1 ~ 



execute at @e[tag=dazzle_ball_initiall] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={CC_confusion=0}] unless score @s Team = @p[scores={char=51}] Team run playsound entity.snow_golem.shoot master @a[distance=..10] ~ ~ ~ 1 1.6 1
execute at @e[tag=dazzle_ball_initiall] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={CC_confusion=0}] unless score @s Team = @p[scores={char=51}] Team run playsound block.bell.use master @a[distance=..15] ~ ~ ~ 1 1.5 1
execute at @e[tag=dazzle_ball_initiall] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={CC_confusion=0}] unless score @s Team = @p[scores={char=51}] Team run particle damage_indicator ~ ~1 ~ 0.3 0.3 0.3 0 10
execute at @e[tag=dazzle_ball_initiall] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={CC_confusion=0}] unless score @s Team = @p[scores={char=51}] Team run summon block_display ~ ~1 ~ {teleport_duration:1,Tags:["dazzle_ball_bounce","dazzle_balls","projectile","bounce_1","entities_jester"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.15f],scale:[0.3f,0.3f,0.3f]},block_state:{Name:"minecraft:orange_shulker_box"}}
scoreboard players operation @e[tag=projectile,tag=bounce_1] Team = @p[scores={char=51}] Team
execute at @e[tag=dazzle_ball_initiall] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={CC_confusion=0}] unless score @s Team = @p[scores={char=51}] Team run scoreboard players set @s CC_confusion 30
execute at @e[tag=bounce_1] run kill @e[tag=dazzle_ball_initiall]

execute at @e[tag=bounce_1] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={CC_confusion=0}] unless score @s Team = @p[scores={char=51}] Team run playsound entity.snow_golem.shoot master @a[distance=..15] ~ ~ ~ 1 1.6 1
execute at @e[tag=bounce_1] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={CC_confusion=0}] unless score @s Team = @p[scores={char=51}] Team run playsound block.bell.use master @a[distance=..15] ~ ~ ~ 1 1.1 1
execute at @e[tag=bounce_1] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={CC_confusion=0}] unless score @s Team = @p[scores={char=51}] Team run particle damage_indicator ~ ~1 ~ 0.3 0.3 0.3 0 10
execute at @e[tag=bounce_1] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={CC_confusion=0}] unless score @s Team = @p[scores={char=51}] Team run summon block_display ~ ~1 ~ {teleport_duration:1,Tags:["dazzle_ball_bounce","dazzle_balls","projectile","bounce_2","entities_jester"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.15f],scale:[0.3f,0.3f,0.3f]},block_state:{Name:"minecraft:yellow_shulker_box"}}
scoreboard players operation @e[tag=projectile,tag=bounce_2] Team = @p[scores={char=51}] Team
execute at @e[tag=bounce_1] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={CC_confusion=0}] unless score @s Team = @p[scores={char=51}] Team run scoreboard players set @s CC_confusion 30
execute at @e[tag=bounce_2] run kill @e[tag=bounce_1]

execute at @e[tag=bounce_2] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={CC_confusion=0}] unless score @s Team = @p[scores={char=51}] Team run playsound entity.snow_golem.shoot master @a[distance=..10] ~ ~ ~ 1 1.6 1
execute at @e[tag=bounce_2] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={CC_confusion=0}] unless score @s Team = @p[scores={char=51}] Team run playsound block.bell.use master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @e[tag=bounce_2] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={CC_confusion=0}] unless score @s Team = @p[scores={char=51}] Team run particle damage_indicator ~ ~1 ~ 0.3 0.3 0.3 0 10
execute at @e[tag=bounce_2] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={CC_confusion=0}] unless score @s Team = @p[scores={char=51}] Team run summon marker ~ ~1 ~ {Tags:["no_more_bouncing","entities_jester"]}
execute at @e[tag=bounce_2] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={CC_confusion=0}] unless score @s Team = @p[scores={char=51}] Team run scoreboard players set @s CC_confusion 30
execute at @e[tag=no_more_bouncing] run kill @e[tag=bounce_2]
kill @e[tag=no_more_bouncing]



execute as @e[tag=dazzle_ball_bounce] at @s run tp @s ~ ~ ~ facing entity @e[sort=nearest,scores={CC_confusion=0},tag=valid_spell_target,limit=1,distance=0.5..] eyes
execute as @e[tag=dazzle_ball_bounce] at @s run tp @s ^ ^ ^0.7
execute as @e[tag=dazzle_ball_initiall] at @s run tp @s ^ ^ ^0.7

execute as @e[tag=dazzle_balls] at @s positioned ~ ~ ~ unless block ^ ^ ^0.4 #dash run kill @s
execute as @e[tag=dazzle_balls] at @s positioned ~ ~ ~ unless block ~ ~ ~ #dash run kill @s
execute at @e[tag=dazzle_ball_initiall] run particle dust{color:[1.0,0.0,0.0],scale:1.0f} ~ ~ ~ 0.2 0.2 0.2 0.01 5 normal
execute at @e[tag=bounce_1] run particle dust{color:[1.0,0.67,0.0],scale:1} ~ ~ ~ 0.2 0.2 0.2 0.01 5 normal
execute at @e[tag=bounce_2] run particle dust{color:[1.0,1.0,0.33],scale:1} ~ ~ ~ 0.2 0.2 0.2 0.01 5 normal

scoreboard players add @e[tag=dazzle_ball_initiall] juggle 1
scoreboard players add @e[tag=dazzle_ball_bounce] juggle 1
kill @e[tag=dazzle_ball_initiall,scores={juggle=20..}]
kill @e[tag=dazzle_ball_bounce,scores={juggle=20..}]



#last laugh

execute at @a[scores={char=51,death_dash_reset=1..}] run kill @e[tag=last_laugh]
execute at @a[scores={char=51,universal_death=1..}] run kill @e[tag=last_laugh]
execute at @a[scores={char=51,CC_grounded=1..}] run kill @e[tag=last_laugh]
execute at @a[scores={char=51,CC_root=1..}] run kill @e[tag=last_laugh]
execute at @a[scores={char=51,CC_stun=1..}] run kill @e[tag=last_laugh]

execute at @a[tag=laugh,scores={char=51,s2_timer_recast=1,CC_silence=0}] run playsound entity.player.attack.strong master @a[distance=..15] ~ ~ ~ 1 0.7 1
execute at @a[tag=laugh,scores={char=51,s2_timer_recast=1,CC_silence=0}] run summon item_display ~ ~1 ~ {Tags:["shiv","shiv1","projectile","entities_jester"],teleport_duration:1,transformation:{left_rotation:[0.6532815f,0.27059808f,-0.27059808f,0.6532815f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3f,0.3f,0.5f],translation:[0.0f,0.0f,0.0f]},item:{id:"minecraft:iron_sword",count:1}}
execute at @a[tag=laugh,scores={char=51,s2_timer_recast=1,CC_silence=0}] run summon item_display ~ ~1 ~ {Tags:["shiv","shiv2","projectile","entities_jester"],teleport_duration:1,transformation:{left_rotation:[0.6532815f,0.27059808f,-0.27059808f,0.6532815f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3f,0.3f,0.5f],translation:[0.0f,0.0f,0.0f]},item:{id:"minecraft:iron_sword",count:1}}
scoreboard players operation @e[tag=projectile,tag=shiv] Team = @p[scores={char=51}] Team
tp @e[tag=shiv1,limit=1] @a[scores={char=51,s2_timer_recast=1},limit=1]
tp @e[tag=shiv2,limit=1] @a[scores={char=51,s2_timer_recast=1},limit=1]
execute at @a[scores={char=51,s2_timer_recast=1,CC_silence=0}] as @e[tag=shiv1,limit=1] at @s run tp @s ~ ~1 ~ 
execute at @a[scores={char=51,s2_timer_recast=1,CC_silence=0}] as @e[tag=shiv2,limit=1] at @s run tp @s ~ ~1 ~ 
execute at @a[scores={char=51,s2_timer_recast=1,CC_silence=0}] as @e[tag=shiv1,limit=1] at @s run tp @s ^0.2 ^ ^
execute at @a[scores={char=51,s2_timer_recast=1,CC_silence=0}] as @e[tag=shiv2,limit=1] at @s run tp @s ^-0.2 ^ ^

execute at @e[tag=shiv] run particle dust{color:[0.67,0.0,0.0],scale:1} ~ ~ ~ 0.2 0.1 0.2 0.01 1 normal
execute at @a[scores={char=51,s2_timer_recast=2..}] as @e[tag=shiv] at @s run tp @s ^ ^ ^0.6
execute as @e[tag=shiv] at @s positioned ~ ~ ~ unless block ^ ^ ^0.4 #dash run kill @s
execute as @e[tag=shiv] at @s positioned ~ ~ ~ unless block ~ ~ ~ #dash run kill @s

execute at @a[scores={char=51,s2_timer_recast=20..}] run kill @e[tag=shiv]


execute at @e[tag=shiv] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=51}] Team run tag @s add jester_shivved
execute at @e[tag=shiv] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=51}] Team run kill @e[tag=shiv,limit=1,sort=nearest]

execute at @e[tag=jester_shivved] run playsound entity.player.hurt_sweet_berry_bush master @a[distance=..15] ~ ~ ~ 1 1.5 1
effect give @e[tag=jester_shivved] slowness 3 3
effect give @e[tag=jester_shivved] poison 4
execute at @e[tag=jester_shivved] run particle damage_indicator ~ ~1 ~ 0.5 0.9 0.5 0.5 10

tag @e remove jester_shivved

execute at @a[tag=laugh,scores={char=51,s2_timer_recast=1,CC_silence=0}] run particle falling_dust{block_state:{Name:"minecraft:red_wool"}} ~ ~0.1 ~ 0.6 0.3 0.6 0.01 40 normal
execute at @a[tag=laugh,scores={char=51,s2_timer_recast=1,CC_silence=0}] run playsound entity.snow_golem.shoot master @a[distance=..16] ~ ~ ~ 1 1.5 1
execute at @a[tag=laugh,scores={char=51,s2_timer_recast=1,CC_silence=0}] run playsound entity.witch.celebrate master @a[distance=..10] ~ ~ ~ 1 1 1
execute at @a[tag=laugh,scores={char=51,s2_timer_recast=2,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["last_laugh","entities_jester"],NoGravity:1b}
tp @e[tag=last_laugh,limit=1] @a[scores={char=51,s2_timer_recast=2,CC_silence=0},limit=1]
execute at @a[scores={char=51,s2_timer_recast=2,CC_silence=0},limit=1] run tp @e[tag=last_laugh,limit=1] ~ ~0.5 ~

execute as @e[tag=last_laugh] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=last_laugh] at @s unless block ^ ^ ^-1 #minecraft:dash run kill @s
execute as @e[tag=last_laugh] at @s unless block ^ ^1 ^-0.5 #minecraft:dash run kill @s
execute as @e[tag=last_laugh] at @s unless block ^ ^1.5 ^-1.5 #minecraft:dash run kill @s
execute as @e[tag=last_laugh] at @s unless block ^ ^1 ^-1 #minecraft:dash run kill @s
execute as @e[tag=last_laugh] at @s unless block ^ ^ ^-1 #minecraft:dash run kill @s

execute as @e[tag=last_laugh] at @s run tp @s ^ ^ ^-0.7

tp @a[scores={char=51,s2_timer_recast=2..9,CC_silence=0,death_dash_reset=0}] @e[tag=last_laugh,limit=1]
execute at @a[scores={char=51,s2_timer_recast=10,CC_silence=0}] run kill @e[tag=last_laugh]
execute as @a[tag=laugh,scores={char=51,s2_timer_recast=10,CC_silence=0}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
effect give @a[tag=laugh,scores={char=51,s2_timer_recast=10,CC_silence=0}] minecraft:slow_falling 1 1 true
effect clear @a[tag=laugh,scores={char=51,s2_timer_recast=20,CC_silence=0}] minecraft:slow_falling

#confuse effect


scoreboard players add @a[scores={CC_confusion=0}] confusion_randomiser 1
scoreboard players set @a[scores={confusion_randomiser=5..}] confusion_randomiser 1

tag @a[scores={CC_confusion=3..,confusion_randomiser=1..2}] add spin_left
tag @a[scores={CC_confusion=3..,confusion_randomiser=3..4}] add spin_right


execute as @a[tag=spin_left,scores={CC_confusion=3..}] at @s run tp @s ~ ~ ~ ~-20 ~
execute as @a[tag=spin_right,scores={CC_confusion=3..}] at @s run tp @s ~ ~ ~ ~20 ~

tag @a[scores={CC_confusion=1..2}] remove spin_left
tag @a[scores={CC_confusion=1..2}] remove spin_right


# jester

scoreboard players set @a[scores={char=51}] MaxHP 18

scoreboard players add @a[scores={s0_timer=1..,char=51}] s0_timer 1
scoreboard players set @a[scores={s0_timer=61..,char=51}] s0_timer 0

scoreboard players set @a[scores={s1_timer=1,char=51}] spellCD1 260
scoreboard players add @a[scores={s1_timer=1..,char=51}] s1_timer 1
scoreboard players set @a[scores={s1_timer=261..,char=51}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=51}] spellCD2 160
scoreboard players add @a[scores={s2_timer=1..,char=51}] s2_timer 1
scoreboard players set @a[scores={s2_timer=161..,char=51}] s2_timer_recast 0
scoreboard players set @a[scores={s2_timer=161..,char=51}] s2_timer 0

scoreboard players set @a[tag=laugh,scores={char=51}] s2_timer -1

scoreboard players set @a[scores={s2_timer_recast=1,char=51}] spellCD2 160
scoreboard players add @a[scores={s2_timer_recast=1..,char=51}] s2_timer_recast 1
scoreboard players set @a[scores={s2_timer_recast=161..,char=51}] s2_timer 0
scoreboard players set @a[scores={s2_timer_recast=161..,char=51}] s2_timer_recast 0


execute as @a[scores={char=51}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:0b}]}] run clear @a[scores={char=51}] warped_fungus_on_a_stick[custom_data={s0:1}]
item replace entity @a[scores={char=51}] hotbar.0 with warped_fungus_on_a_stick[custom_data={s0:1},minecraft:item_model="minecraft:iron_sword",minecraft:custom_name={bold:1b,color:"gray",text:"Shiv"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:1.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.4d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=51,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=51}] carrot_on_a_stick
item replace entity @a[scores={char=51,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:red_wool",minecraft:custom_name={text:"SURPRISE!",color:"dark_aqua",bold:1b}] 1

execute as @a[tag=dazzle,scores={char=51,s2_timer=0,s2_timer_recast=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=51}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[tag=dazzle,scores={char=51,s2_timer=0,s2_timer_recast=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:red_glazed_terracotta",minecraft:custom_name={text:"Dazzle Orb",color:"dark_aqua",bold:1b}] 1

execute as @a[tag=laugh,scores={char=51,s2_timer=0,s2_timer_recast=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=51}] warped_fungus_on_a_stick[custom_data={s2:2}]
item replace entity @a[tag=laugh,scores={char=51,s2_timer=0,s2_timer_recast=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:2},minecraft:item_model="minecraft:light_gray_glazed_terracotta",minecraft:custom_name={text:"Last Laugh",color:"dark_aqua",bold:1b}] 1

tag @a[scores={char=51},tag=!laugh,tag=!dazzle] add dazzle