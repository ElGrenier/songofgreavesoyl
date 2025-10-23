kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_hoe"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:vine"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:fern"}}]


# twisted garden

execute at @a[scores={char=63},team=purple] run scoreboard players set @a[distance=..15,scores={CC_stun=1..,twisted_garden=0},team=yellow] twisted_garden 60
execute at @a[scores={char=63},team=purple] run scoreboard players set @a[distance=..15,scores={CC_root=1..,twisted_garden=0},team=yellow] twisted_garden 60
execute at @a[scores={char=63},team=purple] run scoreboard players set @a[distance=..15,scores={CC_taunt=1..,twisted_garden=0},team=yellow] twisted_garden 60
execute at @a[scores={char=63},team=purple] run scoreboard players set @a[distance=..15,scores={CC_knockup=1..,twisted_garden=0},team=yellow] twisted_garden 60
execute at @a[scores={char=63},team=purple] run scoreboard players set @a[distance=..15,scores={CC_grounded=1..,twisted_garden=0},team=yellow] twisted_garden 60

execute at @a[scores={char=63},team=yellow] run scoreboard players set @a[distance=..15,scores={CC_stun=1..,twisted_garden=0},team=purple] twisted_garden 60
execute at @a[scores={char=63},team=yellow] run scoreboard players set @a[distance=..15,scores={CC_root=1..,twisted_garden=0},team=purple] twisted_garden 60
execute at @a[scores={char=63},team=yellow] run scoreboard players set @a[distance=..15,scores={CC_taunt=1..,twisted_garden=0},team=purple] twisted_garden 60
execute at @a[scores={char=63},team=yellow] run scoreboard players set @a[distance=..15,scores={CC_knockup=1..,twisted_garden=0},team=purple] twisted_garden 60
execute at @a[scores={char=63},team=yellow] run scoreboard players set @a[distance=..15,scores={CC_grounded=1..,twisted_garden=0},team=purple] twisted_garden 60



execute as @a[scores={twisted_garden=1..,universal_death=1..}] at @s run function chars:spawn_blightbloom



scoreboard players remove @a[scores={twisted_garden=1..}] twisted_garden 1
scoreboard players set @a[scores={twisted_garden=1..,universal_death=1..}] twisted_garden 0


execute at @a[scores={twisted_garden=1..}] run particle minecraft:falling_spore_blossom ~ ~1 ~ 0.4 0.8 0.4 0.1 3
execute at @a[scores={twisted_garden=1..}] run particle minecraft:scrape ~ ~1 ~ 0.5 0.8 0.5 0.1 1

execute if entity @a[scores={char=63},team=purple] at @e[tag=blightbloom_flower] run effect give @p[distance=..0.5,team=purple] minecraft:strength 5
execute if entity @a[scores={char=63},team=yellow] at @e[tag=blightbloom_flower] run effect give @p[distance=..0.5,team=yellow] minecraft:strength 5

execute if entity @a[scores={char=63},team=purple] at @a[team=purple] if entity @e[distance=..0.5,tag=blightbloom_flower] run playsound minecraft:block.roots.break master @a[distance=..8] ~ ~ ~ 1 0.4 1
execute if entity @a[scores={char=63},team=yellow] at @a[team=yellow] if entity @e[distance=..0.5,tag=blightbloom_flower] run playsound minecraft:block.roots.break master @a[distance=..8] ~ ~ ~ 1 0.4 1

execute if entity @a[scores={char=63},team=purple] at @a[team=purple] if entity @e[distance=..0.5,tag=blightbloom_flower] run kill @e[distance=..0.5,tag=blightbloom_flower]
execute if entity @a[scores={char=63},team=yellow] at @a[team=yellow] if entity @e[distance=..0.5,tag=blightbloom_flower] run kill @e[distance=..0.5,tag=blightbloom_flower]

scoreboard players add @e[tag=blightbloom_flower] twisted_garden 1
kill @e[tag=blightbloom_flower,scores={twisted_garden=200..}]

execute as @e[tag=blightbloom_flower] at @s run tp @s ~ ~ ~ ~6 ~
execute at @e[tag=blightbloom_flower] run particle minecraft:dust{color:[0.67,0.0,0.0],scale:1.0f} ~ ~0.5 ~ 0.3 0.6 0.3 0 1
execute at @e[tag=blightbloom_flower] run particle minecraft:scrape ~ ~0.5 ~ 0.3 0.6 0.3 0 1
execute at @e[tag=blightbloom_flower] run particle minecraft:item{item:{id:"minecraft:poppy"}} ~ ~1 ~ 0.5 0.6 0.5 0.01 4


# tangle of thorns


scoreboard players set @a[scores={char=63,spell_drui_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=63,spell_drui_1_1=1,CC_silence=1..}] spell_drui_1_1 380


execute at @a[scores={char=63,spell_drui_1_1=1,CC_silence=0}] run playsound minecraft:block.vine.place master @a[distance=..10] ~ ~ ~ 0.5 1.2 1
execute at @a[scores={char=63,spell_drui_1_1=1,CC_silence=0}] run playsound minecraft:block.flowering_azalea.place master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=63,spell_drui_1_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["tanglebarbs_projectile"],NoGravity:1b,Small:1b,Pose:{Head:[90.0f,0.0f,0.0f]},equipment:{head:{id:"minecraft:vine",count:1}}}
tp @e[tag=tanglebarbs_projectile,limit=1] @a[scores={char=63,spell_drui_1_1=1},limit=1]


execute at @a[scores={char=63,spell_drui_1_1=1..10}] as @e[tag=tanglebarbs_projectile] at @s run tp @s ^ ^ ^0.6
execute at @a[scores={char=63,spell_drui_1_1=11..20}] as @e[tag=tanglebarbs_projectile] at @s run tp @s ^ ^ ^0.4
execute at @a[scores={char=63,spell_drui_1_1=11..20}] as @e[tag=tanglebarbs_projectile] at @s run tp @s ~ ~-0.3 ~
execute at @a[scores={char=63,spell_drui_1_1=21..}] as @e[tag=tanglebarbs_projectile] at @s run tp @s ^ ^ ^0.4
execute at @a[scores={char=63,spell_drui_1_1=21..}] as @e[tag=tanglebarbs_projectile] at @s run tp @s ~ ~-0.4 ~
execute at @a[scores={char=63,spell_drui_1_1=30..}] as @e[tag=tanglebarbs_projectile] at @s run tp @s ~ ~-0.5 ~

execute at @e[tag=tanglebarbs_projectile] run particle minecraft:falling_dust{block_state:{Name:"minecraft:oak_leaves"}} ~ ~1 ~ 0.2 0.2 0.2 0.01 1 normal
execute at @e[tag=tanglebarbs_projectile] run particle minecraft:block{block_state:{Name:"minecraft:vine"}} ~ ~1 ~ 0.3 0.3 0.3 0.05 6
execute at @e[tag=tanglebarbs_projectile] run particle minecraft:block{block_state:{Name:"minecraft:oak_leaves"}} ~ ~1 ~ 0.3 0.3 0.3 0.05 4
execute at @e[tag=tanglebarbs_projectile] run particle minecraft:scrape ~ ~1 ~ 0.3 0.3 0.3 0.05 1
execute at @e[tag=tanglebarbs_projectile] run playsound minecraft:block.vine.place master @a[distance=..10] ~ ~ ~ 0.3 0.5 1




execute as @e[tag=tanglebarbs_actual] at @s run tp @s ~ ~ ~ ~-8 ~

execute as @a[scores={char=63}] as @e[tag=tanglebarbs_projectile] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run summon minecraft:armor_stand ~ ~1 ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["tanglebarbs_actual"],NoGravity:1b,Pose:{Head:[90.0f,0.0f,0.0f]},equipment:{head:{id:"minecraft:oak_leaves",count:1}}}
execute as @e[tag=tanglebarbs_projectile] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute if entity @e[tag=tanglebarbs_actual] run kill @e[tag=tanglebarbs_projectile]

execute as @e[tag=tanglebarbs_actual] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~0.1 ~
execute as @e[tag=tanglebarbs_actual] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.2 ~

scoreboard players add @e[tag=tanglebarbs_actual] spell_drui_1_1 1

execute if entity @a[scores={char=63},team=yellow] at @a[tag=druid_root,team=purple] run particle minecraft:block{block_state:{Name:"minecraft:hanging_roots"}} ~ ~0.1 ~ 0.6 0.4 0.6 0.1 50
execute if entity @a[scores={char=63},team=purple] at @a[tag=druid_root,team=yellow] run particle minecraft:block{block_state:{Name:"minecraft:hanging_roots"}} ~ ~0.1 ~ 0.6 0.4 0.6 0.1 50



execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=2}] if entity @p[scores={char=63},team=yellow] as @a[distance=..1,team=purple] run attribute @s minecraft:knockback_resistance base set 100
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=2}] if entity @p[scores={char=63},team=yellow] as @a[distance=..1,team=purple] run damage @s 1 generic by @p[scores={char=63}] from @p[scores={char=63}]
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=2}] if entity @p[scores={char=63},team=yellow] as @a[distance=..1,team=purple] run attribute @s minecraft:knockback_resistance base set 0

execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=20}] if entity @p[scores={char=63},team=yellow] as @a[distance=..3,team=purple] run attribute @s minecraft:knockback_resistance base set 100
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=20}] if entity @p[scores={char=63},team=yellow] as @a[distance=..3,team=purple] run damage @s 1 generic by @p[scores={char=63}] from @p[scores={char=63}]
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=20}] if entity @p[scores={char=63},team=yellow] as @a[distance=..3,team=purple] run attribute @s minecraft:knockback_resistance base set 0

execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=40}] if entity @p[scores={char=63},team=yellow] as @a[distance=..5,team=purple] run attribute @s minecraft:knockback_resistance base set 100
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=40}] if entity @p[scores={char=63},team=yellow] as @a[distance=..5,team=purple] run damage @s 1 generic by @p[scores={char=63}] from @p[scores={char=63}]
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=40}] if entity @p[scores={char=63},team=yellow] as @a[distance=..5,team=purple] run attribute @s minecraft:knockback_resistance base set 0

execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=60}] if entity @p[scores={char=63},team=yellow] as @a[distance=..5,team=purple] run attribute @s minecraft:knockback_resistance base set 100
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=60}] if entity @p[scores={char=63},team=yellow] as @a[distance=..5,team=purple] run damage @s 1 generic by @p[scores={char=63}] from @p[scores={char=63}]
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=60}] if entity @p[scores={char=63},team=yellow] as @a[distance=..5,team=purple] run attribute @s minecraft:knockback_resistance base set 0

execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=80}] if entity @p[scores={char=63},team=yellow] as @a[distance=..5,team=purple] run attribute @s minecraft:knockback_resistance base set 100
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=80}] if entity @p[scores={char=63},team=yellow] as @a[distance=..5,team=purple] run damage @s 1 generic by @p[scores={char=63}] from @p[scores={char=63}]
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=80}] if entity @p[scores={char=63},team=yellow] as @a[distance=..5,team=purple] run attribute @s minecraft:knockback_resistance base set 0

execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=102}] if entity @p[scores={char=63},team=yellow] as @a[distance=..5,team=purple] run attribute @s minecraft:knockback_resistance base set 100
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=102}] if entity @p[scores={char=63},team=yellow] as @a[distance=..5,team=purple] run damage @s 1 generic by @p[scores={char=63}] from @p[scores={char=63}]
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=102}] if entity @p[scores={char=63},team=yellow] as @a[distance=..5,team=purple] run attribute @s minecraft:knockback_resistance base set 0


execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=2}] if entity @p[scores={char=63},team=purple] as @a[distance=..1,team=yellow] run attribute @s minecraft:knockback_resistance base set 100
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=2}] if entity @p[scores={char=63},team=purple] as @a[distance=..1,team=yellow] run damage @s 1 generic by @p[scores={char=63}] from @p[scores={char=63}]
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=2}] if entity @p[scores={char=63},team=purple] as @a[distance=..1,team=yellow] run attribute @s minecraft:knockback_resistance base set 0

execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=20}] if entity @p[scores={char=63},team=purple] as @a[distance=..3,team=yellow] run attribute @s minecraft:knockback_resistance base set 100
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=20}] if entity @p[scores={char=63},team=purple] as @a[distance=..3,team=yellow] run damage @s 1 generic by @p[scores={char=63}] from @p[scores={char=63}]
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=20}] if entity @p[scores={char=63},team=purple] as @a[distance=..3,team=yellow] run attribute @s minecraft:knockback_resistance base set 0

execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=40}] if entity @p[scores={char=63},team=purple] as @a[distance=..5,team=yellow] run attribute @s minecraft:knockback_resistance base set 100
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=40}] if entity @p[scores={char=63},team=purple] as @a[distance=..5,team=yellow] run damage @s 1 generic by @p[scores={char=63}] from @p[scores={char=63}]
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=40}] if entity @p[scores={char=63},team=purple] as @a[distance=..5,team=yellow] run attribute @s minecraft:knockback_resistance base set 0

execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=60}] if entity @p[scores={char=63},team=purple] as @a[distance=..5,team=yellow] run attribute @s minecraft:knockback_resistance base set 100
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=60}] if entity @p[scores={char=63},team=purple] as @a[distance=..5,team=yellow] run damage @s 1 generic by @p[scores={char=63}] from @p[scores={char=63}]
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=60}] if entity @p[scores={char=63},team=purple] as @a[distance=..5,team=yellow] run attribute @s minecraft:knockback_resistance base set 0

execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=80}] if entity @p[scores={char=63},team=purple] as @a[distance=..5,team=yellow] run attribute @s minecraft:knockback_resistance base set 100
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=80}] if entity @p[scores={char=63},team=purple] as @a[distance=..5,team=yellow] run damage @s 1 generic by @p[scores={char=63}] from @p[scores={char=63}]
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=80}] if entity @p[scores={char=63},team=purple] as @a[distance=..5,team=yellow] run attribute @s minecraft:knockback_resistance base set 0

execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=102}] if entity @p[scores={char=63},team=purple] as @a[distance=..5,team=yellow] run attribute @s minecraft:knockback_resistance base set 100
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=102}] if entity @p[scores={char=63},team=purple] as @a[distance=..5,team=yellow] run damage @s 1 generic by @p[scores={char=63}] from @p[scores={char=63}]
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=102}] if entity @p[scores={char=63},team=purple] as @a[distance=..5,team=yellow] run attribute @s minecraft:knockback_resistance base set 0


execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=1..10}] run tag @a[distance=..1] add druid_root
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=11..20}] run tag @a[distance=..2] add druid_root
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=21..30}] run tag @a[distance=..3] add druid_root
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=31..40}] run tag @a[distance=..4] add druid_root
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=41..120}] run tag @a[distance=..5] add druid_root

execute if entity @a[scores={char=63},team=yellow] run scoreboard players set @a[tag=druid_root,team=purple] CC_root 20

execute if entity @a[scores={char=63},team=purple] run scoreboard players set @a[tag=druid_root,team=yellow] CC_root 20

execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=1..10}] run particle minecraft:block{block_state:{Name:"minecraft:vine"}} ~ ~ ~ 1 0.2 1 0.05 30
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=11..20}] run particle minecraft:block{block_state:{Name:"minecraft:vine"}} ~ ~ ~ 1.5 0.2 1.5 0.05 45
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=21..30}] run particle minecraft:block{block_state:{Name:"minecraft:vine"}} ~ ~ ~ 2 0.2 2 0.05 60
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=31..40}] run particle minecraft:block{block_state:{Name:"minecraft:vine"}} ~ ~ ~ 2.5 0.2 2.5 0.05 75
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=41..120}] run particle minecraft:block{block_state:{Name:"minecraft:vine"}} ~ ~ ~ 3 0.2 3 0.05 90

execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=1..10}] run particle minecraft:block{block_state:{Name:"minecraft:hanging_roots"}} ~ ~ ~ 1 0.2 1 0.05 10
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=11..20}] run particle minecraft:block{block_state:{Name:"minecraft:hanging_roots"}} ~ ~ ~ 1.5 0.2 1.5 0.05 20
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=21..30}] run particle minecraft:block{block_state:{Name:"minecraft:hanging_roots"}} ~ ~ ~ 2 0.2 2 0.05 30
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=31..40}] run particle minecraft:block{block_state:{Name:"minecraft:hanging_roots"}} ~ ~ ~ 2.5 0.2 2.5 0.05 40
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=41..120}] run particle minecraft:block{block_state:{Name:"minecraft:hanging_roots"}} ~ ~ ~ 3 0.2 3 0.05 50


execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=2}] run playsound minecraft:block.vine.place master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=12}] run playsound minecraft:block.vine.break master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=22}] run playsound minecraft:block.vine.place master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=32}] run playsound minecraft:block.vine.break master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=42}] run playsound minecraft:block.vine.place master @a[distance=..12] ~ ~ ~ 1 0.5 1

scoreboard players add @e[tag=tanglebarbs_actual] spell_drui_1 1
execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1=5..}] run playsound minecraft:block.vine.place master @a[distance=..12] ~ ~ ~ 0.3 0.8 1
#execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1=5..}] run playsound entity.player.hurt_sweet_berry_bush master @a[distance=..12] ~ ~ ~ 0.1 0.8 1
scoreboard players set @e[tag=tanglebarbs_actual,scores={spell_drui_1=5..}] spell_drui_1 0

execute at @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=80..}] run tag @a remove druid_root
kill @e[tag=tanglebarbs_actual,scores={spell_drui_1_1=80..}]

# hand of thorns

scoreboard players set @a[scores={char=63,spell_drui_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=63,spell_drui_2_1=1,CC_silence=1..}] spell_drui_2_1 220

execute at @a[scores={char=63,spell_drui_2_1=1,CC_silence=0}] run playsound minecraft:entity.evoker.cast_spell master @a[distance=..10] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=63,spell_drui_2_1=1,CC_silence=0},team=yellow] run scoreboard players set @p[distance=0.5..8,team=yellow] handofthorns 120
execute at @a[scores={char=63,spell_drui_2_1=1,CC_silence=0},team=purple] run scoreboard players set @p[distance=0.5..8,team=purple] handofthorns 120
scoreboard players set @a[scores={char=63,spell_drui_2_1=1,CC_silence=0}] handofthorns 120


scoreboard players remove @a[scores={handofthorns=1..}] handofthorns 1

execute as @a[scores={handofthorns=3..}] run attribute @s minecraft:attack_damage base set 2
execute as @a[scores={handofthorns=1..2}] run attribute @s minecraft:attack_damage base set 1

execute at @a[scores={handofthorns=3..,universal_hit=1..},team=yellow] run effect give @p[distance=..4,team=purple] minecraft:poison 2 2
execute at @a[scores={handofthorns=3..,universal_hit=1..},team=purple] run effect give @p[distance=..4,team=yellow] minecraft:poison 2 2


execute at @a[scores={handofthorns=3..}] unless entity @e[distance=..1,tag=handofthorns_visual] run summon minecraft:marker ~ ~ ~ {Tags:["handofthorns_visual"]}
execute at @a[scores={handofthorns=3..}] run tp @e[tag=handofthorns_visual,sort=nearest,limit=1] ~ ~ ~

execute as @e[tag=handofthorns_visual] at @s run tp @s ~ ~ ~ ~8 ~

execute at @e[tag=handofthorns_visual] run particle minecraft:block{block_state:{Name:"minecraft:oak_leaves"}} ^ ^0.5 ^1.5 0.1 0.1 0.1 0.1 2
execute at @e[tag=handofthorns_visual] run particle minecraft:block{block_state:{Name:"minecraft:oak_leaves"}} ^ ^0.5 ^-1.5 0.1 0.1 0.1 0.1 2
execute at @e[tag=handofthorns_visual] run particle minecraft:block{block_state:{Name:"minecraft:oak_leaves"}} ^1.5 ^0.5 ^ 0.1 0.1 0.1 0.1 2
execute at @e[tag=handofthorns_visual] run particle minecraft:block{block_state:{Name:"minecraft:oak_leaves"}} ^-1.5 ^0.5 ^ 0.1 0.1 0.1 0.1 2
execute at @e[tag=handofthorns_visual] run particle minecraft:block{block_state:{Name:"minecraft:oak_leaves"}} ^1.5 ^0.5 ^1.5 0.1 0.1 0.1 0.1 2
execute at @e[tag=handofthorns_visual] run particle minecraft:block{block_state:{Name:"minecraft:oak_leaves"}} ^-1.5 ^0.5 ^-1.5 0.1 0.1 0.1 0.1 2
execute at @e[tag=handofthorns_visual] run particle minecraft:block{block_state:{Name:"minecraft:oak_leaves"}} ^-1.5 ^0.5 ^1.5 0.1 0.1 0.1 0.1 2
execute at @e[tag=handofthorns_visual] run particle minecraft:block{block_state:{Name:"minecraft:oak_leaves"}} ^1.5 ^0.5 ^-1.5 0.1 0.1 0.1 0.1 2

execute at @e[tag=handofthorns_visual] run particle minecraft:scrape ^1.2 ^0.5 ^1.2 0.1 0.1 0.1 0.1 1
execute at @e[tag=handofthorns_visual] run particle minecraft:scrape ^-1.2 ^0.5 ^-1.2 0.1 0.1 0.1 0.1 1
execute at @e[tag=handofthorns_visual] run particle minecraft:scrape ^-1.2 ^0.5 ^1.2 0.1 0.1 0.1 0.1 1
execute at @e[tag=handofthorns_visual] run particle minecraft:scrape ^1.2 ^0.5 ^-1.2 0.1 0.1 0.1 0.1 1

#execute at @e[tag=handofthorns_visual] run particle falling_spore_blossom ^1.2 ^0.5 ^ 0.1 0.1 0.1 0.1 2
#execute at @e[tag=handofthorns_visual] run particle falling_spore_blossom ^-1.2 ^0.5 ^ 0.1 0.1 0.1 0.1 2
#execute at @e[tag=handofthorns_visual] run particle falling_spore_blossom ^ ^0.5 ^1.2 0.1 0.1 0.1 0.1 2
#execute at @e[tag=handofthorns_visual] run particle falling_spore_blossom ^ ^0.5 ^-1.2 0.1 0.1 0.1 0.1 2

execute unless entity @a[scores={handofthorns=3..}] run kill @e[tag=handofthorns_visual]

# blight druid

scoreboard players add @a[scores={spell_drui_1=1..}] spell_drui_1_1 1
item replace entity @a[scores={char=63,spell_drui_1_1=400..}] hotbar.1 with minecraft:vine[minecraft:custom_name={text:"Tangle of Thorns",color:"gray",bold:1b}] 1
scoreboard players set @a[scores={spell_drui_1_1=401..}] spell_drui_1 0
scoreboard players set @a[scores={spell_drui_1_1=401..}] spell_drui_1_1 0
scoreboard players set @a[scores={spell_drui_1_1=1}] spellCD1 400

scoreboard players add @a[scores={spell_drui_2=1..}] spell_drui_2_1 1
item replace entity @a[scores={char=63,spell_drui_2_1=260..}] hotbar.2 with minecraft:fern[minecraft:custom_name={text:"Miasma",color:"gray",bold:1b},minecraft:enchantments={"minecraft:thorns":1}] 1
scoreboard players set @a[scores={spell_drui_2_1=261..}] spell_drui_2 0
scoreboard players set @a[scores={spell_drui_2_1=261..}] spell_drui_2_1 0
scoreboard players set @a[scores={spell_drui_2_1=1}] spellCD2 260

execute as @a[scores={char=63}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_hoe",Slot:0b}]}] run clear @a[scores={char=63}] minecraft:wooden_hoe
item replace entity @a[scores={char=63}] hotbar.0 with minecraft:wooden_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Scythe"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=63,spell_drui_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:vine",Slot:1b}]}] run clear @a[scores={char=63}] minecraft:vine
item replace entity @a[scores={char=63,spell_drui_1=0}] hotbar.1 with minecraft:vine[minecraft:custom_name={text:"Tangle of Thorns",color:"gray",bold:1b}] 1

execute as @a[scores={char=63,spell_drui_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:fern",Slot:2b}]}] run clear @a[scores={char=63}] minecraft:fern
item replace entity @a[scores={char=63,spell_drui_2=0}] hotbar.2 with minecraft:fern[minecraft:custom_name={text:"Miasma",color:"gray",bold:1b},minecraft:enchantments={"minecraft:thorns":1}] 1