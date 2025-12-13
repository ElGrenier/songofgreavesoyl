kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_hoe"}}]

# twisted garden

execute at @a[scores={char=63}] as @a[distance=..15,scores={CC_stun=1..,twisted_garden=0}] unless score @s Team = @p[scores={char=63}] Team run scoreboard players set @s twisted_garden 60
execute at @a[scores={char=63}] as @a[distance=..15,scores={CC_root=1..,twisted_garden=0}] unless score @s Team = @p[scores={char=63}] Team run scoreboard players set @s twisted_garden 60
execute at @a[scores={char=63}] as @a[distance=..15,scores={CC_taunt=1..,twisted_garden=0}] unless score @s Team = @p[scores={char=63}] Team run scoreboard players set @s twisted_garden 60
execute at @a[scores={char=63}] as @a[distance=..15,scores={CC_knockup=1..,twisted_garden=0}] unless score @s Team = @p[scores={char=63}] Team run scoreboard players set @s twisted_garden 60
execute at @a[scores={char=63}] as @a[distance=..15,scores={CC_grounded=1..,twisted_garden=0}] unless score @s Team = @p[scores={char=63}] Team run scoreboard players set @s twisted_garden 60


execute as @a[scores={twisted_garden=1..,universal_death=1..}] at @s run function chars:spawn_blightbloom

scoreboard players remove @a[scores={twisted_garden=1..}] twisted_garden 1
scoreboard players set @a[scores={twisted_garden=1..,universal_death=1..}] twisted_garden 0


execute at @a[scores={twisted_garden=1..}] run particle minecraft:falling_spore_blossom ~ ~1 ~ 0.4 0.8 0.4 0.1 3
execute at @a[scores={twisted_garden=1..}] run particle minecraft:scrape ~ ~1 ~ 0.5 0.8 0.5 0.1 1

execute at @e[tag=blightbloom_flower] as @a[distance=..0.5] if score @s Team = @p[scores={char=63}] Team at @s run effect give @s minecraft:strength 5
execute at @e[tag=blightbloom_flower] as @a[distance=..0.5] if score @s Team = @p[scores={char=63}] Team at @s run playsound minecraft:block.roots.break master @a[distance=..8] ~ ~ ~ 1 0.4 1
execute at @e[tag=blightbloom_flower] as @a[distance=..0.5] if score @s Team = @p[scores={char=63}] Team at @s run kill @e[distance=..0.5,tag=blightbloom_flower]


scoreboard players add @e[tag=blightbloom_flower] twisted_garden 1
kill @e[tag=blightbloom_flower,scores={twisted_garden=200..}]

execute as @e[tag=blightbloom_flower] at @s run tp @s ~ ~ ~ ~6 ~
execute at @e[tag=blightbloom_flower] run particle dust{color:[0.67,0.0,0.0],scale:1.0f} ~ ~0.5 ~ 0.3 0.6 0.3 0 1
execute at @e[tag=blightbloom_flower] run particle scrape ~ ~0.5 ~ 0.3 0.6 0.3 0 1
execute at @e[tag=blightbloom_flower] run particle item{item:{id:"minecraft:poppy"}} ~ ~1 ~ 0.5 0.6 0.5 0.01 4


# tangle of thorns

scoreboard players set @a[scores={char=63,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=63,s1_timer=1,CC_silence=1..}] s1_timer 280


execute at @a[scores={char=63,s1_timer=1,CC_silence=0}] run playsound block.vine.place master @a[distance=..10] ~ ~ ~ 0.5 1.2 1
execute at @a[scores={char=63,s1_timer=1,CC_silence=0}] run playsound block.flowering_azalea.place master @a[distance=..10] ~ ~ ~ 1 0.5 1
#execute at @a[scores={char=63,s1_timer=1,CC_silence=0}] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["tanglebarbs_projectile","entities_druid","projectile"],NoGravity:1b,Small:1b,Pose:{Head:[90.0f,0.0f,0.0f]},equipment:{head:{id:"minecraft:vine",count:1}}}
execute at @a[scores={char=63,s1_timer=1,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.3f],scale:[0.6f,0.6f,0.6f]},block_state:{Name:"minecraft:vine"},Tags:["tanglebarbs_projectile","entities_druid","projectile"]}
scoreboard players operation @e[tag=projectile,tag=tanglebarbs_projectile] Team = @p[scores={char=63}] Team
tp @e[tag=tanglebarbs_projectile,limit=1] @a[scores={char=63,s1_timer=1},limit=1]
execute at @a[scores={char=63,s1_timer=1,CC_silence=0}] as @e[tag=tanglebarbs_projectile,limit=1] at @s run tp @s ~ ~1.3 ~ 

execute at @a[scores={char=63,s1_timer=1..10}] as @e[tag=tanglebarbs_projectile] at @s run tp @s ^ ^ ^0.6
execute at @a[scores={char=63,s1_timer=11..20}] as @e[tag=tanglebarbs_projectile] at @s run tp @s ^ ^ ^0.4
execute at @a[scores={char=63,s1_timer=11..20}] as @e[tag=tanglebarbs_projectile] at @s run tp @s ~ ~-0.3 ~
execute at @a[scores={char=63,s1_timer=21..}] as @e[tag=tanglebarbs_projectile] at @s run tp @s ^ ^ ^0.4
execute at @a[scores={char=63,s1_timer=21..}] as @e[tag=tanglebarbs_projectile] at @s run tp @s ~ ~-0.4 ~
execute at @a[scores={char=63,s1_timer=30..}] as @e[tag=tanglebarbs_projectile] at @s run tp @s ~ ~-0.5 ~

execute at @e[tag=tanglebarbs_projectile] run particle falling_dust{block_state:{Name:"minecraft:oak_leaves"}} ~ ~ ~ 0.2 0.2 0.2 0.01 1 normal
execute at @e[tag=tanglebarbs_projectile] run particle block{block_state:{Name:"minecraft:vine"}} ~ ~ ~ 0.3 0.3 0.3 0.05 6
execute at @e[tag=tanglebarbs_projectile] run particle block{block_state:{Name:"minecraft:oak_leaves"}} ~ ~ ~ 0.3 0.3 0.3 0.05 4
execute at @e[tag=tanglebarbs_projectile] run particle scrape ~ ~ ~ 0.3 0.3 0.3 0.05 1
execute at @e[tag=tanglebarbs_projectile] run playsound block.vine.place master @a[distance=..10] ~ ~ ~ 0.3 0.5 1




execute as @e[tag=tanglebarbs_actual] at @s run tp @s ~ ~ ~ ~-8 ~

execute as @a[scores={char=63}] as @e[tag=tanglebarbs_projectile] at @s unless block ^ ^ ^.5 #minecraft:dash run summon block_display ~ ~1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.3f],scale:[0.6f,0.6f,0.6f]},block_state:{Name:"minecraft:oak_leaves"},Tags:["tanglebarbs_actual","entities_druid"]}
execute as @e[tag=tanglebarbs_projectile] at @s unless block ^ ^ ^.5 #minecraft:dash run kill @s
execute if entity @e[tag=tanglebarbs_actual] run kill @e[tag=tanglebarbs_projectile]

execute as @e[tag=tanglebarbs_actual] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~0.1 ~
execute as @e[tag=tanglebarbs_actual] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.2 ~

execute as @a[tag=druid_root] unless score @s Team = @p[scores={char=63}] Team at @s run particle block{block_state:{Name:"minecraft:hanging_roots"}} ~ ~0.1 ~ 0.6 0.4 0.6 0.1 50
#execute at @e[tag=tanglebarbs_actual,scores={s1_timer=1}] as @e[distance=..5] unless score @s Team = @p[scores={char=63}] Team run tag @s add druid_tangle
execute at @e[tag=tanglebarbs_actual,scores={s1_timer=11}] as @e[distance=..5] unless score @s Team = @p[scores={char=63}] Team run tag @s add druid_tangle
execute at @e[tag=tanglebarbs_actual,scores={s1_timer=21}] as @e[distance=..5] unless score @s Team = @p[scores={char=63}] Team run tag @s add druid_tangle
execute at @e[tag=tanglebarbs_actual,scores={s1_timer=31}] as @e[distance=..5] unless score @s Team = @p[scores={char=63}] Team run tag @s add druid_tangle

execute as @e[tag=druid_tangle] run attribute @s[tag=druid_tangle] minecraft:knockback_resistance base set 100
execute as @e[tag=druid_tangle] run damage @s[tag=druid_tangle] 1 generic by @p[scores={char=63}] from @p[scores={char=63}]
execute as @e[tag=druid_tangle] run attribute @s[tag=druid_tangle] minecraft:knockback_resistance base set 0

execute as @e[tag=druid_tangle] run tag @s remove druid_tangle

execute at @e[tag=tanglebarbs_actual,scores={s1_timer=1..120}] run tag @e[distance=..5] add druid_root
execute as @e[tag=druid_root] unless score @s Team = @p[scores={char=63}] Team run scoreboard players set @s CC_root 20


execute at @e[tag=tanglebarbs_actual] run particle scrape ^5 ^0.3 ^ 0.1 0.1 0.1 0.1 5
execute at @e[tag=tanglebarbs_actual] run particle scrape ^-5 ^0.3 ^ 0.1 0.1 0.1 0.1 5
execute at @e[tag=tanglebarbs_actual] run particle scrape ^ ^0.3 ^5 0.1 0.1 0.1 0.1 5
execute at @e[tag=tanglebarbs_actual] run particle scrape ^ ^0.3 ^-5 0.1 0.1 0.1 0.1 5


execute at @e[tag=tanglebarbs_actual,scores={s1_timer=1..120}] run particle block{block_state:{Name:"minecraft:vine"}} ~ ~ ~ 2.5 0.2 2.5 0.05 90
execute at @e[tag=tanglebarbs_actual,scores={s1_timer=1..120}] run particle block{block_state:{Name:"minecraft:hanging_roots"}} ~ ~ ~ 2.5 0.2 2.5 0.05 50

execute at @e[tag=tanglebarbs_actual,scores={s1_timer=2}] run playsound block.vine.place master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @e[tag=tanglebarbs_actual,scores={s1_timer=12}] run playsound block.vine.break master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @e[tag=tanglebarbs_actual,scores={s1_timer=22}] run playsound block.vine.place master @a[distance=..12] ~ ~ ~ 1 0.5 1
execute at @e[tag=tanglebarbs_actual,scores={s1_timer=32}] run playsound block.vine.place master @a[distance=..12] ~ ~ ~ 1 0.5 1
#execute at @e[tag=tanglebarbs_actual,scores={s1_timer=5..}] run playsound entity.player.hurt_sweet_berry_bush master @a[distance=..12] ~ ~ ~ 0.1 0.8 1
#scoreboard players set @e[tag=tanglebarbs_actual,scores={s1_timer=5..}] s1_timer 0

scoreboard players add @e[tag=tanglebarbs_actual] s1_timer 1
execute at @e[tag=tanglebarbs_actual,scores={s1_timer=40..}] run tag @a remove druid_root
kill @e[tag=tanglebarbs_actual,scores={s1_timer=40..}]

# hand of thorns

scoreboard players set @a[scores={char=63,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=63,s2_timer=1,CC_silence=1..}] s2_timer 220

execute at @a[scores={char=63,s2_timer=1,CC_silence=0}] run playsound entity.evoker.cast_spell master @a[distance=..10] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=63,s2_timer=1,CC_silence=0}] as @p[distance=0.5..8] if score @s Team = @p[scores={char=63}] Team run scoreboard players set @s handofthorns 120
scoreboard players set @a[scores={char=63,s2_timer=1,CC_silence=0}] handofthorns 120


scoreboard players remove @a[scores={handofthorns=1..}] handofthorns 1

execute as @a[scores={handofthorns=3..}] run tag @s add handofthorns_player
execute as @a[scores={handofthorns=3..}] run attribute @s minecraft:attack_damage base set 2
execute as @a[scores={handofthorns=1..2}] run tag @s remove handofthorns_player
execute as @a[scores={handofthorns=1..2}] run attribute @s minecraft:attack_damage base set 1

execute as @a[advancements={chars:druid_hand_of_thorns=true}] unless score @s Team = @p[scores={char=63}] Team at @s run effect give @s poison 2 2
execute as @a[advancements={chars:druid_hand_of_thorns=true}] run advancement revoke @s from chars:druid_hand_of_thorns
execute at @a[scores={handofthorns=3..}] unless entity @e[distance=..1,tag=handofthorns_visual] run summon marker ~ ~ ~ {Tags:["handofthorns_visual","entities_druid"]}
execute at @a[scores={handofthorns=3..}] run tp @e[tag=handofthorns_visual,sort=nearest,limit=1] ~ ~ ~

execute as @e[tag=handofthorns_visual] at @s run tp @s ~ ~ ~ ~8 ~

execute at @e[tag=handofthorns_visual] run particle block{block_state:{Name:"minecraft:oak_leaves"}} ^ ^0.5 ^1.5 0.1 0.1 0.1 0.1 2
execute at @e[tag=handofthorns_visual] run particle block{block_state:{Name:"minecraft:oak_leaves"}} ^ ^0.5 ^-1.5 0.1 0.1 0.1 0.1 2
execute at @e[tag=handofthorns_visual] run particle block{block_state:{Name:"minecraft:oak_leaves"}} ^1.5 ^0.5 ^ 0.1 0.1 0.1 0.1 2
execute at @e[tag=handofthorns_visual] run particle block{block_state:{Name:"minecraft:oak_leaves"}} ^-1.5 ^0.5 ^ 0.1 0.1 0.1 0.1 2
execute at @e[tag=handofthorns_visual] run particle block{block_state:{Name:"minecraft:oak_leaves"}} ^1.5 ^0.5 ^1.5 0.1 0.1 0.1 0.1 2
execute at @e[tag=handofthorns_visual] run particle block{block_state:{Name:"minecraft:oak_leaves"}} ^-1.5 ^0.5 ^-1.5 0.1 0.1 0.1 0.1 2
execute at @e[tag=handofthorns_visual] run particle block{block_state:{Name:"minecraft:oak_leaves"}} ^-1.5 ^0.5 ^1.5 0.1 0.1 0.1 0.1 2
execute at @e[tag=handofthorns_visual] run particle block{block_state:{Name:"minecraft:oak_leaves"}} ^1.5 ^0.5 ^-1.5 0.1 0.1 0.1 0.1 2

execute at @e[tag=handofthorns_visual] run particle scrape ^1.2 ^0.5 ^1.2 0.1 0.1 0.1 0.1 1
execute at @e[tag=handofthorns_visual] run particle scrape ^-1.2 ^0.5 ^-1.2 0.1 0.1 0.1 0.1 1
execute at @e[tag=handofthorns_visual] run particle scrape ^-1.2 ^0.5 ^1.2 0.1 0.1 0.1 0.1 1
execute at @e[tag=handofthorns_visual] run particle scrape ^1.2 ^0.5 ^-1.2 0.1 0.1 0.1 0.1 1

#execute at @e[tag=handofthorns_visual] run particle falling_spore_blossom ^1.2 ^0.5 ^ 0.1 0.1 0.1 0.1 2
#execute at @e[tag=handofthorns_visual] run particle falling_spore_blossom ^-1.2 ^0.5 ^ 0.1 0.1 0.1 0.1 2
#execute at @e[tag=handofthorns_visual] run particle falling_spore_blossom ^ ^0.5 ^1.2 0.1 0.1 0.1 0.1 2
#execute at @e[tag=handofthorns_visual] run particle falling_spore_blossom ^ ^0.5 ^-1.2 0.1 0.1 0.1 0.1 2

execute unless entity @a[scores={handofthorns=3..}] run kill @e[tag=handofthorns_visual]

# blight druid

scoreboard players set @a[scores={char=63}] MaxHP 20

scoreboard players set @a[scores={s1_timer=1,char=63}] spellCD1 300
scoreboard players add @a[scores={s1_timer=1..,char=63}] s1_timer 1
scoreboard players set @a[scores={s1_timer=301..,char=63}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=63}] spellCD2 260
scoreboard players add @a[scores={s2_timer=1..,char=63}] s2_timer 1
scoreboard players set @a[scores={s2_timer=261..,char=63}] s2_timer 0

execute as @a[scores={char=63,CC_disarm=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_hoe",Slot:0b}]}] run clear @a[scores={char=63}] wooden_hoe
item replace entity @a[scores={char=63,CC_disarm=0}] hotbar.0 with wooden_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Scythe"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=63,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=63}] carrot_on_a_stick
item replace entity @a[scores={char=63,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:vine",minecraft:custom_name={text:"Tangle of Thorns",color:"gray",bold:1b}] 1

execute as @a[scores={char=63,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=63}] warped_fungus_on_a_stick
item replace entity @a[scores={char=63,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:fern",minecraft:custom_name={text:"Miasma",color:"gray",bold:1b},minecraft:enchantments={"minecraft:thorns":1}] 1

