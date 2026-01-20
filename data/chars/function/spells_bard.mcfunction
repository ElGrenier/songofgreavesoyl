kill @e[type=item,nbt={Item:{id:"minecraft:golden_shovel"}}]
scoreboard players set @s MaxHP 16

#> Songs of Greavesoyl

tag @a[scores={char=70,passive_bard=1},tag=bard_jumped_display] remove bard_jumped_display

title @a[scores={char=70,passive_bard=0..10,CC_silence=0},tag=!bard_jumped_display] actionbar [{"text": "[ ","color": "dark_purple","bold": true},{"text": "= - || - =","color": "dark_gray","bold": false},{"text": " ]","color": "dark_purple","bold": true}]
title @a[scores={char=70,passive_bard=11..20,CC_silence=0},tag=!bard_jumped_display] actionbar [{"text": "[ ","color": "dark_purple","bold": true},{"text": "=","color": "light_purple","bold": false},{"text": " - || - ","color": "dark_gray","bold": false},{"text": "=","color": "light_purple","bold": false},{"text": " ]","color": "dark_purple","bold": true}]
title @a[scores={char=70,passive_bard=21..30,CC_silence=0},tag=!bard_jumped_display] actionbar [{"text": "[ ","color": "dark_purple","bold": true},{"text": "= -","color": "light_purple","bold": false},{"text": " || ","color": "dark_gray","bold": false},{"text": "- =","color": "light_purple","bold": false},{"text": " ]","color": "dark_purple","bold": true}]
title @a[scores={char=70,passive_bard=31..40,CC_silence=0},tag=!bard_jumped_display] actionbar [{"text": "[ ","color": "dark_purple","bold": true},{"text": "= - || - =","color": "light_purple","bold": false},{"text": " ]","color": "dark_purple","bold": true}]

title @a[scores={char=70,CC_silence=1..},tag=!bard_jumped_display] actionbar [{"text": "[ ","color": "dark_purple","bold": true},{"text": "You can't shut me up forever!","color": "dark_gray","bold": false},{"text": " ]","color": "dark_purple","bold": true}]

scoreboard players add @a[scores={char=70}] passive_bard 1
scoreboard players reset @a[scores={char=70,passive_bard=40..}] passive_bard
scoreboard players reset @a[scores={char=70,CC_silence=1..}] passive_bard

scoreboard players set @a[scores={char=70,universal_jump=1..,CC_silence=0,passive_bard=24..,passive_bard_use=0}] passive_bard_use 1
scoreboard players set @a[scores={char=70,s1_timer=1,CC_silence=0,passive_bard=24..,passive_bard_use=0}] passive_bard_use 1
scoreboard players set @a[scores={char=70,s1_timer_recast=1,CC_silence=0,passive_bard=24..,passive_bard_use=0}] passive_bard_use 1
scoreboard players set @a[scores={char=70,s2_timer=1,CC_silence=0,passive_bard=24..,passive_bard_use=0}] passive_bard_use 1

execute as @a[scores={char=70,passive_bard=1,CC_silence=0}] at @s run playsound block.note_block.snare master @s ~ ~ ~ .5 1 1
execute as @a[scores={char=70,passive_bard=11,CC_silence=0}] at @s run playsound block.note_block.snare master @s ~ ~ ~ .5 1 1
execute as @a[scores={char=70,passive_bard=21,CC_silence=0}] at @s run playsound block.note_block.snare master @s ~ ~ ~ .5 1 1
execute as @a[scores={char=70,passive_bard=31,CC_silence=0}] at @s run playsound block.note_block.snare master @s ~ ~ ~ .5 2 1

execute as @a[scores={char=70,passive_bard=23..,passive_bard_use=1,CC_silence=0}] run tag @s add bard_jumped_display
title @a[scores={char=70,passive_bard=30..32,passive_bard_use=1,CC_silence=0}] actionbar [{"text": "[ ","color": "dark_purple","bold": true},{"text": "Perfect!","color": "gold","bold": false},{"text": " ]","color": "dark_purple","bold": true}]
title @a[scores={char=70,passive_bard=27..29,passive_bard_use=1,CC_silence=0}] actionbar [{"text": "[ ","color": "dark_purple","bold": true},{"text": "Early...","color": "yellow","bold": false},{"text": " ]","color": "dark_purple","bold": true}]
title @a[scores={char=70,passive_bard=33..35,passive_bard_use=1,CC_silence=0}] actionbar [{"text": "[ ","color": "dark_purple","bold": true},{"text": "Late...","color": "yellow","bold": false},{"text": " ]","color": "dark_purple","bold": true}]
title @a[scores={char=70,passive_bard=22..26,passive_bard_use=1,CC_silence=0}] actionbar [{"text": "[ ","color": "dark_purple","bold": true},{"text": "Very Early...","color": "gray","bold": false},{"text": " ]","color": "dark_purple","bold": true}]
title @a[scores={char=70,passive_bard=36..,passive_bard_use=1,CC_silence=0}] actionbar [{"text": "[ ","color": "dark_purple","bold": true},{"text": "Very Late...","color": "gray","bold": false},{"text": " ]","color": "dark_purple","bold": true}]

execute at @a[scores={char=70,passive_bard=30..32,CC_silence=0,passive_bard_use=1,universal_jump=1}] as @a[distance=..4] if score @s Team = @p[scores={char=70}] Team run effect give @s absorption 1 0
execute at @a[scores={char=70,passive_bard=30..32,CC_silence=0,passive_bard_use=1,universal_jump=1}] as @a[distance=..4] if score @s Team = @p[scores={char=70}] Team run effect give @s speed 1 1

scoreboard players add @e[tag=sog_visuals] s0_timer 1

execute at @a[scores={char=70,passive_bard=30..32,CC_silence=0,passive_bard_use=1,universal_jump=1}] run summon marker ~ ~0.25 ~ {Tags:["sog_visual_core","sog_visuals","entities_bard"]}
execute at @a[scores={char=70,passive_bard=30..32,CC_silence=0,passive_bard_use=1,universal_jump=1}] run summon marker ~0.5 ~0.25 ~ {Tags:["sog_visual_1","sog_visuals","entities_bard"]}
execute at @a[scores={char=70,passive_bard=30..32,CC_silence=0,passive_bard_use=1,universal_jump=1}] run summon marker ~-0.5 ~0.25 ~ {Tags:["sog_visual_2","sog_visuals","entities_bard"]}
execute at @a[scores={char=70,passive_bard=30..32,CC_silence=0,passive_bard_use=1,universal_jump=1}] run summon marker ~ ~0.25 ~0.5 {Tags:["sog_visual_3","sog_visuals","entities_bard"]}
execute at @a[scores={char=70,passive_bard=30..32,CC_silence=0,passive_bard_use=1,universal_jump=1}] run summon marker ~ ~0.25 ~-0.5 {Tags:["sog_visual_4","sog_visuals","entities_bard"]}

execute at @e[tag=sog_visuals,tag=!sog_visual_core] run particle scrape ~ ~0.2 ~ 0.2 0.1 0.2 0.000001 8
execute at @e[tag=sog_visuals,tag=!sog_visual_core] run particle note ~ ~-0.2 ~ 0.2 0.1 0.2 1 5
execute as @e[tag=sog_visuals,tag=!sog_visual_core] at @s run tp @s ~ ~ ~ facing entity @e[tag=sog_visual_core,limit=1]
execute as @e[tag=sog_visuals,tag=!sog_visual_core] store result entity @s Rotation[1] float 1 run clear
execute as @e[tag=sog_visuals,tag=!sog_visual_core] at @s run tp @s ^0.9 ^ ^-0.21

kill @e[tag=sog_visuals,scores={s0_timer=10}]

#> The Parts Falling (formerly song of healing, formerly crescendo)

clear @a[scores={char=70,s1_timer=1,CC_silence=0}] *[custom_data={s1:1}]
clear @a[scores={char=70,s1_timer_recast=1,CC_silence=0}] *[custom_data={s1:2}]

scoreboard players set @a[scores={char=70,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=70,s1_timer=1,CC_silence=1..}] s1_timer 220

tag @a[scores={char=70,s1_timer=1,passive_bard=30..32,CC_silence=0,passive_bard_use=1}] add bard_s1_perfect
execute at @a[scores={char=70,s1_timer=1,passive_bard=30..32,CC_silence=0,passive_bard_use=1}] run particle end_rod ~ ~1 ~ .25 .4 .25 .1 15
execute at @a[scores={char=70,s1_timer=1,passive_bard=30..32,CC_silence=0,passive_bard_use=1}] run playsound block.note_block.chime master @a[distance=..12] ~ ~ ~ .65 2 1

effect give @a[scores={char=70,s1_timer=1,CC_silence=0},tag=bard_s1_perfect] speed 2 2
execute at @a[scores={char=70,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["entities_bard","crescendo_range"]}

execute as @a[scores={char=70,s1_timer=1..50,CC_silence=0}] at @s run tp @e[tag=crescendo_range,type=marker,limit=1] ~ ~ ~

execute as @e[tag=crescendo_range,type=marker,limit=1] at @s run rotate @s ~6 ~
execute at @e[tag=crescendo_range,type=marker,limit=1] run particle dust{color:[.878,.69,1],scale:1.5} ^ ^ ^4 .1 .2 .1 0 5
execute at @e[tag=crescendo_range,type=marker,limit=1] run particle dust{color:[.878,.69,1],scale:1.5} ^ ^ ^-4 .1 .2 .1 0 5
execute at @e[tag=crescendo_range,type=marker,limit=1] run particle dust{color:[.878,.69,1],scale:1.5} ^4 ^ ^ .1 .2 .1 0 5
execute at @e[tag=crescendo_range,type=marker,limit=1] run particle dust{color:[.878,.69,1],scale:1.5} ^-4 ^ ^ .1 .2 .1 0 5
execute at @e[tag=crescendo_range,type=marker,limit=1] run particle dust{color:[.878,.69,1],scale:1.5} ^-3 ^ ^3 .1 .2 .1 0 5
execute at @e[tag=crescendo_range,type=marker,limit=1] run particle dust{color:[.878,.69,1],scale:1.5} ^3 ^ ^-3 .1 .2 .1 0 5
execute at @e[tag=crescendo_range,type=marker,limit=1] run particle dust{color:[.878,.69,1],scale:1.5} ^3 ^ ^3 .1 .2 .1 0 5
execute at @e[tag=crescendo_range,type=marker,limit=1] run particle dust{color:[.878,.69,1],scale:1.5} ^-3 ^ ^-3 .1 .2 .1 0 5

execute at @a[scores={char=70,s1_timer=45}] run kill @e[tag=crescendo_range,type=marker,limit=1]

execute at @a[scores={char=70,s1_timer=10,CC_silence=0},tag=!bard_s1_perfect] run playsound block.note_block.bass master @a[distance=..12] ~ ~ ~ 10 1 1
execute at @a[scores={char=70,s1_timer=20,CC_silence=0},tag=!bard_s1_perfect] run playsound block.note_block.bass master @a[distance=..12] ~ ~ ~ 10 1.5 1
execute at @a[scores={char=70,s1_timer=30,CC_silence=0},tag=!bard_s1_perfect] run playsound block.note_block.bass master @a[distance=..12] ~ ~ ~ 10 2 1

execute at @a[scores={char=70,s1_timer=10..19,CC_silence=0,passive_bard=1},tag=bard_s1_perfect] run playsound block.note_block.bass master @a[distance=..12] ~ ~ ~ 10 1 1
execute at @a[scores={char=70,s1_timer=20..29,CC_silence=0,passive_bard=11},tag=bard_s1_perfect] run playsound block.note_block.bass master @a[distance=..12] ~ ~ ~ 10 1.5 1
execute at @a[scores={char=70,s1_timer=30..39,CC_silence=0,passive_bard=21},tag=bard_s1_perfect] run playsound block.note_block.bass master @a[distance=..12] ~ ~ ~ 10 2 1

execute at @a[scores={char=70,s1_timer=1..40,CC_silence=0}] as @a[distance=..4] if score @s Team = @p[scores={char=70}] Team run effect give @s speed 1 1
execute at @a[scores={char=70,s1_timer=1..40,CC_silence=0}] as @a[distance=..4] unless score @s Team = @p[scores={char=70}] Team run scoreboard players set @s CC_grounded 2

#--- recast --- (song of healing (hey wait its back))

clear @a[scores={char=70,s1_timer_recast=1..}] *[custom_data={s1:2}]

tag @a[scores={char=70,s1_timer_recast=1,passive_bard=30..32,CC_silence=0,passive_bard_use=1}] add bard_s1_recast_perfect
title @a[scores={char=70,s1_timer_recast=1,CC_silence=0},tag=bard_s1_recast_perfect] actionbar [{"text": "[ ","color": "dark_purple","bold": true},{"text": "Perfect!","color": "gold","bold": false},{"text": " ]","color": "dark_purple","bold": true}]

execute at @a[scores={char=70,s1_timer_recast=1,CC_silence=0},tag=bard_s1_recast_perfect] run playsound block.note_block.guitar master @a[distance=..12] ~ ~ ~ 10 2 1
execute at @a[scores={char=70,s1_timer_recast=1,CC_silence=0},tag=!bard_s1_recast_perfect] run playsound block.note_block.guitar master @a[distance=..12] ~ ~ ~ 10 1 1
execute at @a[scores={char=70,s1_timer_recast=1,CC_silence=0},tag=bard_s1_recast_perfect] as @a[distance=..12] unless score @s Team = @p[scores={char=70}] Team run playsound ambient.cave master @s ~ ~ ~ 1 1 1

execute at @a[scores={char=70,s1_timer_recast=1,CC_silence=0},tag=!bard_s1_recast_perfect] as @a[distance=..4] unless score @s Team = @p[scores={char=70}] Team run scoreboard players set @s CC_grounded 20

scoreboard players set @a[scores={char=70,s1_timer_recast=1,CC_silence=0}] s1_timer 39
effect give @a[scores={char=70,s1_timer_recast=1,CC_silence=0},tag=bard_s1_recast_perfect] regeneration 2 2 true
execute at @a[scores={char=70,s1_timer_recast=1,CC_silence=0},tag=bard_s1_recast_perfect] as @a[distance=.5..4,scores={CC_defiled=0}] if score @s Team = @p[scores={char=70}] Team run effect give @s regeneration 4 2 true

execute at @a[scores={char=70,s1_timer_recast=1,CC_silence=0},tag=bard_s1_recast_perfect] as @a[distance=..4] unless score @s Team = @p[scores={char=70}] Team run tag @s add bard_fear

scoreboard players set @e[tag=bard_fear,tag=valid_spell_target] CC_disarm 40
execute as @e[tag=bard_fear,tag=valid_spell_target] at @s facing entity @p[scores={char=70},distance=.5..] feet run rotate @s ~180 ~
tag @e[tag=bard_fear,tag=valid_spell_target] remove bard_fear

execute at @a[scores={char=70,s1_timer_recast=1,CC_silence=0}] run summon marker ~ ~0.25 ~ {Tags:["crescendo_visual_core","crescendo_visuals","entities_bard"]}
execute at @a[scores={char=70,s1_timer_recast=1,CC_silence=0}] run summon marker ~0.5 ~0.25 ~ {Tags:["crescendo_visual_1","crescendo_visuals","entities_bard"]}
execute at @a[scores={char=70,s1_timer_recast=1,CC_silence=0}] run summon marker ~-0.5 ~0.25 ~ {Tags:["crescendo_visual_2","crescendo_visuals","entities_bard"]}
execute at @a[scores={char=70,s1_timer_recast=1,CC_silence=0}] run summon marker ~ ~0.25 ~0.5 {Tags:["crescendo_visual_3","crescendo_visuals","entities_bard"]}
execute at @a[scores={char=70,s1_timer_recast=1,CC_silence=0}] run summon marker ~ ~0.25 ~-0.5 {Tags:["crescendo_visual_4","crescendo_visuals","entities_bard"]}

execute at @e[tag=crescendo_visuals,tag=!crescendo_visual_core] run particle end_rod ~ ~0.2 ~ 0.2 0.1 0.2 0.000001 15
execute at @e[tag=crescendo_visuals,tag=!crescendo_visual_core] run particle note ~ ~-0.2 ~ 0.2 0.1 0.2 1 5
execute as @e[tag=crescendo_visuals,tag=!crescendo_visual_core] at @s run tp @s ~ ~ ~ facing entity @e[tag=crescendo_visual_core,limit=1]
execute as @e[tag=crescendo_visuals,tag=!crescendo_visual_core] store result entity @s Rotation[1] float 1 run clear
execute as @e[tag=crescendo_visuals,tag=!crescendo_visual_core] at @s run tp @s ^0.9 ^ ^-0.21

execute at @a[scores={char=70,s1_timer_recast=10..}] run kill @e[tag=crescendo_visuals]

tag @a[scores={char=70,s1_timer_recast=40}] remove bard_s1_recast_perfect
tag @a[scores={char=70,s1_timer=40}] remove bard_s1_perfect

#> trapped under ice (formerly chilled encore)

scoreboard players set @a[scores={char=70,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=70,s2_timer=1,CC_silence=1..}] s2_timer 420

tag @a[scores={char=70,s2_timer=1,passive_bard=30..32,CC_silence=0,passive_bard_use=1}] add bard_s2_perfect
execute at @a[scores={char=70,s2_timer=1,passive_bard=30..32,CC_silence=0,passive_bard_use=1}] run playsound block.note_block.chime master @a[distance=..12] ~ ~ ~ .65 2 1
execute at @a[scores={char=70,s2_timer=1,passive_bard=30..32,CC_silence=0,passive_bard_use=1}] run particle end_rod ~ ~1 ~ .25 .4 .25 .1 15

execute at @a[scores={char=70,s2_timer=1,CC_silence=0}] run playsound entity.skeleton.converted_to_stray master @a[distance=..12] ~ ~ ~ 1 0 1
execute at @a[scores={char=70,s2_timer=1,CC_silence=0}] run playsound entity.player.hurt_freeze master @a[distance=..12] ~ ~ ~ 1 0 1

execute at @a[scores={char=70,s2_timer=1,CC_silence=0}] run particle block{block_state:ice} ~ ~ ~ 2 0 2 1 5
execute at @a[scores={char=70,s2_timer=1,CC_silence=0}] run particle block{block_state:snow} ~ ~ ~ 2 0 2 1 5

execute at @a[scores={char=70,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["entities_bard","encore_range"]}

execute as @e[tag=encore_range,type=marker,limit=1] at @s run rotate @s ~6 ~
execute at @e[tag=encore_range,type=marker,limit=1] run particle falling_dust{block_state:ice} ^ ^ ^6 .1 .2 .1 0 5
execute at @e[tag=encore_range,type=marker,limit=1] run particle falling_dust{block_state:ice} ^ ^ ^-6 .1 .2 .1 0 5
execute at @e[tag=encore_range,type=marker,limit=1] run particle falling_dust{block_state:ice} ^6 ^ ^ .1 .2 .1 0 5
execute at @e[tag=encore_range,type=marker,limit=1] run particle falling_dust{block_state:ice} ^-6 ^ ^ .1 .2 .1 0 5
execute at @e[tag=encore_range,type=marker,limit=1] run particle falling_dust{block_state:snow} ^-4.5 ^ ^4.5 .1 .2 .1 0 5
execute at @e[tag=encore_range,type=marker,limit=1] run particle falling_dust{block_state:snow} ^4.5 ^ ^-4.5 .1 .2 .1 0 5
execute at @e[tag=encore_range,type=marker,limit=1] run particle falling_dust{block_state:snow} ^4.5 ^ ^4.5 .1 .2 .1 0 5
execute at @e[tag=encore_range,type=marker,limit=1] run particle falling_dust{block_state:snow} ^-4.5 ^ ^-4.5 .1 .2 .1 0 5

execute at @a[scores={char=70,s2_timer=20..}] run kill @e[tag=encore_range,type=marker,limit=1]

execute at @a[scores={char=70,s2_timer=1,CC_silence=0}] run summon marker ~ ~0.25 ~ {Tags:["encore_visual_core","encore_visuals","entities_bard"]}
execute at @a[scores={char=70,s2_timer=1,CC_silence=0}] run summon block_display ~0.5 ~0.25 ~ {Tags:["encore_visual_1","encore_visuals","entities_bard"],block_state:{Name:"packed_ice"},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[.625,.625,.625],translation:[-.375,-.375,-.375]},teleport_duration:1,brightness:{sky:15,block:15}}
execute at @a[scores={char=70,s2_timer=1,CC_silence=0}] run summon block_display ~-0.5 ~0.25 ~ {Tags:["encore_visual_2","encore_visuals","entities_bard"],block_state:{Name:"packed_ice"},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[.625,.625,.625],translation:[-.375,-.375,-.375]},teleport_duration:1,brightness:{sky:15,block:15}}
execute at @a[scores={char=70,s2_timer=1,CC_silence=0}] run summon block_display ~ ~0.25 ~0.5 {Tags:["encore_visual_3","encore_visuals","entities_bard"],block_state:{Name:"packed_ice"},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[.625,.625,.625],translation:[-.375,-.375,-.375]},teleport_duration:1,brightness:{sky:15,block:15}}
execute at @a[scores={char=70,s2_timer=1,CC_silence=0}] run summon block_display ~ ~0.25 ~-0.5 {Tags:["encore_visual_4","encore_visuals","entities_bard"],block_state:{Name:"packed_ice"},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[.625,.625,.625],translation:[-.375,-.375,-.375]},teleport_duration:1,brightness:{sky:15,block:15}}

execute at @e[tag=encore_visuals,tag=!encore_visual_core] run particle falling_dust{block_state:ice} ~ ~0.2 ~ 0.2 0.1 0.2 0.000001 6
execute at @e[tag=encore_visuals,tag=!encore_visual_core] run particle falling_dust{block_state:snow} ~ ~0.2 ~ 0.2 0.1 0.2 1 6
execute as @e[tag=encore_visuals,tag=!encore_visual_core] at @s run tp @s ~ ~ ~ facing entity @e[tag=encore_visual_core,limit=1]
execute as @e[tag=encore_visuals,tag=!encore_visual_core] store result entity @s Rotation[1] float 1 run clear
execute as @e[tag=encore_visuals,tag=!encore_visual_core] at @s run tp @s ^0.6 ^ ^-0.2

execute at @a[scores={char=70,s2_timer=20..}] at @e[tag=encore_visuals,tag=!encore_visual_core] run particle block{block_state:"packed_ice"} ~ ~ ~ .2 .2 .2 1 8
execute at @a[scores={char=70,s2_timer=20..}] run kill @e[tag=encore_visuals]

#- actual effect

execute at @a[scores={char=70,s2_timer=1,CC_silence=0}] as @e[tag=valid_spell_target,distance=..6] if score @s Team = @p[scores={char=70}] Team run effect give @s speed 2 1

execute at @a[scores={char=70,s2_timer=1,CC_silence=0},tag=!bard_s2_perfect] as @e[tag=valid_spell_target,distance=..6] unless score @s Team = @p[scores={char=70}] Team run effect give @s slowness 2 2
execute at @a[scores={char=70,s2_timer=1,CC_silence=0},tag=bard_s2_perfect] as @e[tag=valid_spell_target,distance=..6] unless score @s Team = @p[scores={char=70}] Team run scoreboard players set @s CC_glaciate 100

tag @a[scores={char=70,s2_timer=2},tag=bard_s2_perfect] remove bard_s2_perfect

#- wee bit cold

execute as @e[tag=valid_spell_target,scores={CC_glaciate=1..}] at @s if data entity @s {HurtTime:10s} run particle snowflake ~ ~1 ~ .3 .3 .3 0 5
execute as @e[tag=valid_spell_target,scores={CC_glaciate=1..}] at @s if data entity @s {HurtTime:10s} run particle item_snowball ~ ~1 ~ .3 .3 .3 0 5
execute as @e[tag=valid_spell_target,scores={CC_glaciate=1..}] at @s if data entity @s {HurtTime:10s} run playsound entity.player.hurt_freeze master @a[distance=..10] ~ ~ ~ 1 1 1

execute as @e[tag=valid_spell_target,scores={CC_glaciate=1..}] at @s if data entity @s {HurtTime:10s} on attacker run effect give @s speed 2 0
execute as @e[tag=valid_spell_target,scores={CC_glaciate=1..}] at @s if data entity @s {HurtTime:10s} run damage @s 1 dragon_breath

#> Bard

scoreboard players add @a[scores={char=70,passive_bard_use=1..}] passive_bard_use 1
scoreboard players set @a[scores={char=70,passive_bard=20}] passive_bard_use 0

scoreboard players set @a[scores={char=70,s1_timer=41}] spellCD1 240
scoreboard players add @a[scores={char=70,s1_timer=1..}] s1_timer 1
scoreboard players set @a[scores={char=70,s1_timer=281..}] s1_timer 0
scoreboard players add @a[scores={char=70,s1_timer_recast=1..}] s1_timer_recast 1
scoreboard players set @a[scores={char=70,s1_timer_recast=100..}] s1_timer_recast 0

scoreboard players set @a[scores={char=70,s2_timer=1}] spellCD2 360
scoreboard players add @a[scores={char=70,s2_timer=1..}] s2_timer 1
scoreboard players set @a[scores={char=70,s2_timer=361..}] s2_timer 0

execute as @a[scores={char=70}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_shovel",Slot:0b}]}] run clear @a[scores={char=70}] golden_shovel
item replace entity @a[scores={char=70}] hotbar.0 with golden_shovel[custom_name={"bold":true,"color":"gray","text":"Guitar"},unbreakable={},attribute_modifiers=[{id:"armor",type:"attack_damage",amount:2d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=70,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=70}] carrot_on_a_stick
item replace entity @a[scores={char=70,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[minecraft:custom_name={"text":"A Part Falls","color":"dark_aqua","bold":true},custom_data={s1:1},item_model="music_disc_5"] 1

execute as @a[scores={char=70,s1_timer=20..40,s1_timer_recast=0,CC_silence=0},tag=bard_s1_perfect] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=70}] carrot_on_a_stick
item replace entity @a[scores={char=70,s1_timer=20..40,s1_timer_recast=0,CC_silence=0},tag=bard_s1_perfect] hotbar.1 with carrot_on_a_stick[minecraft:custom_name={"text":"Song of Healing","color":"dark_aqua","bold":true},custom_data={s1:2},item_model="music_disc_precipice"] 1

execute as @a[scores={char=70,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=70}] warped_fungus_on_a_stick
item replace entity @a[scores={char=70,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[minecraft:custom_name={"text":"Trapped Under Ice","color":"dark_aqua","bold":true},custom_data={s2:1},item_model="music_disc_relic"] 1