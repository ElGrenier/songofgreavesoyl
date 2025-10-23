kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:prismarine_shard"}}]
kill @e[type=minecraft:item,tag=!mosquito_blood,nbt={Item:{id:"minecraft:redstone"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:beetroot"}}]

scoreboard players set @a[scores={universal_death=1..}] laceration 0
scoreboard players set @a[scores={universal_death=1..}] kneel 0

effect give @a[scores={char=64},nbt={SelectedItem:{id:"minecraft:prismarine_shard"}}] minecraft:weakness 1 100 true
effect give @a[scores={char=64},nbt={SelectedItem:{id:"minecraft:barrier"}}] minecraft:weakness 1 100 true

# laceration

execute as @a[scores={char=64,scarlet_knifes=1..7}] run title @s[scores={char=64}] actionbar [{text:"[ ",color:"dark_red",bold:1b,type:"text"},{text:"Knives: ",color:"red",bold:0b,type:"text"},{score:{name:"@s",objective:"scarlet_knifes"},color:"red",bold:0b,type:"score"},{text:"/",color:"dark_red",bold:1b,type:"text"},{text:"7",color:"red",bold:0b,type:"text"},{text:" ]",color:"dark_red",bold:1b,type:"text"}]
execute as @a[scores={char=64,scarlet_knifes=0}] run title @s[scores={char=64}] actionbar [{text:"[ ",color:"dark_red",bold:1b,type:"text"},{text:"Damn, I'm out of knives!",color:"red",bold:0b,type:"text",italic:1b},{text:" ]",color:"dark_red",bold:1b,type:"text"}]

execute at @a[scores={char=64,knifes_cd=58}] run playsound minecraft:item.armor.equip_iron master @a[scores={char=64,knifes_cd=58}] ~ ~ ~ 0.1 2 1
execute at @a[scores={char=64,knifes_cd=59}] run playsound minecraft:entity.item.pickup master @a[scores={char=64,knifes_cd=59}] ~ ~ ~ 0.1 2 1

scoreboard players add @a[scores={char=64,knifes_cd=..60,scarlet_knifes=..6}] knifes_cd 1
scoreboard players add @a[scores={char=64,knifes_cd=60,scarlet_knifes=..6}] scarlet_knifes 1
scoreboard players set @a[scores={char=64,knifes_cd=60..}] knifes_cd 0
scoreboard players set @a[scores={char=64,scarlet_knifes=7..}] knifes_cd 0


scoreboard players set @a[scores={char=64,spell_scar_3_1=1,CC_silence=1..}] spellCD0 20
scoreboard players set @a[scores={char=64,spell_scar_3_1=1,CC_silence=1..}] spell_scar_3 0
scoreboard players set @a[scores={char=64,spell_scar_3_1=1,CC_silence=1..}] spell_scar_3_1 0

execute at @a[scores={char=64,spell_scar_3_1=1,scarlet_knifes=1..,CC_silence=0}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 0.3 2 1
execute at @a[scores={char=64,spell_scar_3_1=1,scarlet_knifes=1..,CC_silence=0}] run playsound minecraft:entity.snowball.throw master @a[distance=..10] ~ ~ ~ 0.5 1.5 1
execute at @a[scores={char=64,spell_scar_3_1=1,scarlet_knifes=1..,CC_silence=0},y_rotation=45..135] run summon minecraft:armor_stand ~ ~ ~ {Rotation:[90.0f,0.0f],Pose:{Head:[91.0f,0.0f,0.0f]},Marker:1b,Invisible:1b,Tags:["laceration_knife"],NoGravity:1b,Small:1b,equipment:{head:{id:"minecraft:prismarine_shard",count:1}}}
execute at @a[scores={char=64,spell_scar_3_1=1,scarlet_knifes=1..,CC_silence=0},y_rotation=-135..-45] run summon minecraft:armor_stand ~ ~ ~ {Rotation:[-90.0f,0.0f],Pose:{Head:[91.0f,0.0f,0.0f]},Marker:1b,Invisible:1b,Tags:["laceration_knife"],NoGravity:1b,Small:1b,equipment:{head:{id:"minecraft:prismarine_shard",count:1}}}
execute at @a[scores={char=64,spell_scar_3_1=1,scarlet_knifes=1..,CC_silence=0},y_rotation=-45..45] run summon minecraft:armor_stand ~ ~ ~ {Rotation:[0.0f,0.0f],Pose:{Head:[91.0f,0.0f,0.0f]},Marker:1b,Invisible:1b,Tags:["laceration_knife"],NoGravity:1b,Small:1b,equipment:{head:{id:"minecraft:prismarine_shard",count:1}}}
execute at @a[scores={char=64,spell_scar_3_1=1,scarlet_knifes=1..,CC_silence=0},y_rotation=135..-135] run summon minecraft:armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],Pose:{Head:[91.0f,0.0f,0.0f]},Marker:1b,Invisible:1b,Tags:["laceration_knife"],NoGravity:1b,Small:1b,equipment:{head:{id:"minecraft:prismarine_shard",count:1}}}
scoreboard players remove @a[scores={char=64,spell_scar_3_1=1,scarlet_knifes=1..,CC_silence=0}] scarlet_knifes 1
tp @e[tag=laceration_knife,limit=1] @a[scores={char=64,spell_scar_3_1=1},limit=1]


execute at @a[scores={char=64,spell_scar_3_1=1..20}] as @e[tag=laceration_knife] at @s run tp @s ^ ^ ^0.9
execute at @a[scores={char=64,spell_scar_3_1=11..20}] as @e[tag=laceration_knife] at @s run tp @s ~ ~-0.2 ~

execute as @e[tag=laceration_knife] at @s positioned ~ ~1.5 ~ unless block ^ ^0.4 ^0.4 #minecraft:dash run kill @s
execute as @e[tag=laceration_knife] at @s positioned ~ ~1.5 ~ unless block ~ ~ ~ #minecraft:dash run kill @s

execute at @a[scores={char=64,spell_scar_3_1=20..}] run kill @e[tag=laceration_knife]

execute at @e[tag=laceration_knife] run particle minecraft:crit ~ ~1 ~ 0.1 0.1 0.1 0.01 1

execute if entity @a[scores={char=64},team=yellow] at @e[tag=laceration_knife] run damage @p[distance=..1.5,team=purple] 4 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute if entity @a[scores={char=64},team=yellow] at @e[tag=laceration_knife] if entity @a[distance=..1.5,team=purple] run playsound minecraft:entity.experience_orb.pickup master @a[scores={char=64}] ~ ~ ~ 1 0.1 1
execute if entity @a[scores={char=64},team=yellow] at @e[tag=laceration_knife] run scoreboard players add @p[distance=..1.5,team=purple] laceration_counter 1
execute if entity @a[scores={char=64},team=yellow] at @e[tag=laceration_knife] run scoreboard players set @p[distance=..1.5,team=purple] laceration_timer_initial 1
execute if entity @a[scores={char=64},team=yellow] at @e[tag=laceration_knife] run scoreboard players set @p[distance=..1.5,team=purple] laceration_timer 0
execute if entity @a[scores={char=64},team=yellow] at @e[tag=laceration_knife] if entity @a[distance=..1.5,team=purple] run kill @e[tag=laceration_knife]

execute if entity @a[scores={char=64},team=purple] at @e[tag=laceration_knife] run damage @p[distance=..1.5,team=yellow] 4 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute if entity @a[scores={char=64},team=purple] at @e[tag=laceration_knife] if entity @a[distance=..1.5,team=yellow] run playsound minecraft:entity.experience_orb.pickup master @a[scores={char=64}] ~ ~ ~ 1 0.1 1
execute if entity @a[scores={char=64},team=purple] at @e[tag=laceration_knife] run scoreboard players add @p[distance=..1.5,team=yellow] laceration_counter 1
execute if entity @a[scores={char=64},team=purple] at @e[tag=laceration_knife] run scoreboard players set @p[distance=..1.5,team=yellow] laceration_timer_initial 1
execute if entity @a[scores={char=64},team=purple] at @e[tag=laceration_knife] run scoreboard players set @p[distance=..1.5,team=yellow] laceration_timer 0
execute if entity @a[scores={char=64},team=purple] at @e[tag=laceration_knife] if entity @a[distance=..1.5,team=yellow] run kill @e[tag=laceration_knife]



scoreboard players add @a[scores={laceration_timer_initial=1..}] laceration_timer_initial 1
scoreboard players add @a[scores={laceration_timer_initial=120..}] laceration_timer 1

scoreboard players remove @a[scores={laceration_timer=30..,laceration_counter=1..}] laceration_counter 1
scoreboard players set @a[scores={laceration_timer=30..}] laceration_timer 1

scoreboard players set @a[scores={laceration_counter=4..}] laceration 60
scoreboard players set @a[scores={laceration_counter=4..}] laceration_immunity 60
execute at @a[scores={laceration_counter=4..}] run summon minecraft:item ~ ~ ~ {PickupDelay:32767,Invulnerable:1b,Tags:["mosquito_blood"],Item:{id:"minecraft:redstone",count:1}}
execute at @a[scores={laceration_counter=4..}] run particle minecraft:dust{color:[1.0,0.0,0.0],scale:1.0f} ~ ~1 ~ 1 0.5 1 0.01 100 normal

scoreboard players set @a[scores={laceration_immunity=1..}] laceration_counter 0
scoreboard players remove @a[scores={laceration_immunity=1..}] laceration_immunity 1

scoreboard players set @a[scores={universal_death=1..}] laceration_timer_initial 0
scoreboard players set @a[scores={universal_death=1..}] laceration_timer 0
scoreboard players set @a[scores={universal_death=1..}] laceration_counter 0
scoreboard players set @a[scores={universal_death=1..}] laceration 0

scoreboard players set @a[scores={laceration_counter=0}] laceration_timer_initial 0
scoreboard players set @a[scores={laceration_counter=0}] laceration_timer 0

execute as @a[scores={laceration=51}] run attribute @s minecraft:knockback_resistance base set 100
execute as @a[scores={laceration=51}] run damage @s 1 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[scores={laceration=51}] run attribute @s minecraft:knockback_resistance base set 0

execute as @a[scores={laceration=41}] run attribute @s minecraft:knockback_resistance base set 100
execute as @a[scores={laceration=41}] run damage @s 1 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[scores={laceration=41}] run attribute @s minecraft:knockback_resistance base set 0

execute as @a[scores={laceration=31}] run attribute @s minecraft:knockback_resistance base set 100
execute as @a[scores={laceration=31}] run damage @s 1 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[scores={laceration=31}] run attribute @s minecraft:knockback_resistance base set 0

execute as @a[scores={laceration=21}] run attribute @s minecraft:knockback_resistance base set 100
execute as @a[scores={laceration=21}] run damage @s 1 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[scores={laceration=21}] run attribute @s minecraft:knockback_resistance base set 0

execute as @a[scores={laceration=11}] run attribute @s minecraft:knockback_resistance base set 100
execute as @a[scores={laceration=11}] run damage @s 1 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[scores={laceration=11}] run attribute @s minecraft:knockback_resistance base set 0

execute as @a[scores={laceration=1}] run attribute @s minecraft:knockback_resistance base set 100
execute as @a[scores={laceration=1}] run damage @s 1 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[scores={laceration=1}] run attribute @s minecraft:knockback_resistance base set 0

execute at @a[scores={laceration=1..}] run particle minecraft:block{block_state:{Name:"minecraft:redstone_block"}} ~ ~.5 ~ 0.3 0.8 0.3 0.001 2 force
scoreboard players remove @a[scores={laceration=1..}] laceration 1

scoreboard players add @e[tag=mosquito_blood] laceration 1
kill @e[tag=mosquito_blood,scores={laceration=200..}]

execute at @e[tag=mosquito_blood] if entity @a[distance=..1.5,scores={char=64}] run particle minecraft:heart ~ ~0.5 ~ 0.8 0.9 0.8 0.1 5
execute at @e[tag=mosquito_blood] if entity @a[distance=..1.5,scores={char=64}] run playsound minecraft:entity.wandering_trader.drink_milk master @a[distance=..15] ~ ~ ~ 1 1.5 1
execute at @e[tag=mosquito_blood] if entity @a[distance=..1.5,scores={char=64}] run playsound minecraft:entity.bee.hurt master @a[distance=..15] ~ ~ ~ 0.3 0.8 1
execute at @e[tag=mosquito_blood] run effect give @a[distance=..1.5,scores={char=64}] minecraft:regeneration 2 3
#execute at @e[tag=mosquito_blood] run effect give @a[distance=..1.5,scores={char=64}] minecraft:speed 2 0
execute at @a[scores={char=64}] run kill @e[distance=..1.5,tag=mosquito_blood]


execute at @a[scores={laceration_counter=1}] positioned ~ ~2.2 ~ unless entity @e[distance=..1,tag=display_laceration_1] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["display_laceration_1","lacer_display"],CustomName:{text:"X",extra:[{text:" - - -",color:"gray",bold:1b}],color:"dark_red",bold:1b}}
execute at @a[scores={laceration_counter=1}] positioned ~ ~2.2 ~ run tp @e[distance=..1,tag=display_laceration_1] ~ ~ ~
execute as @e[tag=display_laceration_1] at @s positioned ~ ~-2.2 ~ unless entity @a[distance=..1,scores={laceration_counter=1}] run kill @s

execute at @a[scores={laceration_counter=2}] positioned ~ ~2.2 ~ unless entity @e[distance=..1,tag=display_laceration_2] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["display_laceration_2","lacer_display"],CustomName:{text:"X X",extra:[{text:" - -",color:"gray",bold:1b}],color:"dark_red",bold:1b}}
execute at @a[scores={laceration_counter=2}] positioned ~ ~2.2 ~ run tp @e[distance=..1,tag=display_laceration_2] ~ ~ ~
execute as @e[tag=display_laceration_2] at @s positioned ~ ~-2.2 ~ unless entity @a[distance=..1,scores={laceration_counter=2}] run kill @s

execute at @a[scores={laceration_counter=3}] positioned ~ ~2.2 ~ unless entity @e[distance=..1,tag=display_laceration_3] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["display_laceration_3","lacer_display"],CustomName:{text:"X X X",extra:[{text:" -",color:"gray",bold:1b}],color:"dark_red",bold:1b}}
execute at @a[scores={laceration_counter=3}] positioned ~ ~2.2 ~ run tp @e[distance=..1,tag=display_laceration_3] ~ ~ ~
execute as @e[tag=display_laceration_3] at @s positioned ~ ~-2.2 ~ unless entity @a[distance=..1,scores={laceration_counter=3}] run kill @s

execute at @a[scores={laceration_immunity=1..}] positioned ~ ~2.2 ~ unless entity @e[distance=..1,tag=display_laceration_4] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["display_laceration_4","lacer_display"],CustomName:{text:"BLEED FOR ME",extra:[{text:"",color:"dark_red",bold:1b}],color:"dark_red",bold:1b}}
execute at @a[scores={laceration_immunity=1..}] positioned ~ ~2.2 ~ run tp @e[distance=..1,tag=display_laceration_4] ~ ~ ~
execute as @e[tag=display_laceration_4] at @s positioned ~ ~-2.2 ~ unless entity @a[distance=..1,scores={laceration_immunity=1..}] run kill @s



execute if entity @a[scores={char=64},team=purple] at @e[tag=laceration_knife] run scoreboard players set @e[distance=..1,tag=necrominion,limit=1,team=yellow] MinionDamageKnife 1
execute if entity @a[scores={char=64},team=purple] at @e[tag=laceration_knife] run scoreboard players set @e[distance=..1,tag=turret,limit=1,team=yellow] MinionDamageKnife 1
execute if entity @a[scores={char=64},team=purple] at @e[tag=laceration_knife] run scoreboard players set @e[distance=..1,tag=swarmerboi,limit=1,team=yellow] MinionDamageKnife 1
execute if entity @a[scores={char=64},team=purple] at @e[tag=laceration_knife] run scoreboard players set @e[distance=..1,tag=MoldHost,limit=1,team=yellow] MinionDamageKnife 1
execute if entity @a[scores={char=64},team=purple] at @e[tag=laceration_knife] run scoreboard players set @e[distance=..1,tag=MoldStructure,limit=1,team=yellow] MinionDamageKnife 1

execute if entity @a[scores={char=64},team=yellow] at @e[tag=laceration_knife] run scoreboard players set @e[distance=..1,tag=necrominion,limit=1,team=purple] MinionDamageKnife 1
execute if entity @a[scores={char=64},team=yellow] at @e[tag=laceration_knife] run scoreboard players set @e[distance=..1,tag=turret,limit=1,team=purple] MinionDamageKnife 1
execute if entity @a[scores={char=64},team=yellow] at @e[tag=laceration_knife] run scoreboard players set @e[distance=..1,tag=swarmerboi,limit=1,team=purple] MinionDamageKnife 1
execute if entity @a[scores={char=64},team=yellow] at @e[tag=laceration_knife] run scoreboard players set @e[distance=..1,tag=MoldHost,limit=1,team=purple] MinionDamageKnife 1
execute if entity @a[scores={char=64},team=yellow] at @e[tag=laceration_knife] run scoreboard players set @e[distance=..1,tag=MoldStructure,limit=1,team=purple] MinionDamageKnife 1

scoreboard players add @e[scores={MinionDamageKnife=1..}] MinionDamageKnife 1

effect give @e[type=minecraft:wither_skeleton,scores={MinionDamageKnife=3}] minecraft:instant_health 1 1 true
effect give @e[type=minecraft:husk,scores={MinionDamageKnife=3}] minecraft:instant_health 1 1 true
effect give @e[type=minecraft:zombie,scores={MinionDamageKnife=3}] minecraft:instant_health 1 1 true
effect give @e[type=minecraft:skeleton,scores={MinionDamageKnife=3}] minecraft:instant_health 1 0 true
effect give @e[type=minecraft:spider,scores={MinionDamageKnife=3}] minecraft:instant_damage 1 0 true

scoreboard players set @e[scores={MinionDamageKnife=30..}] MinionDamageKnife 0

# mosquito kiss

scoreboard players set @a[scores={char=64,spell_scar_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=64,spell_scar_1_1=1,CC_silence=1..}] spell_scar_1_1 140

execute at @a[scores={char=64,spell_scar_1_1=2,CC_silence=0}] run playsound minecraft:entity.bee.hurt master @a[distance=..15] ~ ~ ~ 0.6 1.3 1
execute as @a[scores={char=64,spell_scar_1_1=2,CC_silence=0}] at @s run function chars:mosquito_kiss_raycast

#execute at @a[scores={char=64,spell_scar_1_1=2,CC_silence=0}] if entity @p[distance=..4,tag=mosquito_bite] as @e[scores={char=64}] at @s positioned ^ ^ ^1 run particle minecraft:crit ~ ~1 ~ 0.1 0.1 0.1 0.3 5
#execute at @a[scores={char=64,spell_scar_1_1=2,CC_silence=0}] if entity @p[distance=..4,tag=mosquito_bite] as @e[scores={char=64}] at @s positioned ^ ^ ^1.5 run particle minecraft:crit ~ ~1 ~ 0.1 0.1 0.1 0.3 5
#execute at @a[scores={char=64,spell_scar_1_1=2,CC_silence=0}] if entity @p[distance=..4,tag=mosquito_bite] as @e[scores={char=64}] at @s positioned ^ ^ ^2 run particle minecraft:crit ~ ~1 ~ 0.1 0.1 0.1 0.3 5
#execute at @a[scores={char=64,spell_scar_1_1=2,CC_silence=0}] if entity @p[distance=..4,tag=mosquito_bite] as @e[scores={char=64}] at @s positioned ^ ^ ^2.5 run particle minecraft:crit ~ ~1 ~ 0.1 0.1 0.1 0.3 5
#execute at @a[scores={char=64,spell_scar_1_1=2,CC_silence=0}] if entity @p[distance=..4,tag=mosquito_bite] as @e[scores={char=64}] at @s positioned ^ ^ ^3 run particle minecraft:crit ~ ~1 ~ 0.1 0.1 0.1 0.3 5
#execute at @a[scores={char=64,spell_scar_1_1=2,CC_silence=0}] if entity @p[distance=..4,tag=mosquito_bite] as @e[scores={char=64}] at @s positioned ^ ^ ^3.5 run particle minecraft:crit ~ ~1 ~ 0.1 0.1 0.1 0.3 5
#execute at @a[scores={char=64,spell_scar_1_1=2,CC_silence=0}] if entity @p[distance=..4,tag=mosquito_bite] as @e[scores={char=64}] at @s positioned ^ ^ ^4 run particle minecraft:crit ~ ~1 ~ 0.1 0.1 0.1 0.3 5
#execute at @a[scores={char=64,spell_scar_1_1=2,CC_silence=0}] run effect give @p[distance=..4,tag=mosquito_bite] minecraft:slowness 2 5

execute at @a[tag=mosquito_bite] run particle minecraft:dust{color:[1.0,0.0,0.0],scale:1.0f} ~ ~1 ~ 0.4 0.5 0.4 0.01 30 normal
execute at @a[tag=mosquito_bite] run particle minecraft:block{block_state:{Name:"minecraft:redstone_block"}} ~ ~1 ~ 0.4 0.2 0.4 0.01 40 normal

execute as @a[tag=mosquito_bite,scores={HP=..4}] run damage @s 1 generic by @p[scores={char=64}] from @p[scores={char=64}]

execute as @a[tag=mosquito_bite,scores={HP=5..9}] run damage @s 2 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=5..9}] run effect give @a[scores={char=64}] minecraft:regeneration 3 1

execute as @a[tag=mosquito_bite,scores={HP=10..14}] run damage @s 3 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=10..14}] run effect give @a[scores={char=64}] minecraft:regeneration 5 1

execute as @a[tag=mosquito_bite,scores={HP=15..19}] run damage @s 4 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=15..19}] run effect give @a[scores={char=64}] minecraft:regeneration 3 1
execute as @a[tag=mosquito_bite,scores={HP=15..19}] run effect give @a[scores={char=64}] minecraft:instant_health

execute as @a[tag=mosquito_bite,scores={HP=20..24}] run damage @s 5 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=20..24}] run effect give @a[scores={char=64}] minecraft:regeneration 5 1
execute as @a[tag=mosquito_bite,scores={HP=20..24}] run effect give @a[scores={char=64}] minecraft:instant_health

execute as @a[tag=mosquito_bite,scores={HP=25..29}] run damage @s 6 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=25..29}] run effect give @a[scores={char=64}] minecraft:regeneration 3 1
execute as @a[tag=mosquito_bite,scores={HP=25..29}] run effect give @a[scores={char=64}] minecraft:instant_health 1 1

execute as @a[tag=mosquito_bite,scores={HP=30..34}] run damage @s 7 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=30..34}] run effect give @a[scores={char=64}] minecraft:regeneration 5 1
execute as @a[tag=mosquito_bite,scores={HP=30..34}] run effect give @a[scores={char=64}] minecraft:instant_health 1 1

execute as @a[tag=mosquito_bite,scores={HP=35..39}] run damage @s 8 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=35..39}] run effect give @a[scores={char=64}] minecraft:regeneration 2 3
execute as @a[tag=mosquito_bite,scores={HP=35..39}] run effect give @a[scores={char=64}] minecraft:instant_health 1 1

execute as @a[tag=mosquito_bite,scores={HP=40..44}] run damage @s 9 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=40..44}] run effect give @a[scores={char=64}] minecraft:regeneration 2 3
execute as @a[tag=mosquito_bite,scores={HP=40..44}] run effect give @a[scores={char=64}] minecraft:instant_health 1 1

execute as @a[tag=mosquito_bite,scores={HP=45..49}] run damage @s 10 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=45..49}] run effect give @a[scores={char=64}] minecraft:regeneration 2 3
execute as @a[tag=mosquito_bite,scores={HP=45..49}] run effect give @a[scores={char=64}] minecraft:instant_health 1 1

execute as @a[tag=mosquito_bite,scores={HP=50..54}] run damage @s 11 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=50..54}] run effect give @a[scores={char=64}] minecraft:regeneration 2 3
execute as @a[tag=mosquito_bite,scores={HP=50..54}] run effect give @a[scores={char=64}] minecraft:instant_health 1 1

execute as @a[tag=mosquito_bite,scores={HP=55..60}] run damage @s 12 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=55..60}] run effect give @a[scores={char=64}] minecraft:regeneration 2 3
execute as @a[tag=mosquito_bite,scores={HP=55..60}] run effect give @a[scores={char=64}] minecraft:instant_health 1 1

tag @a remove mosquito_bite


# kneel

scoreboard players set @a[scores={char=64,spell_scar_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=64,spell_scar_2_1=1,CC_silence=1..}] spell_scar_2_1 280

execute at @a[scores={char=64,spell_scar_2_1=1,CC_silence=0}] run playsound minecraft:entity.witch.hurt master @a[distance=..15] ~ ~ ~ 0.5 0.8 1
execute at @a[scores={char=64,spell_scar_2_1=2,CC_silence=0}] run playsound minecraft:entity.bee.hurt master @a[distance=..15] ~ ~ ~ 0.3 2 1
execute at @a[scores={char=64,spell_scar_2_1=3,CC_silence=0}] run playsound minecraft:item.honey_bottle.drink master @a[distance=..15] ~ ~ ~ 1 0.5 1
execute as @a[scores={char=64,spell_scar_2_1=2,CC_silence=0}] at @s run function chars:kneel_raycast

execute at @a[tag=mosquito_kneel] run playsound minecraft:entity.player.hurt_drown master @a[distance=..10] ~ ~ ~ 1 0.2 1
effect give @a[tag=mosquito_kneel] slowness 1 3 true
scoreboard players set @a[tag=mosquito_kneel] kneel 20

tag @a remove mosquito_kneel

execute at @a[scores={kneel=1..}] run particle minecraft:block{block_state:{Name:"minecraft:redstone_block"}} ~ ~.5 ~ 0.3 0.8 0.3 0.001 10 force
execute as @a[scores={kneel=1..},x_rotation=-90..59] at @s run rotate @s ~ 60
scoreboard players remove @a[scores={kneel=1..}] kneel 1


# scarlet lady

scoreboard players add @a[scores={spell_scar_3=1..}] spell_scar_3_1 1
item replace entity @a[scores={char=64,spell_scar_3_1=20..}] hotbar.0 with minecraft:prismarine_shard[minecraft:custom_name={text:"Throwing Knife",color:"gray",bold:1b}] 1
scoreboard players set @a[scores={spell_scar_3_1=21..}] spell_scar_3 0
scoreboard players set @a[scores={spell_scar_3_1=21..}] spell_scar_3_1 0
scoreboard players set @a[scores={spell_scar_3_1=1}] spellCD0 20

scoreboard players add @a[scores={spell_scar_1=1..}] spell_scar_1_1 1
item replace entity @a[scores={char=64,spell_scar_1_1=160..}] hotbar.1 with minecraft:redstone[minecraft:custom_name={text:"Mosquito's Kiss",color:"gray",bold:1b}] 1
scoreboard players set @a[scores={spell_scar_1_1=161..}] spell_scar_1 0
scoreboard players set @a[scores={spell_scar_1_1=161..}] spell_scar_1_1 0
scoreboard players set @a[scores={spell_scar_1_1=1}] spellCD1 160

scoreboard players add @a[scores={spell_scar_2=1..}] spell_scar_2_1 1
item replace entity @a[scores={char=64,spell_scar_2_1=300..}] hotbar.2 with minecraft:beetroot[minecraft:custom_name={text:"Kneel!",color:"gray",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
scoreboard players set @a[scores={spell_scar_2_1=301..}] spell_scar_2 0
scoreboard players set @a[scores={spell_scar_2_1=301..}] spell_scar_2_1 0
scoreboard players set @a[scores={spell_scar_2_1=1}] spellCD2 300

execute as @a[scores={char=64,spell_scar_3=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:prismarine_shard",Slot:0b}]}] run clear @a[scores={char=64}] minecraft:prismarine_shard
item replace entity @a[scores={char=64,spell_scar_3=0}] hotbar.0 with minecraft:prismarine_shard[minecraft:custom_name={text:"Throwing Knife",color:"gray",bold:1b}] 1

execute as @a[scores={char=64,spell_scar_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:redstone",Slot:1b}]}] run clear @a[scores={char=64}] minecraft:redstone
item replace entity @a[scores={char=64,spell_scar_1=0}] hotbar.1 with minecraft:redstone[minecraft:custom_name={text:"Mosquito's Kiss",color:"gray",bold:1b}] 1

execute as @a[scores={char=64,spell_scar_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:beetroot",Slot:2b}]}] run clear @a[scores={char=64}] minecraft:beetroot
item replace entity @a[scores={char=64,spell_scar_2=0}] hotbar.2 with minecraft:beetroot[minecraft:custom_name={text:"Kneel!",color:"gray",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
