kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_hoe"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:glow_lichen"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:gray_candle"}}]

# lungs collapse

scoreboard players add @a[scores={asphyxiation=1..}] asphyxiation_decay_initial 1

scoreboard players add @a[scores={asphyxiation_decay_initial=140..}] asphyxiation_decay 1
scoreboard players remove @a[scores={asphyxiation_decay_initial=140..,asphyxiation_timer=1..}] asphyxiation_timer 1

scoreboard players remove @a[scores={asphyxiation_decay=30..}] asphyxiation 1
scoreboard players set @a[scores={asphyxiation_decay=30..}] asphyxiation_decay 1

scoreboard players set @a[scores={asphyxiation=0}] asphyxiation_decay_initial 1
scoreboard players set @a[scores={asphyxiation=0}] asphyxiation_decay 1


scoreboard players add @a[scores={asphyxiation_timer=20..}] asphyxiation 1
scoreboard players set @a[scores={asphyxiation_timer=20..}] asphyxiation_timer 0


scoreboard players set @a[scores={universal_death=1..}] asphyxiation_decay_initial 0
scoreboard players set @a[scores={universal_death=1..}] asphyxiation_decay 0
scoreboard players set @a[scores={universal_death=1..}] asphyxiation_timer 0
scoreboard players set @a[scores={universal_death=1..}] asphyxiation 0


execute as @a[scores={asphyxiation=5..}] run damage @s 5 generic by @p[scores={char=56}] from @p[scores={char=56}]
execute at @a[scores={asphyxiation=5..}] run particle campfire_cosy_smoke ~ ~1.5 ~ 0.3 0.3 0.3 0.01 5
execute at @a[scores={asphyxiation=5..}] run particle crit ~ ~1.8 ~ 0.5 0.3 0.5 0.1 10
execute at @a[scores={asphyxiation=5..}] run playsound entity.blaze.ambient master @a[distance=..10] ~ ~ ~ 1 1.7 1
execute at @a[scores={asphyxiation=5..}] run playsound entity.player.hurt_on_fire master @a[distance=..10] ~ ~ ~ 1 1.5 1

scoreboard players set @a[scores={asphyxiation=5..}] CC_stun 30

scoreboard players set @a[scores={asphyxiation=5..}] asphyxiation_immunity 30

scoreboard players set @a[scores={asphyxiation_immunity=1..}] asphyxiation 0
scoreboard players remove @a[scores={asphyxiation_immunity=1..}] asphyxiation_immunity 1





execute at @a[scores={asphyxiation=1}] positioned ~ ~2.2 ~ unless entity @e[distance=..1,tag=display_asphyxiation_1] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["display_asphyxiation_1","asph_display","entities_smokebride"],CustomName:{text:"X",extra:[{text:" - - - -",color:"gray",bold:1b}],color:"dark_gray",bold:1b}}
execute at @a[scores={asphyxiation=1}] positioned ~ ~2.2 ~ run tp @e[distance=..1,tag=display_asphyxiation_1] ~ ~ ~
execute as @e[tag=display_asphyxiation_1] at @s positioned ~ ~-2.2 ~ unless entity @a[distance=..1,scores={asphyxiation=1}] run kill @s

execute at @a[scores={asphyxiation=2}] positioned ~ ~2.2 ~ unless entity @e[distance=..1,tag=display_asphyxiation_2] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["display_asphyxiation_2","asph_display","entities_smokebride"],CustomName:{text:"X X",extra:[{text:" - - -",color:"gray",bold:1b}],color:"dark_gray",bold:1b}}
execute at @a[scores={asphyxiation=2}] positioned ~ ~2.2 ~ run tp @e[distance=..1,tag=display_asphyxiation_2] ~ ~ ~
execute as @e[tag=display_asphyxiation_2] at @s positioned ~ ~-2.2 ~ unless entity @a[distance=..1,scores={asphyxiation=2}] run kill @s

execute at @a[scores={asphyxiation=3}] positioned ~ ~2.2 ~ unless entity @e[distance=..1,tag=display_asphyxiation_3] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["display_asphyxiation_3","asph_display","entities_smokebride"],CustomName:{text:"X X X",extra:[{text:" - -",color:"gray",bold:1b}],color:"dark_gray",bold:1b}}
execute at @a[scores={asphyxiation=3}] positioned ~ ~2.2 ~ run tp @e[distance=..1,tag=display_asphyxiation_3] ~ ~ ~
execute as @e[tag=display_asphyxiation_3] at @s positioned ~ ~-2.2 ~ unless entity @a[distance=..1,scores={asphyxiation=3}] run kill @s

execute at @a[scores={asphyxiation=4}] positioned ~ ~2.2 ~ unless entity @e[distance=..1,tag=display_asphyxiation_4] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["display_asphyxiation_4","asph_display","entities_smokebride"],CustomName:{text:"X X X X",extra:[{text:" -",color:"gray",bold:1b}],color:"dark_gray",bold:1b}}
execute at @a[scores={asphyxiation=4}] positioned ~ ~2.2 ~ run tp @e[distance=..1,tag=display_asphyxiation_4] ~ ~ ~
execute as @e[tag=display_asphyxiation_4] at @s positioned ~ ~-2.2 ~ unless entity @a[distance=..1,scores={asphyxiation=4}] run kill @s

execute at @a[scores={asphyxiation_immunity=1..}] positioned ~ ~2.2 ~ unless entity @e[distance=..1,tag=display_asphyxiation_5] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["display_asphyxiation_5","asph_display","entities_smokebride"],CustomName:{text:"BREATHE IN",extra:[{text:"",color:"gray",bold:1b}],color:"dark_gray",bold:1b}}
execute at @a[scores={asphyxiation_immunity=1..}] positioned ~ ~2.2 ~ run tp @e[distance=..1,tag=display_asphyxiation_5] ~ ~ ~
execute as @e[tag=display_asphyxiation_5] at @s positioned ~ ~-2.2 ~ unless entity @a[distance=..1,scores={asphyxiation_immunity=1..}] run kill @s



# smell of the embers

scoreboard players set @a[scores={char=56,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=56,s1_timer=1,CC_silence=1..}] s1_timer 140


execute at @a[scores={char=56,s1_timer=1,CC_silence=0}] run playsound block.fire.extinguish master @a[distance=..10] ~ ~ ~ 0.3 1.2 1
execute at @a[scores={char=56,s1_timer=1,CC_silence=0}] run playsound entity.snowball.throw master @a[distance=..10] ~ ~ ~ 0.5 0.5 1
execute at @a[scores={char=56,s1_timer=1,CC_silence=0}] run summon item_display ~ ~ ~ {Tags:["smell_projectile","entities_smokebride","projectile"],item: {count: 1, id: "minecraft:gray_candle"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [.5625f, .5625f, .5625f], translation: [0.0f, 0f, 0.0f]},teleport_duration:1}
scoreboard players operation @e[tag=smell_projectile,tag=projectile] Team = @p[scores={char=56}] Team
tp @e[tag=smell_projectile,limit=1] @a[scores={char=56,s1_timer=1},limit=1]
execute at @a[scores={char=56,s1_timer=1,CC_silence=0},limit=1] as @e[tag=smell_projectile,limit=1] at @s run tp @s ~ ~1 ~ 


execute at @a[scores={char=56,s1_timer=1..10}] as @e[tag=smell_projectile] at @s run tp @s ^ ^ ^0.6
execute at @a[scores={char=56,s1_timer=11..20}] as @e[tag=smell_projectile] at @s run tp @s ^ ^ ^0.4
execute at @a[scores={char=56,s1_timer=11..20}] as @e[tag=smell_projectile] at @s run tp @s ~ ~-0.3 ~
execute at @a[scores={char=56,s1_timer=21..}] as @e[tag=smell_projectile] at @s run tp @s ^ ^ ^0.4
execute at @a[scores={char=56,s1_timer=21..}] as @e[tag=smell_projectile] at @s run tp @s ~ ~-0.5 ~
execute at @a[scores={char=56,s1_timer=30..}] as @e[tag=smell_projectile] at @s run tp @s ~ ~-0.6 ~

execute at @e[tag=smell_projectile] run particle falling_dust{block_state:{Name:"minecraft:gray_wool"}} ~ ~ ~ 0.1 0.1 0.1 0.01 1 normal
execute at @e[tag=smell_projectile] run particle campfire_cosy_smoke ~ ~ ~ 0.1 0.1 0.1 0.05 1

execute as @e[tag=ember] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

execute as @e[tag=ember] at @s run tp @s ~ ~ ~ ~8 ~

execute at @e[tag=ember] run particle small_flame ~ ~0.2 ~ 0.1 0.1 0.1 0 1 
execute as @e[tag=ember] at @s run particle dust{color:[0.33,0.33,0.33],scale:1} ^ ^ ^4 0.1 0.1 0.1 0 10
execute as @e[tag=ember] at @s run particle dust{color:[0.33,0.33,0.33],scale:1} ^ ^ ^-4 0.1 0.1 0.1 0 10
execute as @e[tag=ember] at @s run particle dust{color:[0.33,0.33,0.33],scale:1} ^4 ^ ^ 0.1 0.1 0.1 0 10
execute as @e[tag=ember] at @s run particle dust{color:[0.33,0.33,0.33],scale:1} ^-4 ^ ^ 0.1 0.1 0.1 0 10
execute as @e[tag=ember] at @s run particle dust{color:[0.33,0.33,0.33],scale:1} ^3 ^ ^3 0.1 0.1 0.1 0 10
execute as @e[tag=ember] at @s run particle dust{color:[0.33,0.33,0.33],scale:1} ^-3 ^ ^-3 0.1 0.1 0.1 0 10
execute as @e[tag=ember] at @s run particle dust{color:[0.33,0.33,0.33],scale:1} ^3 ^ ^-3 0.1 0.1 0.1 0 10
execute as @e[tag=ember] at @s run particle dust{color:[0.33,0.33,0.33],scale:1} ^-3 ^ ^3 0.1 0.1 0.1 0 10

execute as @a[scores={char=56}] as @e[tag=smell_projectile] at @s positioned ~-.5 ~-.5 ~-.5 as @e[tag=valid_spell_target,dx=0,dy=0,dz=0] unless score @s Team = @p[scores={char=56}] Team at @s run summon item_display ~ ~1 ~ {Tags:["ember","entities_smokebride"],item: {count: 1, id: "minecraft:gray_candle"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [.5625f, .5625f, .5625f], translation: [0.0f, 1.5f, 0.0f]},teleport_duration:1}
execute as @a[scores={char=56}] as @e[tag=smell_projectile] at @s unless block ^ ^.0625 ^.0625 #minecraft:dash run summon item_display ~ ~1 ~ {Tags:["ember","entities_smokebride"],item: {count: 1, id: "minecraft:gray_candle"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [.5625f, .5625f, .5625f], translation: [0.0f, 0f, 0.0f]},teleport_duration:1}
execute as @e[tag=smell_projectile] at @s unless block ^ ^.0625 ^.0625 #minecraft:dash run kill @s
execute if entity @e[tag=ember] run kill @e[tag=smell_projectile]

execute at @e[tag=ember] run particle campfire_cosy_smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.1 1
scoreboard players add @e[tag=ember] s0_timer 1

execute at @e[tag=ember,scores={s0_timer=2}] run playsound block.lava.extinguish master @a[distance=..10] ~ ~ ~ 0.5 0.5 1
execute at @e[tag=ember,scores={s0_timer=2}] run particle dust{color:[0.67,0.67,0.67],scale:1} ~ ~1 ~ 2 1 2 0 500
execute at @e[tag=ember,scores={s0_timer=2}] positioned ~ ~1 ~ as @e[tag=valid_spell_target,distance=..4] unless score @s Team = @p[scores={char=56}] Team run tag @s add smoked_by_fekhi

execute at @e[tag=ember,scores={s0_timer=17}] run playsound block.lava.extinguish master @a[distance=..10] ~ ~ ~ 0.5 0.5 1
execute at @e[tag=ember,scores={s0_timer=17}] run particle dust{color:[0.67,0.67,0.67],scale:1} ~ ~1 ~ 2 1 2 0 500
execute at @e[tag=ember,scores={s0_timer=17}] positioned ~ ~1 ~ as @e[tag=valid_spell_target,distance=..4] unless score @s Team = @p[scores={char=56}] Team run tag @s add smoked_by_fekhi

execute at @e[tag=ember,scores={s0_timer=32}] run playsound block.lava.extinguish master @a[distance=..10] ~ ~ ~ 0.5 0.5 1
execute at @e[tag=ember,scores={s0_timer=32}] run particle dust{color:[0.67,0.67,0.67],scale:1} ~ ~1 ~ 2 1 2 0 500
execute at @e[tag=ember,scores={s0_timer=32}] positioned ~ ~1 ~ as @e[tag=valid_spell_target,distance=..4] unless score @s Team = @p[scores={char=56}] Team run tag @s add smoked_by_fekhi

execute as @e[tag=smoked_by_fekhi] run attribute @s knockback_resistance base set 100
execute as @e[tag=smoked_by_fekhi] run damage @s 3 generic by @p[scores={char=56}] from @p[scores={char=56}]
execute as @e[tag=smoked_by_fekhi] run attribute @s knockback_resistance base set 0
execute as @e[tag=smoked_by_fekhi] run scoreboard players add @s asphyxiation 1
execute as @e[tag=smoked_by_fekhi] run scoreboard players add @s asphyxiation_decay_initial 0
execute as @e[tag=smoked_by_fekhi] run scoreboard players add @s asphyxiation_decay 0
tag @e remove smoked_by_fekhi

kill @e[tag=ember,scores={s0_timer=50..}]



# fume veil

scoreboard players set @a[scores={char=56,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=56,s2_timer=1,CC_silence=1..}] s2_timer 320


#execute at @a[scores={char=56,s2_timer=1,CC_silence=0}] run playsound entity.blaze.ambient master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=56,s2_timer=1,CC_silence=0}] run playsound entity.breeze.inhale master @a[distance=..15] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=56,s2_timer=1,CC_silence=0}] run playsound block.lava.extinguish master @a[distance=..15] ~ ~ ~ 0.4 0.3 1
#execute at @a[scores={char=56,s2_timer=1..100,CC_silence=0}] run particle campfire_cosy_smoke ~ ~1 ~ 0.5 0.8 0.5 0.05 1
execute at @a[scores={char=56,s2_timer=1..100,CC_silence=0}] run particle campfire_cosy_smoke ~ ~1 ~ 3.5 0.5 3.5 0.08 1

effect give @a[scores={char=56,s2_timer=1,CC_silence=0}] resistance 5 1


execute at @a[scores={char=56,s2_timer=101,CC_silence=0}] run particle campfire_cosy_smoke ~ ~1 ~ 5 2 5 0.05 200
execute at @a[scores={char=56,s2_timer=101,CC_silence=0}] run playsound entity.blaze.ambient master @a[distance=..15] ~ ~ ~ 1 1.5 1
execute at @a[scores={char=56,s2_timer=101,CC_silence=0}] run playsound block.lava.extinguish master @a[distance=..15] ~ ~ ~ 1 1.1 1
execute at @a[scores={char=56,s2_timer=101,CC_silence=0}] run playsound entity.breeze.shoot master @a[distance=..15] ~ ~ ~ 1 0.5 1

execute at @a[scores={char=56,s2_timer=1..100,CC_silence=0}] as @e[distance=..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=56}] Team run effect give @s slowness 1 1
execute at @e[scores={char=56,s2_timer=1..100}] as @a[distance=..4] unless score @s Team = @p[scores={char=56}] Team run scoreboard players set @s CC_silence 2
execute at @e[scores={char=56,s2_timer=1..100}] as @a[distance=..4] unless score @s Team = @p[scores={char=56}] Team run scoreboard players add @s asphyxiation_timer 1
execute at @e[scores={char=56,s2_timer=1..100}] as @a[distance=..4] unless score @s Team = @p[scores={char=56}] Team run scoreboard players add @s asphyxiation_decay_initial 0
execute at @e[scores={char=56,s2_timer=1..100}] as @a[distance=..4] unless score @s Team = @p[scores={char=56}] Team run scoreboard players add @s asphyxiation_decay 0

execute at @a[scores={char=56,s2_timer=1..100}] unless entity @e[tag=fume_veil_thing_spinny] run summon marker ~ ~ ~ {Tags:["fume_veil_thing_spinny","fume_veil_things","entities_smokebride"]}
execute at @a[scores={char=56,s2_timer=1..100}] run tp @e[tag=fume_veil_thing_spinny] ~ ~0.3 ~


execute as @e[tag=fume_veil_thing_spinny] at @s run rotate @s ~13 ~
execute as @e[tag=fume_veil_thing_spinny] at @s run particle dust{color:[0.67,0.67,0.67],scale:1} ^ ^ ^4 0.1 0.1 0.1 0 10 force
execute as @e[tag=fume_veil_thing_spinny] at @s run particle dust{color:[0.67,0.67,0.67],scale:1} ^ ^ ^-4 0.1 0.1 0.1 0 10 force
execute as @e[tag=fume_veil_thing_spinny] at @s run particle dust{color:[0.67,0.67,0.67],scale:1} ^4 ^ ^ 0.1 0.1 0.1 0 10 force
execute as @e[tag=fume_veil_thing_spinny] at @s run particle dust{color:[0.67,0.67,0.67],scale:1} ^-4 ^ ^ 0.1 0.1 0.1 0 10 force
execute as @e[tag=fume_veil_thing_spinny] at @s run particle dust{color:[0.67,0.67,0.67],scale:1} ^3 ^ ^3 0.1 0.1 0.1 0 10 force
execute as @e[tag=fume_veil_thing_spinny] at @s run particle dust{color:[0.67,0.67,0.67],scale:1} ^-3 ^ ^-3 0.1 0.1 0.1 0 10 force
execute as @e[tag=fume_veil_thing_spinny] at @s run particle dust{color:[0.67,0.67,0.67],scale:1} ^3 ^ ^-3 0.1 0.1 0.1 0 10 force
execute as @e[tag=fume_veil_thing_spinny] at @s run particle dust{color:[0.67,0.67,0.67],scale:1} ^-3 ^ ^3 0.1 0.1 0.1 0 10 force

execute at @e[tag=fume_veil_thing_spinny] run particle dust{color:[0.67,0.67,0.67],scale:1} ^ ^0.5 ^1 0.1 0 0.1 0.1 1 force
execute at @e[tag=fume_veil_thing_spinny] run particle dust{color:[0.33,0.33,0.33],scale:1} ^ ^0.5 ^-1 0.1 0 0.1 0.1 1 force
execute at @e[tag=fume_veil_thing_spinny] run particle dust{color:[0.67,0.67,0.67],scale:1} ^1 ^0.5 ^ 0.1 0 0.1 0.1 1 force
execute at @e[tag=fume_veil_thing_spinny] run particle dust{color:[0.33,0.33,0.33],scale:1} ^-1 ^0.5 ^ 0.1 0 0.1 0.1 1 force
execute at @e[tag=fume_veil_thing_spinny] run particle dust{color:[0.67,0.67,0.67],scale:1} ^ ^1 ^1 0.1 0 0.1 0.1 1 force
execute at @e[tag=fume_veil_thing_spinny] run particle dust{color:[0.33,0.33,0.33],scale:1} ^ ^1 ^-1 0.1 0 0.1 0.1 1 force
execute at @e[tag=fume_veil_thing_spinny] run particle dust{color:[0.67,0.67,0.67],scale:1} ^1 ^1 ^ 0.1 0 0.1 0.1 1 force
execute at @e[tag=fume_veil_thing_spinny] run particle dust{color:[0.33,0.33,0.33],scale:1} ^-1 ^1 ^ 0.1 0 0.1 0.1 1 force
execute at @e[tag=fume_veil_thing_spinny] run particle dust{color:[0.67,0.67,0.67],scale:1} ^ ^1.5 ^1 0.1 0 0.1 0.1 1 force
execute at @e[tag=fume_veil_thing_spinny] run particle dust{color:[0.33,0.33,0.33],scale:1} ^ ^1.5 ^-1 0.1 0 0.1 0.1 1 force
execute at @e[tag=fume_veil_thing_spinny] run particle dust{color:[0.67,0.67,0.67],scale:1} ^1 ^1.5 ^ 0.1 0 0.1 0.1 1 force
execute at @e[tag=fume_veil_thing_spinny] run particle dust{color:[0.33,0.33,0.33],scale:1} ^-1 ^1.5 ^ 0.1 0 0.1 0.1 1 force

execute at @a[scores={char=56,s2_timer=1..100}] unless entity @e[tag=fume_veil_visual_core] run summon marker ~ ~ ~ {Tags:["fume_veil_visual_core","fume_veil_things","entities_smokebride"]}
execute as @a[scores={char=56,s2_timer=1..100}] run tp @e[tag=fume_veil_visual_core] @s
execute as @e[tag=fume_veil_visual_core] store result entity @s Rotation[1] float 1 run clear

execute at @e[tag=fume_veil_visual_core] unless entity @e[tag=veil_fragment_1] run summon block_display ~ ~ ~ {Tags:["veil_fragment_1","fume_veil_things","veil_visuals","entities_smokebride"],teleport_duration:1,transformation:{left_rotation:[0.1305262f, 0.0f, 0.0f, 0.99144495f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.4f,-0.05f],scale:[0.5,0.8f,0.1f]},block_state:{Name:"minecraft:light_gray_stained_glass"}}
execute at @e[tag=fume_veil_visual_core] unless entity @e[tag=veil_fragment_2] run summon block_display ~ ~ ~ {Tags:["veil_fragment_2","fume_veil_things","veil_visuals","entities_smokebride"],teleport_duration:1,transformation:{left_rotation:[0.25881907f, 0.0f, 0.0f, 0.96592593f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.05f],scale:[0.6f,0.6f,0.1f]},block_state:{Name:"minecraft:light_gray_stained_glass"}}
execute at @e[tag=fume_veil_visual_core] unless entity @e[tag=veil_fragment_3] run summon block_display ~ ~ ~ {Tags:["veil_fragment_3","fume_veil_things","veil_visuals","entities_smokebride"],teleport_duration:1,transformation:{left_rotation:[0.4305111f, 0.0f, 0.0f, 0.90258527f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.3f,-0.05f],scale:[0.7f,0.6f,0.1f]},block_state:{Name:"minecraft:gray_stained_glass"}}
execute at @e[tag=fume_veil_visual_core] unless entity @e[tag=veil_fragment_4] run summon block_display ~ ~ ~ {Tags:["veil_fragment_4","fume_veil_things","veil_visuals","entities_smokebride"],teleport_duration:1,transformation:{left_rotation:[0.57357645f, 0.0f, 0.0f, 0.81915206f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.3f,-0.05f],scale:[0.8f,0.6f,0.1f]},block_state:{Name:"minecraft:black_stained_glass"}}

execute as @e[tag=fume_veil_visual_core] at @s run tp @e[tag=veil_fragment_1] ^ ^1.5 ^-0.4
execute as @e[tag=fume_veil_visual_core] at @s run tp @e[tag=veil_fragment_2] ^ ^0.95 ^-0.67
execute as @e[tag=fume_veil_visual_core] at @s run tp @e[tag=veil_fragment_3] ^ ^0.6 ^-1.1
execute as @e[tag=fume_veil_visual_core] at @s run tp @e[tag=veil_fragment_4] ^ ^0.45 ^-1.6

execute as @e[tag=veil_visuals] at @s run tp @s ~ ~ ~ facing entity @p[scores={char=56}]
execute as @e[tag=veil_visuals] store result entity @s Rotation[1] float 1 run clear

execute unless entity @a[scores={char=56,s2_timer=1..100}] run kill @e[tag=fume_veil_things]


# smoke bride

scoreboard players set @a[scores={char=56}] MaxHP 20

scoreboard players set @a[scores={s1_timer=1,char=56}] spellCD1 140
scoreboard players add @a[scores={s1_timer=1..,char=56}] s1_timer 1
scoreboard players set @a[scores={s1_timer=141..,char=56}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=56}] spellCD2 340
scoreboard players add @a[scores={s2_timer=1..,char=56}] s2_timer 1
scoreboard players set @a[scores={s2_timer=341..,char=56}] s2_timer 0

execute as @a[scores={char=56}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_hoe",Slot:0b}]}] run clear @a[scores={char=56}] stone_hoe
item replace entity @a[scores={char=56}] hotbar.0 with stone_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Umbrella"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=56,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=56}] carrot_on_a_stick
item replace entity @a[scores={char=56,s1_timer=0}] hotbar.1 with carrot_on_a_stick[minecraft:custom_name={text:"Smell of the Embers",color:"dark_aqua",bold:1b},item_model="gray_candle",custom_data={s1:1}] 1

execute as @a[scores={char=56,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=56}] warped_fungus_on_a_stick
item replace entity @a[scores={char=56,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[minecraft:custom_name={text:"Fume Veil",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:protection":1},item_model="pale_moss_block",custom_data={s2:1}] 1
