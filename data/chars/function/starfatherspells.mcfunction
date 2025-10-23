kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:deepslate_diamond_ore"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:end_crystal"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bow"}}]

effect give @a[scores={char=60},nbt={SelectedItem:{id:"minecraft:bow"}}] minecraft:weakness 1 100 true

#starmaker

execute at @a[scores={char=60,arrowcd_1=..10}] run tag @e[type=minecraft:arrow,distance=..2] add starfather_ar
execute at @e[tag=starfather_ar] run particle minecraft:sculk_charge_pop ~ ~ ~ 0.1 0.1 0.1 0.15 5
execute at @e[tag=starfather_ar] run particle minecraft:scrape ~ ~ ~ 0.5 0.5 0.5 0.1 1


execute at @a[scores={char=60,CC_disarm=1..}] run kill @e[tag=starfather_ar]


execute at @e[tag=celestial_bodies] if entity @a[scores={char=60},team=purple] run damage @p[distance=..1,team=yellow] 4
execute at @e[tag=celestial_bodies] if entity @a[scores={char=60},team=yellow] run damage @p[distance=..1,team=purple] 4

execute at @a[scores={char=60}] unless entity @e[tag=celestial_visual_core] run summon minecraft:marker ~ ~ ~ {Tags:["celestial_visual_core"]}
execute at @a[scores={char=60,CelestialBody1=200..}] unless entity @e[tag=celestial_visual_1] run summon minecraft:armor_stand ~ ~ ~ {Pose:{Head:[180.0f,0.0f,0.0f]},Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["celestial_visual_1","celestial_bodies"],equipment:{head:{id:"minecraft:deepslate_lapis_ore",count:1}}}
execute at @a[scores={char=60,CelestialBody2=200..}] unless entity @e[tag=celestial_visual_2] run summon minecraft:armor_stand ~ ~ ~ {Pose:{Head:[180.0f,0.0f,0.0f]},Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["celestial_visual_2","celestial_bodies"],equipment:{head:{id:"minecraft:deepslate_lapis_ore",count:1}}}
execute at @a[scores={char=60,CelestialBody3=200..}] unless entity @e[tag=celestial_visual_3] run summon minecraft:armor_stand ~ ~ ~ {Pose:{Head:[180.0f,0.0f,0.0f]},Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["celestial_visual_3","celestial_bodies"],equipment:{head:{id:"minecraft:deepslate_lapis_ore",count:1}}}
execute at @a[scores={char=60,CelestialBody4=200..}] unless entity @e[tag=celestial_visual_4] run summon minecraft:armor_stand ~ ~ ~ {Pose:{Head:[180.0f,0.0f,0.0f]},Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["celestial_visual_4","celestial_bodies"],equipment:{head:{id:"minecraft:deepslate_lapis_ore",count:1}}}

execute as @a[scores={char=60}] at @s run tp @e[tag=celestial_visual_core] ~ ~ ~
execute as @e[tag=celestial_visual_core] at @s run tp @s ~ ~ ~ ~4 0
execute as @e[tag=celestial_visual_core] at @s run tp @e[tag=celestial_visual_1] ^-4 ^0.3 ^4
execute as @e[tag=celestial_visual_core] at @s run tp @e[tag=celestial_visual_3] ^-4 ^0.3 ^-4
execute as @e[tag=celestial_visual_core] at @s run tp @e[tag=celestial_visual_2] ^4 ^0.3 ^4
execute as @e[tag=celestial_visual_core] at @s run tp @e[tag=celestial_visual_4] ^4 ^0.3 ^-4
execute as @e[tag=celestial_visual_1] at @s run tp @s ~ ~ ~ facing entity @e[tag=celestial_visual_core,limit=1]
execute as @e[tag=celestial_visual_2] at @s run tp @s ~ ~ ~ facing entity @e[tag=celestial_visual_core,limit=1]
execute as @e[tag=celestial_visual_3] at @s run tp @s ~ ~ ~ facing entity @e[tag=celestial_visual_core,limit=1]
execute as @e[tag=celestial_visual_4] at @s run tp @s ~ ~ ~ facing entity @e[tag=celestial_visual_core,limit=1]

execute at @e[type=minecraft:armor_stand,tag=celestial_bodies] run particle minecraft:dust{color:[0.38,0.96,0.86],scale:1.0f} ~ ~1.2 ~ 0.25 0.25 0.25 0.1 3


execute at @a[scores={char=60,CelestialBody1=199}] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=60,CelestialBody2=199}] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=60,CelestialBody3=199}] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=60,CelestialBody4=199}] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..12] ~ ~ ~ 1 0.8 1

execute unless entity @e[tag=celestial_visual_1] run scoreboard players add @a[scores={char=60,CelestialBody1=..199}] CelestialBody1 1
execute unless entity @e[tag=celestial_visual_2] run scoreboard players add @a[scores={char=60,CelestialBody2=..199}] CelestialBody2 1
execute unless entity @e[tag=celestial_visual_3] run scoreboard players add @a[scores={char=60,CelestialBody3=..199}] CelestialBody3 1
execute unless entity @e[tag=celestial_visual_4] run scoreboard players add @a[scores={char=60,CelestialBody4=..199}] CelestialBody4 1



scoreboard players remove @a[scores={char=60,spell_fath_3=1}] CelestialBodiesCount 1
execute at @a[scores={char=60,spell_fath_3=1}] run playsound minecraft:entity.evoker.cast_spell master @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @a[scores={char=60,spell_fath_3=1}] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute at @a[scores={char=60,spell_fath_3=1}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["CelestialProjectile"],NoGravity:0b}
tp @e[tag=CelestialProjectile,limit=1] @a[scores={char=60,spell_fath_3=1},limit=1]
execute if entity @a[scores={char=60,spell_fath_3=1},limit=1] as @e[tag=CelestialProjectile,limit=1] at @s run tp @s ~ ~1 ~
execute if entity @a[scores={char=60,spell_fath_3=1},limit=1] as @e[tag=CelestialProjectile,limit=1] at @s run tp @s ^ ^0.3 ^4

execute at @e[tag=CelestialProjectile] run particle minecraft:sculk_charge_pop ~ ~ ~ 0.2 0.2 0.2 0.0001 40 force
execute at @e[tag=CelestialProjectile] run particle minecraft:dust{color:[0.38,0.96,0.86],scale:1.0f} ~ ~ ~ 0.3 0.3 0.3 0.0001 10 force
execute at @e[tag=CelestialProjectile] run particle minecraft:smoke ~ ~ ~ 0.4 0.4 0.4 0.01 5 force

execute as @e[tag=CelestialProjectile] at @s run tp @s ^ ^ ^0.7


execute as @e[tag=CelestialProjectile] at @s unless block ^ ^1 ^0.1 #minecraft:dash run summon minecraft:marker ~ ~ ~ {Tags:["CelestialBoom"]}
execute if entity @a[scores={char=60},team=yellow] at @e[tag=CelestialProjectile] if entity @a[distance=..1.5,team=purple] run summon minecraft:marker ~ ~ ~ {Tags:["CelestialBoom"]}
execute if entity @a[scores={char=60},team=purple] at @e[tag=CelestialProjectile] if entity @a[distance=..1.5,team=yellow] run summon minecraft:marker ~ ~ ~ {Tags:["CelestialBoom"]}

execute if entity @e[tag=CelestialBoom] run kill @e[tag=CelestialProjectile]

execute at @e[tag=CelestialBoom] run playsound minecraft:entity.dragon_fireball.explode master @a[distance=..15] ~ ~ ~ 0.8 0.8 1
execute at @e[tag=CelestialBoom] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..15] ~ ~ ~ 1 0.2 1
execute at @e[tag=CelestialBoom] run particle minecraft:explosion ~ ~ ~ 2 2 2 0.01 20 force
execute at @e[tag=CelestialBoom] run particle minecraft:dust{color:[0.38,0.96,0.86],scale:1.0f} ~ ~ ~ 3 3 3 0.01 300 force
execute at @e[tag=CelestialBoom] run particle minecraft:sculk_charge_pop ~ ~ ~ 3.5 3.5 3.5 0.1 200 force


execute at @e[tag=CelestialBoom] if entity @a[scores={char=60},team=yellow] as @a[distance=..3,team=purple] run damage @s 8 generic by @p[scores={char=60}] from @p[scores={char=60}]

execute at @e[tag=CelestialBoom] if entity @a[scores={char=60},team=purple] as @a[distance=..3,team=yellow] run damage @s 8 generic by @p[scores={char=60}] from @p[scores={char=60}]

kill @e[tag=CelestialBoom]

scoreboard players add @a[scores={spell_fath_3=1..}] spell_fath_3 1
scoreboard players set @a[scores={spell_fath_3=20..}] spell_fath_3 0

execute at @e[tag=starfather_ar] if entity @e[distance=..1.8,tag=celestial_bodies] run particle minecraft:sculk_charge_pop ~ ~ ~ 0.4 0.4 0.4 0.15 50
execute at @e[tag=starfather_ar] if entity @e[distance=..1.8,tag=celestial_bodies] run scoreboard players set @a[scores={char=60}] spell_fath_3 1
execute at @e[tag=starfather_ar] if entity @e[distance=..1.8,tag=celestial_visual_1] run scoreboard players set @a[scores={char=60}] CelestialBody1 1
execute at @e[tag=starfather_ar] if entity @e[distance=..1.8,tag=celestial_visual_2] run scoreboard players set @a[scores={char=60}] CelestialBody2 1
execute at @e[tag=starfather_ar] if entity @e[distance=..1.8,tag=celestial_visual_3] run scoreboard players set @a[scores={char=60}] CelestialBody3 1
execute at @e[tag=starfather_ar] if entity @e[distance=..1.8,tag=celestial_visual_4] run scoreboard players set @a[scores={char=60}] CelestialBody4 1

execute at @e[tag=starfather_ar] run kill @e[distance=..1.8,tag=celestial_bodies]



#sky collapse

scoreboard players set @a[scores={char=60,spell_fath_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=60,spell_fath_1_1=1,CC_silence=1..}] spell_fath_1_1 280

scoreboard players set @a[scores={char=60,spell_fath_1_1=2,spell_fath_2_1=1..58,CC_silence=0}] spell_fath_2_1 58


scoreboard players set @a[scores={char=60,spell_fath_1_1=1,CC_silence=0}] arrowcd 1
scoreboard players set @a[scores={char=60,spell_fath_1_1=1,CC_silence=0}] arrowcd_1 60
execute at @a[scores={char=60,spell_fath_1_1=2,CC_silence=0}] run playsound minecraft:block.end_portal.spawn master @a[distance=..15] ~ ~ ~ 0.1 2 1
execute at @a[scores={char=60,spell_fath_1_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["meteor_marker"],NoGravity:1b,equipment:{head:{id:"minecraft:deepslate_diamond_ore",count:1}}}
execute at @a[scores={char=60,spell_fath_1_1=1,CC_silence=0}] run playsound minecraft:entity.snowball.throw master @a[distance=..10] ~ ~ ~ 1 0.8 1
tp @e[tag=meteor_marker,limit=1] @a[scores={char=60,spell_fath_1_1=1},limit=1]
execute at @a[scores={char=60,spell_fath_1_1=1},limit=1] run tp @e[tag=meteor_marker,limit=1] ~ ~1 ~



#execute as @a[scores={char=60}] at @s if entity @s[nbt={Inventory:[{id:"minecraft:tipped_arrow",Slot:8b}]}] run particle minecraft:electric_spark ~ ~1 ~ 0.5 1 0.5 0.01 5
#execute as @a[scores={char=60}] at @s if entity @s[nbt={Inventory:[{id:"minecraft:tipped_arrow",Slot:8b}]}] run particle minecraft:sculk_charge_pop ~ ~1 ~ 1 1.5 1 0.01 2


execute at @a[scores={char=60,spell_fath_1_1=1..14}] as @e[tag=meteor_marker] at @s run tp @s ^ ^ ^0.7

execute at @a[scores={char=60,spell_fath_1_1=15..24}] as @e[tag=meteor_marker] at @s run tp @s ^ ^ ^0.6
execute at @a[scores={char=60,spell_fath_1_1=15..24}] as @e[tag=meteor_marker] at @s run tp @s ~ ~-0.3 ~

execute at @a[scores={char=60,spell_fath_1_1=25..}] as @e[tag=meteor_marker] at @s run tp @s ^ ^ ^0.5
execute at @a[scores={char=60,spell_fath_1_1=25..}] as @e[tag=meteor_marker] at @s run tp @s ~ ~-0.5 ~

execute at @a[scores={char=60,spell_fath_1_1=40..}] as @e[tag=meteor_marker] at @s run tp @s ~ ~-0.6 ~

execute at @e[tag=meteor_marker] run particle minecraft:sculk_charge_pop ~ ~1 ~ 0.1 0.2 0.1 0.01 3 normal
execute at @e[tag=meteor_marker] run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.2 0.1 0.01 4 normal


execute as @e[tag=meteor_marker] at @s unless block ~ ~-0.5 ~ #minecraft:dash run summon minecraft:marker ~ ~ ~ {Tags:["meteor_point"]}
execute as @e[tag=meteor_marker] at @s unless block ~ ~-0.5 ~ #minecraft:dash run summon minecraft:marker ~ ~30 ~ {Tags:["meteor"]}
execute as @e[tag=meteor_marker] at @s unless block ~ ~-0.5 ~ #minecraft:dash run kill @s


scoreboard players add @e[tag=meteor_point] spell_fath_1 1
scoreboard players add @e[tag=meteor] spell_fath_1 1

execute at @e[tag=meteor_point] run particle minecraft:electric_spark ~ ~0.2 ~ 3 0.2 3 0.01 3
execute at @e[tag=meteor] run particle minecraft:electric_spark ~ ~0.2 ~ 1 1 1 0.01 3
execute at @e[tag=meteor] run particle minecraft:sculk_charge_pop ~ ~0.2 ~ 0.5 0.5 0.5 0.01 3
execute at @e[tag=meteor] run particle minecraft:dust{color:[0.38,0.96,0.86],scale:1.0f} ~ ~0.2 ~ 1 1 1 0.01 5


execute as @e[tag=meteor,scores={spell_fath_1=..61}] at @s run tp @s ~ ~-0.5 ~


execute at @e[tag=meteor,scores={spell_fath_1=60}] if entity @a[scores={char=60},team=purple] as @a[distance=..3,team=yellow] run damage @s 10 generic by @p[scores={char=60}] from @p[scores={char=60}]
execute at @e[tag=meteor,scores={spell_fath_1=60}] if entity @a[scores={char=60},team=purple] run effect give @a[distance=..3,team=yellow] minecraft:blindness 1 1 true
execute at @e[tag=meteor,scores={spell_fath_1=60}] if entity @a[scores={char=60},team=purple] run scoreboard players set @a[distance=..3,team=yellow] CC_stun 10

execute at @e[tag=meteor,scores={spell_fath_1=60}] if entity @a[scores={char=60},team=yellow] as @a[distance=..3,team=purple] run damage @s 10 generic by @p[scores={char=60}] from @p[scores={char=60}]
execute at @e[tag=meteor,scores={spell_fath_1=60}] if entity @a[scores={char=60},team=yellow] run effect give @a[distance=..3,team=purple] minecraft:blindness 1 1 true
execute at @e[tag=meteor,scores={spell_fath_1=60}] if entity @a[scores={char=60},team=yellow] run scoreboard players set @a[distance=..3,team=purple] CC_stun 10


execute at @e[tag=meteor,scores={spell_fath_1=60}] run particle minecraft:dust{color:[0.38,0.96,0.86],scale:1.0f} ~ ~0.2 ~ 5 0.1 5 0.01 300
execute at @e[tag=meteor,scores={spell_fath_1=60}] run particle minecraft:sculk_charge_pop ~ ~ ~ 4 1 4 1 100
execute at @e[tag=meteor,scores={spell_fath_1=60}] run particle minecraft:electric_spark ~ ~ ~ 3 1 3 1 30
execute at @e[tag=meteor,scores={spell_fath_1=60}] run playsound minecraft:entity.lightning_bolt.impact master @a[distance=..14] ~ ~ ~ 0.8 0.4 1
execute at @e[tag=meteor,scores={spell_fath_1=60}] run playsound minecraft:entity.evoker.prepare_summon master @a[distance=..14] ~ ~ ~ 1 0.8 1

execute at @e[tag=meteor,scores={spell_fath_1=90}] run particle minecraft:dust{color:[0.38,0.96,0.86],scale:1.0f} ~ ~ ~ 1.5 1 0.5 1 100
execute at @e[tag=meteor,scores={spell_fath_1=90}] run particle minecraft:sculk_charge_pop ~ ~ ~ 1.5 1 0.5 1 50
execute at @e[tag=meteor,scores={spell_fath_1=90}] run particle minecraft:block{block_state:{Name:"minecraft:deepslate_diamond_ore"}} ~ ~ ~ 1.5 1 0.5 1 10
execute at @e[tag=meteor,scores={spell_fath_1=90}] run playsound minecraft:block.stone.break master @a[distance=..14] ~ ~ ~ 1 0.5 1
execute at @e[tag=meteor,scores={spell_fath_1=90..}] run kill @e[tag=meteor_visuals]
kill @e[tag=meteor,scores={spell_fath_1=90..}]

kill @e[tag=meteor_point,scores={spell_fath_1=60..}]

execute at @e[tag=meteor] unless entity @e[distance=..1.5,tag=meteor_visual_1] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["meteor_visual_1","meteor_visuals"],equipment:{head:{id:"minecraft:deepslate_diamond_ore",count:1}}}
execute at @e[tag=meteor] unless entity @e[distance=..1.5,tag=meteor_visual_2] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["meteor_visual_2","meteor_visuals"],equipment:{head:{id:"minecraft:deepslate_diamond_ore",count:1}}}
execute at @e[tag=meteor] unless entity @e[distance=..1.5,tag=meteor_visual_3] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["meteor_visual_3","meteor_visuals"],equipment:{head:{id:"minecraft:deepslate_diamond_ore",count:1}}}
execute at @e[tag=meteor] unless entity @e[distance=..1.5,tag=meteor_visual_4] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["meteor_visual_4","meteor_visuals"],equipment:{head:{id:"minecraft:deepslate_diamond_ore",count:1}}}

execute at @e[tag=meteor] unless entity @e[distance=..1.5,tag=meteor_visual_5] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["meteor_visual_5","meteor_visuals"],equipment:{head:{id:"minecraft:deepslate_diamond_ore",count:1}}}
execute at @e[tag=meteor] unless entity @e[distance=..1.5,tag=meteor_visual_6] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["meteor_visual_6","meteor_visuals"],equipment:{head:{id:"minecraft:deepslate_diamond_ore",count:1}}}
execute at @e[tag=meteor] unless entity @e[distance=..1.5,tag=meteor_visual_7] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["meteor_visual_7","meteor_visuals"],equipment:{head:{id:"minecraft:deepslate_diamond_ore",count:1}}}
execute at @e[tag=meteor] unless entity @e[distance=..1.5,tag=meteor_visual_8] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["meteor_visual_8","meteor_visuals"],equipment:{head:{id:"minecraft:deepslate_diamond_ore",count:1}}}

execute at @e[tag=meteor] unless entity @e[distance=..1.5,tag=meteor_visual_9] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["meteor_visual_9","meteor_visuals"],equipment:{head:{id:"minecraft:deepslate_diamond_ore",count:1}}}
execute at @e[tag=meteor] unless entity @e[distance=..1.5,tag=meteor_visual_11] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["meteor_visual_10","meteor_visuals"],equipment:{head:{id:"minecraft:deepslate_diamond_ore",count:1}}}
execute at @e[tag=meteor] unless entity @e[distance=..1.5,tag=meteor_visual_11] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["meteor_visual_11","meteor_visuals"],equipment:{head:{id:"minecraft:deepslate_diamond_ore",count:1}}}
execute at @e[tag=meteor] unless entity @e[distance=..1.5,tag=meteor_visual_12] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["meteor_visual_12","meteor_visuals"],equipment:{head:{id:"minecraft:deepslate_diamond_ore",count:1}}}


execute at @e[tag=meteor] run tp @e[distance=..1.5,tag=meteor_visual_1] ~0.3 ~0.1 ~0.3
execute at @e[tag=meteor] run tp @e[distance=..1.5,tag=meteor_visual_2] ~-0.3 ~0.1 ~-0.3
execute at @e[tag=meteor] run tp @e[distance=..1.5,tag=meteor_visual_3] ~0.3 ~0.1 ~-0.3
execute at @e[tag=meteor] run tp @e[distance=..1.5,tag=meteor_visual_4] ~-0.3 ~0.1 ~0.3

execute at @e[tag=meteor] run tp @e[distance=..1.5,tag=meteor_visual_5] ~0.3 ~-0.5 ~0.3
execute at @e[tag=meteor] run tp @e[distance=..1.5,tag=meteor_visual_6] ~-0.3 ~-0.5 ~-0.3
execute at @e[tag=meteor] run tp @e[distance=..1.5,tag=meteor_visual_7] ~0.3 ~-0.5 ~-0.3
execute at @e[tag=meteor] run tp @e[distance=..1.5,tag=meteor_visual_8] ~-0.3 ~-0.5 ~0.3

execute at @e[tag=meteor] run tp @e[distance=..1.5,tag=meteor_visual_9] ~0.3 ~-1.1 ~0.3
execute at @e[tag=meteor] run tp @e[distance=..1.5,tag=meteor_visual_10] ~-0.3 ~-1.1 ~-0.3
execute at @e[tag=meteor] run tp @e[distance=..1.5,tag=meteor_visual_11] ~0.3 ~-1.1 ~-0.3
execute at @e[tag=meteor] run tp @e[distance=..1.5,tag=meteor_visual_12] ~-0.3 ~-1.1 ~0.3


#event horizon

scoreboard players set @a[scores={char=60,spell_fath_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=60,spell_fath_2_1=1,CC_silence=1..}] spell_fath_2_1 380


execute at @a[scores={char=60,spell_fath_2_1=1,CC_silence=0}] run playsound minecraft:entity.wither.ambient master @a[distance=..10] ~ ~ ~ 0.2 1.5 1
execute at @a[scores={char=60,spell_fath_2_1=1,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["BlackHole"]}
tp @e[tag=BlackHole,limit=1] @a[scores={char=60,spell_fath_2_1=1},limit=1]
execute if entity @a[scores={char=60,spell_fath_2_1=1},limit=1] as @e[tag=BlackHole,limit=1] at @s run tp @s ~ ~1 ~

execute at @a[scores={char=60}] run tag @e[distance=4..,tag=BlackHole] add BlackFuckingHole
execute as @e[tag=BlackFuckingHole] run tag @s remove BlackHole

execute at @e[tag=BlackFuckingHole] run particle minecraft:smoke ~ ~0.5 ~ 4 4 4 0.01 10 force
execute at @e[tag=BlackFuckingHole] run playsound minecraft:entity.ghast.ambient master @a[distance=..8] ~ ~ ~ 0.1 0.1 1
execute at @e[tag=BlackFuckingHole] run particle minecraft:dust{color:[0.0,0.0,0.0],scale:1.0f} ~ ~0.5 ~ 0.4 0.4 0.4 0.0001 100 force
execute at @e[tag=BlackFuckingHole] run particle minecraft:smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.01 20 force
execute at @e[tag=BlackFuckingHole] run particle minecraft:smoke ~ ~0.5 ~ 3 0.1 3 0.01 30 force
execute at @e[tag=BlackFuckingHole] run particle minecraft:dust{color:[0.0,0.0,0.0],scale:1.0f} ~ ~0.5 ~ 3 0.1 3 0.01 30 force
execute at @e[tag=BlackHole] run particle minecraft:smoke ~ ~0.5 ~ 0.3 0.3 0.3 0.01 10 force


execute as @e[tag=BlackHole] at @s unless block ~ ~-0.5 ~ #minecraft:dash run kill @s
execute as @e[tag=BlackHole] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=BlackHole] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=BlackHole] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=BlackHole] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=BlackHole] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=BlackHole] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=BlackFuckingHole] at @s unless block ~ ~-0.5 ~ #minecraft:dash run kill @s
execute as @e[tag=BlackFuckingHole] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=BlackFuckingHole] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=BlackFuckingHole] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=BlackFuckingHole] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=BlackFuckingHole] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=BlackFuckingHole] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=BlackHole] at @s run tp @s ^ ^ ^0.18
execute as @e[tag=BlackFuckingHole] at @s run tp @s ^ ^ ^0.15

execute at @a[scores={char=60,spell_fath_2_1=140..}] run kill @e[tag=BlackHole]
execute at @a[scores={char=60,spell_fath_2_1=140..}] run kill @e[tag=BlackFuckingHole]

execute at @e[tag=BlackFuckingHole] if entity @a[scores={char=60},team=yellow] run effect give @a[distance=..6,team=purple] minecraft:slowness 1 5
execute at @e[tag=BlackFuckingHole] if entity @a[scores={char=60},team=purple] run effect give @a[distance=..6,team=yellow] minecraft:slowness 1 5

execute at @e[tag=BlackFuckingHole] if entity @a[scores={char=60},team=yellow] run tp @a[distance=..2,team=purple] ~ ~ ~
execute at @e[tag=BlackFuckingHole] if entity @a[scores={char=60},team=purple] run tp @a[distance=..2,team=yellow] ~ ~ ~





# father of stars

scoreboard players add @a[scores={spell_fath_1=1..}] spell_fath_1_1 1
item replace entity @a[scores={char=60,spell_fath_1_1=300..}] hotbar.1 with minecraft:deepslate_diamond_ore[minecraft:custom_name={text:"Sky Collapse",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
scoreboard players set @a[scores={spell_fath_1_1=301..}] spell_fath_1 0
scoreboard players set @a[scores={spell_fath_1_1=301..}] spell_fath_1_1 0
scoreboard players set @a[scores={spell_fath_1_1=1}] spellCD1 300

scoreboard players add @a[scores={spell_fath_2=1..}] spell_fath_2_1 1
item replace entity @a[scores={char=60,spell_fath_2_1=400..}] hotbar.2 with minecraft:end_crystal[minecraft:custom_name={text:"Event Horizon",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
scoreboard players set @a[scores={spell_fath_2_1=401..}] spell_fath_2 0
scoreboard players set @a[scores={spell_fath_2_1=401..}] spell_fath_2_1 0
scoreboard players set @a[scores={spell_fath_2_1=1}] spellCD2 400

execute as @a[scores={char=60}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Slot:0b}]}] run clear @a[scores={char=60}] minecraft:bow
item replace entity @a[scores={char=60}] hotbar.0 with minecraft:bow[minecraft:custom_name={text:"Comet",color:"gray",bold:1b},minecraft:enchantments={"minecraft:power":1},minecraft:unbreakable={}] 1

execute as @a[scores={char=60,spell_fath_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:deepslate_diamond_ore",Slot:1b}]}] run clear @a[scores={char=60}] minecraft:deepslate_diamond_ore
item replace entity @a[scores={char=60,spell_fath_1=0}] hotbar.1 with minecraft:deepslate_diamond_ore[minecraft:custom_name={text:"Sky Collapse",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=60,spell_fath_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:end_crystal",Slot:2b}]}] run clear @a[scores={char=60}] minecraft:end_crystal
item replace entity @a[scores={char=60,spell_fath_2=0}] hotbar.2 with minecraft:end_crystal[minecraft:custom_name={text:"Event Horizon",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1


