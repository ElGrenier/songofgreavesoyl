#mother of the brood
bossbar set minecraft:broodmother players @a

execute as @e[tag=crawlers_broodmother,scores={lifetime=1}] at @s run playsound entity.wither.spawn master @a ~ ~ ~ 4 1.3
execute as @e[tag=crawlers_broodmother,scores={lifetime=..10}] at @s run tp @s ~ ~0.075 ~
execute as @e[tag=crawlers_broodmother,scores={lifetime=..10}] at @s run playsound block.gravel.break master @a[distance=..40] ~ ~ ~ 3 1
execute as @e[tag=crawlers_broodmother,scores={lifetime=..10}] at @s run particle block{block_state:{Name:"minecraft:stone"}} ~ ~2 ~ 1.5 1.5 1.5 0.1 30
execute as @e[tag=crawlers_broodmother,scores={lifetime=..10}] at @s run particle smoke ~ ~2 ~ 1.5 1.5 1.5 0.3 30

execute store result bossbar broodmother value run data get entity @n[tag=crawlers_broodmother] Health
execute store result score @n[tag=crawlers_broodmother] crawlers_hp run data get entity @n[tag=crawlers_broodmother] Health


execute as @e[tag=crawlers_broodmother] at @s unless score @s crawlers_attack5 matches 1.. unless score @s crawlers_attack1 matches 1.. unless score @s crawlers_attack3 matches 1.. unless score @s crawlers_attack2 matches 1.. rotated ~ 0 if block ^ ^ ^3 #minecraft:dash if block ^ ^ ^2 #minecraft:dash run tp @s ^ ^ ^0.075 facing entity @p[distance=..40]
execute as @e[tag=crawlers_broodmother] at @s unless score @s crawlers_attack5 matches 1.. unless score @s crawlers_attack1 matches 1.. unless score @s crawlers_attack3 matches 1.. unless score @s crawlers_attack2 matches 1.. rotated ~ 0 unless block ^ ^ ^3 #minecraft:dash run tp @s ~ ~0.5 ~ facing entity @p[distance=..40]
execute as @e[tag=crawlers_broodmother] at @s unless score @s crawlers_attack5 matches 1.. unless score @s crawlers_attack1 matches 1.. unless score @s crawlers_attack3 matches 1.. unless score @s crawlers_attack2 matches 1.. rotated ~ 0 unless block ^ ^ ^2 #minecraft:dash run tp @s ~ ~0.5 ~ facing entity @p[distance=..40]
execute as @e[tag=crawlers_broodmother] at @s rotated ~ 0 if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~ facing entity @p[distance=..40]
execute as @e[tag=crawlers_broodmother] at @s as @a[distance=..1.5] run damage @s 4 generic

execute as @e[tag=crawlers_broodmother] run scoreboard players add @s crawlers_spells 1
execute as @e[tag=crawlers_broodmother,scores={crawlers_spells=100..,crawlers_hp=201..}] at @s store result score @s crawlers_attack10 run random value 1..5
execute as @e[tag=crawlers_broodmother,scores={crawlers_spells=100..,crawlers_hp=201..}] run scoreboard players set @s crawlers_spells 1
execute as @e[tag=crawlers_broodmother,scores={crawlers_spells=90..,crawlers_hp=101..200}] at @s store result score @s crawlers_attack10 run random value 1..5
execute as @e[tag=crawlers_broodmother,scores={crawlers_spells=90..,crawlers_hp=101..200}] run scoreboard players set @s crawlers_spells 1
execute as @e[tag=crawlers_broodmother,scores={crawlers_spells=75..,crawlers_hp=..100}] at @s store result score @s crawlers_attack10 run random value 1..5
execute as @e[tag=crawlers_broodmother,scores={crawlers_spells=75..,crawlers_hp=..100}] run scoreboard players set @s crawlers_spells 1

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack10=1}] at @s run scoreboard players set @s crawlers_attack1 1
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack10=2}] at @s run scoreboard players set @s crawlers_attack2 1
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack10=3}] at @s run scoreboard players set @s crawlers_attack3 1
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack10=4}] at @s run scoreboard players set @s crawlers_attack4 1
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack10=5}] at @s run scoreboard players set @s crawlers_attack5 1

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack10=1..}] at @s run scoreboard players set @s crawlers_attack10 0

#spit
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=1..}] run scoreboard players add @s crawlers_attack1 1
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=60..}] run scoreboard players set @s crawlers_attack1 0

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=2}] at @s run tp @s ~ ~ ~ ~ ~90

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=2..20}] at @s run playsound block.mud.place master @a[distance=..30] ~ ~ ~ 2 1
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=2..37}] at @s rotated ~ 0 positioned ^ ^2 ^3 run execute rotated as @s run particle block{block_state:{Name:"minecraft:yellow_wool"}} ^ ^ ^2 0.5 0.5 0.5 0.1 8

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=2}] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=4}] at @s run tp @s ~ ~ ~ ~-10 ~
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=6}] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=8}] at @s run tp @s ~ ~ ~ ~-10 ~
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=10}] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=12}] at @s run tp @s ~ ~ ~ ~-10 ~
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=14}] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=16}] at @s run tp @s ~ ~ ~ ~-10 ~
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=18}] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=20}] at @s run tp @s ~ ~ ~ ~-5 ~

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=20..23}] at @s run tp @s ~ ~ ~ ~ ~-3
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=24..26}] at @s run tp @s ~ ~ ~ ~ ~-4
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=27..29}] at @s run tp @s ~ ~ ~ ~ ~-5.5
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=30..35}] at @s run tp @s ~ ~ ~ ~ ~-7
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=35..50}] at @s run tp @s ~ ~ ~ ~ ~-10

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=23..37}] at @s run playsound entity.bogged.ambient master @a[distance=..30] ~ ~ ~ 2 1.5
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack1=23..40}] at @s run summon marker ~ ~1 ~ {Tags:["crawlers_broodmother_spit","projectile"]}

execute as @e[tag=crawlers_broodmother] at @s rotated ~ 0 positioned ^ ^2 ^2.5 run execute rotated as @s run execute as @e[tag=crawlers_broodmother_spit,scores={lifetime=1..2}] run tp @s ~ ~ ~ facing ^ ^ ^10
scoreboard players add @e[tag=crawlers_broodmother_spit] lifetime 1
execute as @e[tag=crawlers_broodmother_spit] at @s run tp @s ^ ^ ^0.9
execute as @e[tag=crawlers_broodmother_spit] at @s run tp @s ^ ^ ^ ~ ~3
execute as @e[tag=crawlers_broodmother_spit,scores={lifetime=1..},limit=1,sort=random] at @s run tp @s ^ ^ ^ ~15 ~
execute as @e[tag=crawlers_broodmother_spit,scores={lifetime=1..},limit=1,sort=random] at @s run tp @s ^ ^ ^ ~-15 ~
execute as @e[tag=crawlers_broodmother_spit,scores={lifetime=1..},limit=1,sort=random] at @s run tp @s ^ ^ ^ ~15 ~
execute as @e[tag=crawlers_broodmother_spit,scores={lifetime=1..},limit=1,sort=random] at @s run tp @s ^ ^ ^ ~-15 ~
execute as @e[tag=crawlers_broodmother_spit] at @s run particle block{block_state:{Name:"minecraft:yellow_wool"}} ~ ~ ~ 0.4 0.4 0.4 0 3
execute as @e[tag=crawlers_broodmother_spit] at @s run particle smoke ~ ~ ~ 0.5 0.5 0.5 0 5
execute as @e[tag=crawlers_broodmother_spit,scores={lifetime=1..2}] at @s run playsound block.cobweb.break master @a[distance=..20] ~ ~ ~ 3 0.8
execute as @e[tag=crawlers_broodmother_spit] at @s unless block ~ ~ ~ #minecraft:dash run particle gust
execute as @e[tag=crawlers_broodmother_spit] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
kill @e[tag=crawlers_broodmother_spit,scores={lifetime=50..}]
execute as @e[tag=crawlers_broodmother_spit] at @s positioned ~-.75 ~-.75 ~-.75 as @p[dz=0.5,dx=0.5,dy=0.5,tag=valid_spell_target] run effect give @s poison 2 10 true
#execute as @e[tag=crawlers_broodmother_spit] at @s positioned ~-.75 ~-.75 ~-.75 if entity @p[dz=0.5,dx=0.5,dy=0.5] run kill @s

#slam
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=1..}] run scoreboard players add @s crawlers_attack2 1
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=60..}] run scoreboard players set @s crawlers_attack2 0

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=2..12}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=2..12}] at @s run tp @s ~ ~ ~ ~ ~40
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=2..22}] at @s rotated ~ 0 positioned ^ ^0.5 ^2 run function crawlermode:telegraph_wide

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=22..24}] at @s run tp @s ~ ~ ~ ~ ~-15

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=22}] at @s rotated ~ 0 positioned ^ ^ ^2 run playsound entity.wither.break_block master @a[distance=..20] ~ ~ ~ 2 0.7
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=22}] at @s rotated ~ 0 positioned ^ ^ ^2 run summon marker ~ ~ ~ {Tags:["crawlers_broodmother_shockwave"]}

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=25..35}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=25..35}] at @s run tp @s ~ ~ ~ ~ ~45
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=25..45}] at @s rotated ~ 0 positioned ^ ^0.5 ^2 rotated ~25 ~ run function crawlermode:telegraph_wide
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=25..45}] at @s rotated ~ 0 positioned ^ ^0.5 ^2 rotated ~-25 ~ run function crawlermode:telegraph_wide
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=25..45}] at @s rotated ~ 0 positioned ^ ^0.5 ^2 rotated ~45 ~ run function crawlermode:telegraph_wide
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=25..45}] at @s rotated ~ 0 positioned ^ ^0.5 ^2 rotated ~-45 ~ run function crawlermode:telegraph_wide

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=45..47}] at @s run tp @s ~ ~ ~ ~ ~-15

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=45}] at @s rotated ~ 0 positioned ^ ^ ^2 run playsound entity.wither.break_block master @a[distance=..20] ~ ~ ~ 2 0.7
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=45}] at @s rotated ~ 0 positioned ^ ^ ^2 run summon marker ~ ~ ~ {Tags:["crawlers_broodmother_shockwave","crawlers_broodmother_shockwave_r"]}
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=45}] at @s rotated ~ 0 positioned ^ ^ ^2 run summon marker ~ ~ ~ {Tags:["crawlers_broodmother_shockwave","crawlers_broodmother_shockwave_l"]}
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=45}] at @s rotated ~ 0 positioned ^ ^ ^2 run summon marker ~ ~ ~ {Tags:["crawlers_broodmother_shockwave","crawlers_broodmother_shockwave_r1"]}
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack2=45}] at @s rotated ~ 0 positioned ^ ^ ^2 run summon marker ~ ~ ~ {Tags:["crawlers_broodmother_shockwave","crawlers_broodmother_shockwave_l1"]}

scoreboard players add @e[tag=crawlers_broodmother_shockwave] lifetime 1
execute as @e[tag=crawlers_broodmother_shockwave] at @s rotated ~ 0 run tp @s ^ ^ ^0.8
execute as @e[tag=crawlers_broodmother_shockwave,scores={lifetime=1}] at @s rotated as @n[tag=crawlers_broodmother] run tp @s ~ ~ ~ facing ^ ^ ^1
execute as @e[tag=crawlers_broodmother_shockwave_r,scores={lifetime=1}] at @s rotated as @n[tag=crawlers_broodmother] run tp @s ~ ~ ~ ~25 ~
execute as @e[tag=crawlers_broodmother_shockwave_l,scores={lifetime=1}] at @s rotated as @n[tag=crawlers_broodmother] run tp @s ~ ~ ~ ~-25 ~
execute as @e[tag=crawlers_broodmother_shockwave_r1,scores={lifetime=1}] at @s rotated as @n[tag=crawlers_broodmother] run tp @s ~ ~ ~ ~45 ~
execute as @e[tag=crawlers_broodmother_shockwave_l1,scores={lifetime=1}] at @s rotated as @n[tag=crawlers_broodmother] run tp @s ~ ~ ~ ~-45 ~
execute as @e[tag=crawlers_broodmother_shockwave] at @s run particle block{block_state:{Name:"minecraft:cobblestone"}} ~ ~ ~ 1.2 0.4 1.2 0 25
execute as @e[tag=crawlers_broodmother_shockwave] at @s run particle block{block_state:{Name:"minecraft:stone"}} ~ ~0.5 ~ 0.4 0.8 0.4 0 15
execute as @e[tag=crawlers_broodmother_shockwave] at @s run particle explosion ~ ~0.5 ~ 0.5 0 0.5 0 1
execute as @e[tag=crawlers_broodmother_shockwave,scores={lifetime=1..}] at @s run playsound block.gravel.break master @a[distance=..20] ~ ~ ~ 3 0.2
kill @e[tag=crawlers_broodmother_shockwave,scores={lifetime=50..}]
execute as @e[tag=crawlers_broodmother_shockwave] at @s positioned ~-1.25 ~-.75 ~-1.25 as @p[dz=1.5,dx=0.5,dy=1.5,tag=valid_spell_target] run damage @s 6 generic by @n[tag=crawlers_broodmother]
execute as @e[tag=crawlers_broodmother_shockwave] at @s positioned ~-1.25 ~-.75 ~-1.25 as @p[dz=1.5,dx=0.5,dy=1.5,tag=valid_spell_target] run scoreboard players set @s CC_knockup 10

#kiss of death
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack3=1..}] run scoreboard players add @s crawlers_attack3 1
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack3=70..}] run scoreboard players set @s crawlers_attack3 0

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack3=2}] at @s positioned ~ ~1.8 ~ run tag @p add kiss_target
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack3=2..20}] at @s positioned ~ ~ ~ run tp @s ~ ~ ~ facing entity @p[tag=kiss_target]
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack3=2..20}] at @s positioned ~ ~1.8 ~ run function crawlermode:telegraph

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack3=31}] at @s positioned ~ ~1.8 ~ run function crawlermode:kiss_of_death_brood
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack3=31}] at @s positioned ~ ~1.8 ~ run playsound entity.shulker.shoot master @a[distance=..20] ~ ~ ~ 2 0.7
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack3=31}] at @s positioned ~ ~1.8 ~ run playsound block.mud.break master @a[distance=..20] ~ ~ ~ 2 0.7
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack3=21}] at @s positioned ~ ~1.8 ~ run tag @a remove kiss_target

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack3=32}] at @s positioned ~ ~1.8 ~ run tag @a[limit=1,sort=furthest] add kiss_target
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack3=32..50}] at @s positioned ~ ~ ~ run tp @s ~ ~ ~ facing entity @p[tag=kiss_target]
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack3=32..50}] at @s positioned ~ ~1.8 ~ run function crawlermode:telegraph

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack3=61}] at @s positioned ~ ~1.8 ~ run function crawlermode:kiss_of_death_brood
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack3=61}] at @s positioned ~ ~1.8 ~ run playsound entity.shulker.shoot master @a[distance=..20] ~ ~ ~ 2 0.7
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack3=61}] at @s positioned ~ ~1.8 ~ run playsound block.mud.break master @a[distance=..20] ~ ~ ~ 2 0.7
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack3=61}] at @s positioned ~ ~1.8 ~ run tag @a remove kiss_target

execute as @a[tag=brood_venom,scores={HP=..3}] run damage @s 2 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=brood_venom,scores={HP=4..7}] run damage @s 3 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=brood_venom,scores={HP=8..11}] run damage @s 4 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=brood_venom,scores={HP=12..15}] run damage @s 5 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=brood_venom,scores={HP=16..19}] run damage @s 7 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=brood_venom,scores={HP=20..23}] run damage @s 8 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=brood_venom,scores={HP=24..27}] run damage @s 9 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=brood_venom,scores={HP=28..31}] run damage @s 10 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=brood_venom,scores={HP=32..35}] run damage @s 11 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=brood_venom,scores={HP=36..39}] run damage @s 12 generic by @p[scores={char=20}] from @p[scores={char=20}]
execute as @a[tag=brood_venom,scores={HP=40..}] run damage @s 13 generic by @p[scores={char=20}] from @p[scores={char=20}]
tag @a remove brood_venom

#live birth
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack4=1..}] run scoreboard players add @s crawlers_attack4 1
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack4=40..}] run scoreboard players set @s crawlers_attack4 0

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack4=2}] at @s run summon spider ~ ~1 ~1 {Health:2,PersistenceRequired:1b,Tags:["crawlers_crawlerboi","crawlers_enemy","valid_spell_target"],attributes:[{id:scale,base:0.6f},{id:max_health,base:8f}]}
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack4=11}] at @s run summon spider ~ ~1 ~-1 {Health:2,PersistenceRequired:1b,Tags:["crawlers_crawlerboi","crawlers_enemy","valid_spell_target"],attributes:[{id:scale,base:0.6f},{id:max_health,base:8f}]}

#dash and bomb
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack5=1..}] run scoreboard players add @s crawlers_attack5 1
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack5=40..}] run scoreboard players set @s crawlers_attack5 0

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack5=1..40}] at @s rotated ~ 0 if block ^ ^ ^3 #minecraft:dash if block ^ ^ ^2 #minecraft:dash run tp @s ^ ^ ^0.5
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack5=1..40}] at @s rotated ~ 0 unless block ^ ^ ^2 #minecraft:dash run scoreboard players set @s crawlers_attack5 0
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack5=1..40}] at @s rotated ~ 0 unless block ^ ^ ^3 #minecraft:dash run scoreboard players set @s crawlers_attack4 0

execute as @e[tag=crawlers_broodmother,scores={crawlers_attack5=5}] at @s run summon marker ~ ~1 ~ {Tags:["crawlers_broodmother_bomb","projectile"]}
#execute as @e[tag=crawlers_broodmother,scores={crawlers_attack5=10}] at @s run summon marker ~ ~1 ~ {Tags:["crawlers_broodmother_bomb","projectile"]}
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack5=15}] at @s run summon marker ~ ~1 ~ {Tags:["crawlers_broodmother_bomb","projectile"]}
#execute as @e[tag=crawlers_broodmother,scores={crawlers_attack5=20}] at @s run summon marker ~ ~1 ~ {Tags:["crawlers_broodmother_bomb","projectile"]}
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack5=25}] at @s run summon marker ~ ~1 ~ {Tags:["crawlers_broodmother_bomb","projectile"]}
#execute as @e[tag=crawlers_broodmother,scores={crawlers_attack5=30}] at @s run summon marker ~ ~1 ~ {Tags:["crawlers_broodmother_bomb","projectile"]}
execute as @e[tag=crawlers_broodmother,scores={crawlers_attack5=35}] at @s run summon marker ~ ~1 ~ {Tags:["crawlers_broodmother_bomb","projectile"]}

scoreboard players add @e[tag=crawlers_broodmother_bomb] lifetime 1
execute as @e[tag=crawlers_broodmother_bomb,scores={lifetime=1..5}] at @s run tp @s ~ ~0.45 ~
execute as @e[tag=crawlers_broodmother_bomb,scores={lifetime=6..10}] at @s run tp @s ~ ~0.225 ~
execute as @e[tag=crawlers_broodmother_bomb,scores={lifetime=11}] at @s run tp @s ^ ^ ^ facing entity @p
execute as @e[tag=crawlers_broodmother_bomb,scores={lifetime=11..15}] at @s run tp @s ^ ^ ^0.25
execute as @e[tag=crawlers_broodmother_bomb,scores={lifetime=16..}] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=crawlers_broodmother_bomb] at @s run particle block{block_state:{Name:"minecraft:yellow_wool"}} ~ ~ ~ 0.4 0.4 0.4 0 7
execute as @e[tag=crawlers_broodmother_bomb] at @s run particle smoke ~ ~ ~ 0.2 0.2 0.2 0 15
execute as @e[tag=crawlers_broodmother_bomb,scores={lifetime=1..2}] at @s run playsound block.cobweb.break master @a[distance=..20] ~ ~ ~ 3 0.8
execute as @e[tag=crawlers_broodmother_bomb] at @s unless block ~ ~ ~ #minecraft:dash run particle explosion ~ ~1 ~ 1 1 1 0 8
execute as @e[tag=crawlers_broodmother_bomb] at @s unless block ~ ~ ~ #minecraft:dash run playsound entity.generic.explode master @a[distance=..20] ~ ~ ~ 2 0.9
execute as @e[tag=crawlers_broodmother_bomb] at @s unless block ~ ~ ~ #minecraft:dash as @a[distance=..3] run damage @s 4 generic
execute as @e[tag=crawlers_broodmother_bomb] at @s unless block ~ ~ ~ #minecraft:dash as @a[distance=..3] run scoreboard players set @s CC_stun 20
execute as @e[tag=crawlers_broodmother_bomb] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
kill @e[tag=crawlers_broodmother_bomb,scores={lifetime=50..}]


