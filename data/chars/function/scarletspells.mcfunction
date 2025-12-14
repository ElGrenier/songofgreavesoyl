scoreboard players set @a[scores={universal_death=1..}] laceration 0
scoreboard players set @a[scores={universal_death=1..}] kneel 0

effect give @a[scores={char=64},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] weakness 1 100 true
effect give @a[scores={char=64},nbt={SelectedItem:{id:"minecraft:barrier"}}] weakness 1 100 true

scoreboard players set @a[scores={char=64}] CC_disarm 0

# laceration

execute as @a[scores={char=64,scarlet_knifes=1..7}] run title @s[scores={char=64}] actionbar [{text:"[ ",color:"dark_red",bold:1b,type:"text"},{text:"Knives: ",color:"red",bold:0b,type:"text"},{score:{name:"@s",objective:"scarlet_knifes"},color:"red",bold:0b,type:"score"},{text:"/",color:"dark_red",bold:1b,type:"text"},{text:"7",color:"red",bold:0b,type:"text"},{text:" ]",color:"dark_red",bold:1b,type:"text"}]
execute as @a[scores={char=64,scarlet_knifes=0}] run title @s[scores={char=64}] actionbar [{text:"[ ",color:"dark_red",bold:1b,type:"text"},{text:"Damn, I'm out of knives!",color:"red",bold:0b,type:"text",italic:1b},{text:" ]",color:"dark_red",bold:1b,type:"text"}]

execute at @a[scores={char=64,knifes_cd=58}] run playsound item.armor.equip_iron master @a[scores={char=64,knifes_cd=58}] ~ ~ ~ 0.1 2 1
execute at @a[scores={char=64,knifes_cd=59}] run playsound entity.item.pickup master @a[scores={char=64,knifes_cd=59}] ~ ~ ~ 0.1 2 1

scoreboard players add @a[scores={char=64,knifes_cd=..60,scarlet_knifes=..6}] knifes_cd 1
scoreboard players add @a[scores={char=64,knifes_cd=60,scarlet_knifes=..6}] scarlet_knifes 1
scoreboard players set @a[scores={char=64,knifes_cd=60..}] knifes_cd 0
scoreboard players set @a[scores={char=64,scarlet_knifes=7..}] knifes_cd 0


scoreboard players set @a[scores={char=64,s0_timer=1,CC_silence=1..}] spellCD0 20
scoreboard players set @a[scores={char=64,s0_timer=1,CC_silence=1..}] s0_timer 0
scoreboard players set @a[scores={char=64,s0_timer=1,CC_silence=1..}] s0_timer 0

execute at @a[scores={char=64,s0_timer=1,scarlet_knifes=1..,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 0.3 2 1
execute at @a[scores={char=64,s0_timer=1,scarlet_knifes=1..,CC_silence=0}] run playsound entity.snowball.throw master @a[distance=..10] ~ ~ ~ 0.5 1.5 1

execute at @a[scores={char=64,s0_timer=1,scarlet_knifes=1..,CC_silence=0}] run summon item_display ~ ~1 ~ {teleport_duration:1,transformation:[0.7071067812f,0.7071067812f,0f,0f,0f,0f,-1f,0f,-0.7071067812f,0.7071067812f,0f,0f,0f,0f,0f,1f],item:{id:"minecraft:prismarine_shard",count:1},Tags:["laceration_knife","projectile","entities_scarletlady"]}
scoreboard players remove @a[scores={char=64,s0_timer=1,scarlet_knifes=1..,CC_silence=0}] scarlet_knifes 1
scoreboard players operation @e[tag=projectile,tag=laceration_knife] Team = @p[scores={char=64}] Team
tp @e[tag=laceration_knife,limit=1] @a[scores={char=64,s0_timer=1},limit=1]
execute at @a[scores={char=64,s0_timer=1,CC_silence=0}] as @e[tag=laceration_knife,limit=1] at @s run tp @s ~ ~1.3 ~



execute at @a[scores={char=64,s0_timer=1..20}] as @e[tag=laceration_knife] at @s run tp @s ^ ^ ^0.3
execute as @e[tag=laceration_knife] at @s unless block ^ ^ ^0.4 #minecraft:dash run kill @s
execute as @e[tag=laceration_knife] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute at @a[scores={char=64,s0_timer=1..20}] as @e[tag=laceration_knife] at @s run tp @s ^ ^ ^0.3
execute as @e[tag=laceration_knife] at @s unless block ^ ^ ^0.4 #minecraft:dash run kill @s
execute as @e[tag=laceration_knife] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute at @a[scores={char=64,s0_timer=1..20}] as @e[tag=laceration_knife] at @s run tp @s ^ ^ ^0.3
execute as @e[tag=laceration_knife] at @s unless block ^ ^ ^0.4 #minecraft:dash run kill @s
execute as @e[tag=laceration_knife] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute at @a[scores={char=64,s0_timer=1..20}] as @e[tag=laceration_knife] at @s run tp @s ^ ^ ^0.3
execute as @e[tag=laceration_knife] at @s unless block ^ ^ ^0.4 #minecraft:dash run kill @s
execute as @e[tag=laceration_knife] at @s unless block ~ ~ ~ #minecraft:dash run kill @s

execute at @a[scores={char=64,s0_timer=11..20}] as @e[tag=laceration_knife] at @s run tp @s ~ ~-0.2 ~

execute as @e[tag=laceration_knife] at @s unless block ^ ^ ^0.4 #minecraft:dash run kill @s
execute as @e[tag=laceration_knife] at @s unless block ~ ~ ~ #minecraft:dash run kill @s

execute at @a[scores={char=64,s0_timer=20..}] run kill @e[tag=laceration_knife]

execute at @e[tag=laceration_knife] run particle crit ~ ~ ~ 0.2 0.1 0.2 0.01 1

execute at @e[tag=laceration_knife] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=64}] Team run tag @s add scarlet_lacerated

execute at @e[tag=scarlet_lacerated] run kill @e[tag=laceration_knife]
execute at @e[tag=scarlet_lacerated] run particle block{block_state:{Name:"minecraft:redstone_block"}} ~ ~.5 ~ 0.3 0.8 0.3 0.001 10 force
execute at @e[tag=scarlet_lacerated] run playsound entity.player.hurt_sweet_berry_bush master @a[distance=..15] ~ ~ ~ 0.4 1.2 1
execute if entity @e[tag=scarlet_lacerated] at @a[scores={char=64}] run playsound entity.experience_orb.pickup master @a[scores={char=64}] ~ ~ ~ 1 0.1 1
scoreboard players add @a[tag=scarlet_lacerated] laceration_counter 1
scoreboard players add @a[tag=scarlet_lacerated] laceration_timer_initial 1
scoreboard players add @a[tag=scarlet_lacerated] laceration_timer 1
damage @e[tag=scarlet_lacerated,limit=1] 4 generic by @p[scores={char=64}] from @p[scores={char=64}]

tag @e remove scarlet_lacerated


scoreboard players add @a[scores={laceration_timer_initial=1..}] laceration_timer_initial 1
scoreboard players add @a[scores={laceration_timer_initial=120..}] laceration_timer 1

scoreboard players remove @a[scores={laceration_timer=30..,laceration_counter=1..}] laceration_counter 1
scoreboard players set @a[scores={laceration_timer=30..}] laceration_timer 1

scoreboard players set @a[scores={laceration_counter=4..}] laceration 60
scoreboard players set @a[scores={laceration_counter=4..}] laceration_immunity 60
execute at @a[scores={laceration_counter=4..}] run summon item ~ ~ ~ {PickupDelay:32767,Invulnerable:1b,Tags:["mosquito_blood","entities_scarletlady"],Item:{id:"minecraft:redstone",count:1}}
execute at @a[scores={laceration_counter=4..}] run particle dust{color:[1.0,0.0,0.0],scale:1.0f} ~ ~1 ~ 1 0.5 1 0.01 100 normal

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

execute at @a[scores={laceration=1..}] run particle dust{color:[1.0,0.0,0.0],scale:1.0f} ~ ~1 ~ 0.3 0.6 0.3 0.01 1
execute at @a[scores={laceration=1..}] run particle entity_effect{color:[1.0,0.0,0.0,1.0]} ~ ~1 ~ 0.3 0.6 0.3 0.01 1
execute at @a[scores={laceration=1..}] run particle block{block_state:{Name:"minecraft:redstone_block"}} ~ ~.5 ~ 0.3 0.8 0.3 0.001 2 force
scoreboard players remove @a[scores={laceration=1..}] laceration 1

scoreboard players add @e[tag=mosquito_blood] laceration 1
kill @e[tag=mosquito_blood,scores={laceration=200..}]

execute at @e[tag=mosquito_blood] if entity @a[distance=..1.5,scores={char=64}] run particle heart ~ ~0.5 ~ 0.8 0.9 0.8 0.1 5
execute at @e[tag=mosquito_blood] if entity @a[distance=..1.5,scores={char=64}] run playsound entity.wandering_trader.drink_milk master @a[distance=..15] ~ ~ ~ 1 1.5 1
execute at @e[tag=mosquito_blood] if entity @a[distance=..1.5,scores={char=64}] run playsound entity.bee.hurt master @a[distance=..15] ~ ~ ~ 0.3 0.8 1
execute at @e[tag=mosquito_blood] run effect give @a[distance=..1.5,scores={char=64}] regeneration 2 3
#execute at @e[tag=mosquito_blood] run effect give @a[distance=..1.5,scores={char=64}] speed 2 0
execute at @a[scores={char=64}] run kill @e[distance=..1.5,tag=mosquito_blood]

execute at @a[scores={laceration_counter=1}] positioned ~ ~2.2 ~ unless entity @e[distance=..1,tag=display_laceration_1] run summon armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["display_laceration_1","lacer_display","entities_scarletlady"],CustomName:{text:"X",extra:[{text:" - - -",color:"gray",bold:1b}],color:"dark_red",bold:1b}}
execute at @a[scores={laceration_counter=1}] positioned ~ ~2.2 ~ run tp @e[distance=..1,tag=display_laceration_1] ~ ~ ~
execute as @e[tag=display_laceration_1] at @s positioned ~ ~-2.2 ~ unless entity @a[distance=..1,scores={laceration_counter=1}] run kill @s

execute at @a[scores={laceration_counter=2}] positioned ~ ~2.2 ~ unless entity @e[distance=..1,tag=display_laceration_2] run summon armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["display_laceration_2","lacer_display","entities_scarletlady"],CustomName:{text:"X X",extra:[{text:" - -",color:"gray",bold:1b}],color:"dark_red",bold:1b}}
execute at @a[scores={laceration_counter=2}] positioned ~ ~2.2 ~ run tp @e[distance=..1,tag=display_laceration_2] ~ ~ ~
execute as @e[tag=display_laceration_2] at @s positioned ~ ~-2.2 ~ unless entity @a[distance=..1,scores={laceration_counter=2}] run kill @s

execute at @a[scores={laceration_counter=3}] positioned ~ ~2.2 ~ unless entity @e[distance=..1,tag=display_laceration_3] run summon armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["display_laceration_3","lacer_display","entities_scarletlady"],CustomName:{text:"X X X",extra:[{text:" -",color:"gray",bold:1b}],color:"dark_red",bold:1b}}
execute at @a[scores={laceration_counter=3}] positioned ~ ~2.2 ~ run tp @e[distance=..1,tag=display_laceration_3] ~ ~ ~
execute as @e[tag=display_laceration_3] at @s positioned ~ ~-2.2 ~ unless entity @a[distance=..1,scores={laceration_counter=3}] run kill @s

execute at @a[scores={laceration_immunity=1..}] positioned ~ ~2.2 ~ unless entity @e[distance=..1,tag=display_laceration_4] run summon armor_stand ~ ~ ~ {CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:["display_laceration_4","lacer_display","entities_scarletlady"],CustomName:{text:"BLEED FOR ME",extra:[{text:"",color:"dark_red",bold:1b}],color:"dark_red",bold:1b}}
execute at @a[scores={laceration_immunity=1..}] positioned ~ ~2.2 ~ run tp @e[distance=..1,tag=display_laceration_4] ~ ~ ~
execute as @e[tag=display_laceration_4] at @s positioned ~ ~-2.2 ~ unless entity @a[distance=..1,scores={laceration_immunity=1..}] run kill @s


# mosquito kiss

scoreboard players set @a[scores={char=64,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=64,s1_timer=1,CC_silence=1..}] s1_timer 140

execute at @a[scores={char=64,s1_timer=2,CC_silence=0}] run playsound entity.evoker.cast_spell master @a[distance=..15] ~ ~ ~ 0.3 1.5 1
execute at @a[scores={char=64,s1_timer=2,CC_silence=0}] run playsound entity.bee.hurt master @a[distance=..15] ~ ~ ~ 0.6 1.3 1
execute as @a[scores={char=64,s1_timer=2,CC_silence=0}] at @s positioned ~ ~1.5 ~ run function chars:mosquito_kiss_raycast


execute at @a[tag=mosquito_bite] run particle dust{color:[1.0,0.0,0.0],scale:1.0f} ~ ~1 ~ 0.4 0.5 0.4 0.01 30 normal
execute at @a[tag=mosquito_bite] run particle block{block_state:{Name:"minecraft:redstone_block"}} ~ ~1 ~ 0.4 0.2 0.4 0.01 40 normal

execute as @a[tag=mosquito_bite,scores={HP=..4}] run damage @s 1 generic by @p[scores={char=64}] from @p[scores={char=64}]

execute as @a[tag=mosquito_bite,scores={HP=5..9}] run damage @s 2 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=5..9}] run effect give @a[scores={char=64}] regeneration 3 1

execute as @a[tag=mosquito_bite,scores={HP=10..14}] run damage @s 3 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=10..14}] run effect give @a[scores={char=64}] regeneration 5 1

execute as @a[tag=mosquito_bite,scores={HP=15..19}] run damage @s 4 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=15..19}] run effect give @a[scores={char=64}] regeneration 3 1
execute as @a[tag=mosquito_bite,scores={HP=15..19}] run effect give @a[scores={char=64}] instant_health

execute as @a[tag=mosquito_bite,scores={HP=20..24}] run damage @s 5 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=20..24}] run effect give @a[scores={char=64}] regeneration 5 1
execute as @a[tag=mosquito_bite,scores={HP=20..24}] run effect give @a[scores={char=64}] instant_health

execute as @a[tag=mosquito_bite,scores={HP=25..29}] run damage @s 6 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=25..29}] run effect give @a[scores={char=64}] regeneration 3 1
execute as @a[tag=mosquito_bite,scores={HP=25..29}] run effect give @a[scores={char=64}] instant_health 1 1

execute as @a[tag=mosquito_bite,scores={HP=30..34}] run damage @s 7 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=30..34}] run effect give @a[scores={char=64}] regeneration 5 1
execute as @a[tag=mosquito_bite,scores={HP=30..34}] run effect give @a[scores={char=64}] instant_health 1 1

execute as @a[tag=mosquito_bite,scores={HP=35..39}] run damage @s 8 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=35..39}] run effect give @a[scores={char=64}] regeneration 2 3
execute as @a[tag=mosquito_bite,scores={HP=35..39}] run effect give @a[scores={char=64}] instant_health 1 1

execute as @a[tag=mosquito_bite,scores={HP=40..44}] run damage @s 9 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=40..44}] run effect give @a[scores={char=64}] regeneration 2 3
execute as @a[tag=mosquito_bite,scores={HP=40..44}] run effect give @a[scores={char=64}] instant_health 1 1

execute as @a[tag=mosquito_bite,scores={HP=45..49}] run damage @s 10 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=45..49}] run effect give @a[scores={char=64}] regeneration 2 3
execute as @a[tag=mosquito_bite,scores={HP=45..49}] run effect give @a[scores={char=64}] instant_health 1 1

execute as @a[tag=mosquito_bite,scores={HP=50..54}] run damage @s 11 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=50..54}] run effect give @a[scores={char=64}] regeneration 2 3
execute as @a[tag=mosquito_bite,scores={HP=50..54}] run effect give @a[scores={char=64}] instant_health 1 1

execute as @a[tag=mosquito_bite,scores={HP=55..60}] run damage @s 12 generic by @p[scores={char=64}] from @p[scores={char=64}]
execute as @a[tag=mosquito_bite,scores={HP=55..60}] run effect give @a[scores={char=64}] regeneration 2 3
execute as @a[tag=mosquito_bite,scores={HP=55..60}] run effect give @a[scores={char=64}] instant_health 1 1

tag @a remove mosquito_bite


# kneel

scoreboard players set @a[scores={char=64,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=64,s2_timer=1,CC_silence=1..}] s2_timer 280

execute at @a[scores={char=64,s2_timer=1,CC_silence=0}] run playsound entity.illusioner.cast_spell master @a[distance=..15] ~ ~ ~ 0.5 0.8 1
execute at @a[scores={char=64,s2_timer=2,CC_silence=0}] run playsound entity.bee.hurt master @a[distance=..15] ~ ~ ~ 0.3 2 1
execute at @a[scores={char=64,s2_timer=3,CC_silence=0}] run playsound item.honey_bottle.drink master @a[distance=..15] ~ ~ ~ 1 0.5 1
execute as @a[scores={char=64,s2_timer=2,CC_silence=0}] at @s positioned ~ ~1.3 ~ run function chars:kneel_raycast

execute at @a[tag=mosquito_kneel] run playsound entity.player.hurt_drown master @a[distance=..10] ~ ~ ~ 1 0.2 1
effect give @a[tag=mosquito_kneel] slowness 1 3 true
scoreboard players set @a[tag=mosquito_kneel] kneel 20

tag @a remove mosquito_kneel

execute at @a[scores={kneel=1..}] run particle block{block_state:{Name:"minecraft:redstone_block"}} ~ ~.5 ~ 0.3 0.8 0.3 0.001 10 force
execute as @a[scores={kneel=1..},x_rotation=-90..59] at @s run rotate @s ~ 60
scoreboard players remove @a[scores={kneel=1..}] kneel 1


# scarlet lady

scoreboard players set @a[scores={char=64}] MaxHP 18

scoreboard players set @a[scores={char=64,s0_timer=1,char=64}] spellCD0 20
scoreboard players add @a[scores={char=64,s0_timer=1..,char=64}] s0_timer 1
scoreboard players set @a[scores={char=64,s0_timer=21..,char=64}] s0_timer 0

scoreboard players set @a[scores={char=64,s1_timer=1,char=64}] spellCD1 160
scoreboard players add @a[scores={char=64,s1_timer=1..,char=64}] s1_timer 1
scoreboard players set @a[scores={char=64,s1_timer=161..,char=64}] s1_timer 0

scoreboard players set @a[scores={char=64,s2_timer=1,char=64}] spellCD2 300
scoreboard players add @a[scores={char=64,s2_timer=1..,char=64}] s2_timer 1
scoreboard players set @a[scores={char=64,s2_timer=301..,char=64}] s2_timer 0


execute as @a[scores={char=64,s0_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:0b}]}] run clear @a[scores={char=64}] warped_fungus_on_a_stick[custom_data={s0:1}]
item replace entity @a[scores={char=64,s0_timer=0}] hotbar.0 with warped_fungus_on_a_stick[custom_data={s0:1},minecraft:item_model="minecraft:prismarine_shard",minecraft:custom_name={text:"Throwing Knife",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=64,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=64}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=64,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:redstone",minecraft:custom_name={text:"Mosquito's Kiss",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=64,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=64}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=64,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:beetroot",minecraft:custom_name={text:"Kneel!",color:"dark_aqua",bold:1b}] 1


