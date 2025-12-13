kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:magenta_stained_glass_pane"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:amethyst_cluster"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_hoe"}}]



scoreboard players set @a[scores={universal_death=1..}] shard_petrify 0

# pillars


execute as @a[scores={char=15}] run title @s[scores={char=15}] actionbar [{text:"[ ",color:"dark_purple",bold:1b,type:"text"},{text:"Clusters: ",color:"light_purple",bold:0b,type:"text"},{score:{name:"@s",objective:"shard_fragments"},color:"light_purple",bold:0b,type:"score"},{text:"/",color:"dark_purple",bold:1b,type:"text"},{text:"3",color:"light_purple",bold:0b,type:"text"},{text:" ]",color:"dark_purple",bold:1b,type:"text"}]


scoreboard players add @a[scores={char=15,shard_fragments_cd=..160,shard_fragments=..2}] shard_fragments_cd 1
scoreboard players add @a[scores={char=15,shard_fragments_cd=160,shard_fragments=..2}] shard_fragments 1
scoreboard players set @a[scores={char=15,shard_fragments_cd=160..}] shard_fragments_cd 0
scoreboard players set @a[scores={char=15,shard_fragments=3..}] shard_fragments_cd 0

execute at @a[scores={char=15,s0_timer=1,CC_silence=0,shard_fragments=0}] run playsound block.amethyst_block.break master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=15,s0_timer=1,CC_silence=0,shard_fragments=0}] run playsound block.lever.click master @a[distance=..10] ~ ~ ~ 1 2 1

scoreboard players set @a[scores={char=15,CC_silence=1..}] s0_timer 0

execute at @a[scores={char=15,s0_timer=1,CC_silence=0,shard_fragments=1..}] run playsound entity.snowball.throw master @a[distance=..10] ~ ~ ~ 0.5 0.8 1
execute at @a[scores={char=15,s0_timer=1,CC_silence=0,shard_fragments=1..}] run playsound block.amethyst_block.break master @a[distance=..10] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=15,s0_timer=1,CC_silence=0,shard_fragments=1..}] run summon item_display ~ ~1 ~ {teleport_duration:1,item:{id:"minecraft:amethyst_cluster",count:1},Tags:["pillar_grenade","projectile","entities_shard"]}
scoreboard players operation @e[tag=projectile,tag=pillar_grenade] Team = @p[scores={char=15}] Team
tp @e[tag=pillar_grenade,limit=1,scores={s0_timer=1}] @a[scores={char=15},limit=1]
execute at @a[scores={char=15,s0_timer=2,CC_silence=0}] as @e[tag=pillar_grenade,limit=1] at @s run tp @s ~ ~1 ~ 

scoreboard players add @e[tag=pillar_grenade] s0_timer 1
scoreboard players add @a[scores={char=15,s0_timer=1..}] s0_timer 1
scoreboard players remove @a[scores={char=15,s0_timer=2,shard_fragments=1..}] shard_fragments 1

execute as @e[tag=pillar_grenade,scores={s0_timer=1..14}] at @s run tp @s ^ ^ ^0.8
execute as @e[tag=pillar_grenade,scores={s0_timer=15..24}] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=pillar_grenade,scores={s0_timer=15..24}] at @s run tp @s ~ ~-0.3 ~
execute as @e[tag=pillar_grenade,scores={s0_timer=25..}] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=pillar_grenade,scores={s0_timer=25..}] at @s run tp @s ~ ~-0.5 ~
execute as @e[tag=pillar_grenade,scores={s0_timer=40..}] at @s run tp @s ~ ~-0.6 ~

execute at @e[tag=pillar_grenade] run particle block{block_state:{Name:"minecraft:amethyst_block"}} ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal
execute at @e[tag=pillar_grenade] run particle reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 1 normal

execute as @e[tag=pillar_grenade] at @s unless block ^ ^1 ^1 #minecraft:dash run summon zombie ~ ~1 ~ {Silent:1b,NoAI:1b,Health:10.0f,Tags:["pillar","entities_shard"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:19980,show_particles:0b}],equipment:{head:{id:"minecraft:magenta_stained_glass",count:1}},attributes:[{id:"minecraft:max_health",base:10.0d},{id:"minecraft:attack_damage",base:0.0d}]}
execute as @e[tag=pillar_grenade] at @s unless block ^ ^1 ^1 #minecraft:dash run scoreboard players add @e[tag=pillar] PillarAge 1
execute as @e[tag=pillar_grenade] at @s unless block ^ ^1 ^1 #minecraft:dash run playsound entity.zombie.infect master @a[distance=..12] ~ ~ ~ 0.5 0.6 1
execute as @e[tag=pillar_grenade] at @s unless block ^ ^1 ^1 #minecraft:dash run playsound block.amethyst_block.place master @a[distance=..12] ~ ~ ~ 1 0.6 1
execute as @e[tag=pillar_grenade] at @s unless block ^ ^1 ^1 #minecraft:dash run particle dust{color:[1.0,0.33,1.0],scale:1} ~ ~0.5 ~ 0.8 1 0.8 0.1 100
execute as @e[tag=pillar_grenade] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s

scoreboard players set @a[scores={char=15,s0_timer=20..}] s0_timer 0

execute as @e[tag=pillar] at @s if block ~ ~0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=pillar] at @s unless block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~0.1 ~
execute as @e[tag=pillar] at @s unless block ~ ~1 ~ #minecraft:dash run kill @s
rotate @e[tag=pillar,scores={PillarAge=1},limit=1] facing entity @e[tag=pillar,scores={PillarAge=2},limit=1]
rotate @e[tag=pillar,scores={PillarAge=2},limit=1] facing entity @e[tag=pillar,scores={PillarAge=1},limit=1]
tp @e[scores={PillarAge=3..}] ~ ~-100 ~
kill @e[scores={PillarAge=3..}]
execute at @e[tag=pillar,scores={PillarAge=1}] run tp @e[distance=30..,tag=pillar,scores={PillarAge=2}] ~ ~-100 ~
execute at @e[tag=pillar,scores={PillarAge=1}] run kill @e[distance=30..,tag=pillar,scores={PillarAge=2}]


execute at @e[tag=pillar] unless entity @e[distance=..1.3,tag=pillar_visual_1] run summon block_display ~ ~1.1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.4f,-0.3f],scale:[0.6f,0.8f,0.6f]},block_state:{Name:"minecraft:amethyst_block"},Tags:["pillar_visual_1","pillar_visuals","entities_shard"]}
execute at @e[tag=pillar] unless entity @e[distance=..0.8,tag=pillar_visual_2] run summon block_display ~ ~0.5 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.35f,-0.35f],scale:[0.7f,0.7f,0.7f]},block_state:{Name:"minecraft:amethyst_block"},Tags:["pillar_visual_2","pillar_visuals","entities_shard"]}
execute at @e[tag=pillar] run tp @e[distance=..1.3,tag=pillar_visual_1,limit=1] ~ ~1.1 ~
execute at @e[tag=pillar] run tp @e[distance=..0.8,tag=pillar_visual_2,limit=1] ~ ~0.5 ~
execute as @e[tag=pillar_visuals] at @s unless entity @e[tag=pillar,distance=..1.3] run kill @s

execute at @e[tag=pillar] run particle portal ~ ~0.5 ~ 0.4 0.5 0.4 0 4 normal
execute at @e[tag=pillar] run particle reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 35 normal

execute as @e[tag=pillar] at @s if entity @a[scores={char=15},distance=..6] run effect give @s resistance 1 1
execute as @e[tag=pillar] at @s if entity @a[scores={char=15},distance=..6] run effect give @a[scores={char=15},distance=..6] resistance 1 1

effect clear @e[tag=pillar] glowing
effect give @e[tag=pillar] invisibility 999 1 true

# gate

scoreboard players set @a[scores={char=15,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=15,s1_timer=1,CC_silence=1..}] s1_timer 300

execute at @a[scores={char=15,s1_timer=1}] unless entity @e[tag=pillar,scores={PillarAge=2}] run scoreboard players set @a[scores={char=15}] spellCD1 20
execute at @a[scores={char=15,s1_timer=1}] unless entity @e[tag=pillar,scores={PillarAge=2}] run scoreboard players set @a[scores={char=15}] s1_timer 300
execute at @a[scores={char=15,s1_timer=1}] unless entity @e[tag=pillar,scores={PillarAge=1}] run scoreboard players set @a[scores={char=15}] spellCD1 20
execute at @a[scores={char=15,s1_timer=1}] unless entity @e[tag=pillar,scores={PillarAge=1}] run scoreboard players set @a[scores={char=15}] s1_timer 300

scoreboard players set @a[scores={char=15,s1_timer=1..100,CC_silence=1..}] spellCD1 200
scoreboard players set @a[scores={char=15,s1_timer=1..100,CC_silence=1..}] s1_timer 101

execute at @a[scores={char=15,s1_timer=1..100,CC_silence=0}] at @e[scores={PillarAge=1}] if entity @e[scores={PillarAge=2}] run summon marker ~ ~1.5 ~ {Tags:["gate1","shard_gate","entities_shard"]}
execute at @a[scores={char=15,s1_timer=1..100,CC_silence=0}] at @e[scores={PillarAge=2}] if entity @e[scores={PillarAge=1}] run summon marker ~ ~1.5 ~ {Tags:["gate2","shard_gate","entities_shard"]}

execute at @a[scores={char=15,s1_timer=101}] run kill @e[tag=shard_gate]

execute as @e[tag=gate1] at @s run rotate @s facing entity @e[tag=pillar,scores={PillarAge=2},limit=1] eyes 
execute as @e[tag=gate2] at @s run rotate @s facing entity @e[tag=pillar,scores={PillarAge=1},limit=1] eyes
execute at @a[scores={char=15,s1_timer=1..100}] as @e[tag=shard_gate] at @s run tp @s ^ ^ ^1

execute at @e[scores={PillarAge=1}] run kill @e[distance=..2,tag=gate2]
execute at @e[scores={PillarAge=2}] run kill @e[distance=..2,tag=gate1]

execute as @e[scores={PillarAge=2}] unless entity @e[scores={PillarAge=1}] run scoreboard players set @s PillarAge 1

execute at @e[tag=shard_gate] run playsound minecraft:block.amethyst_block.resonate master @a[distance=..10] ~ ~ ~ 0.1 2 1
execute at @e[tag=shard_gate] run particle reverse_portal ~ ~ ~ 1 1 1 0 1 normal
execute at @e[tag=shard_gate] run particle dust{color:[1.0,0.33,1.0],scale:1} ~ ~ ~ 0.2 0.2 0.2 0 3 normal
scoreboard players add @e[tag=shard_gate] gate_life 1
kill @e[scores={gate_life=60..}]

execute at @a[scores={char=15,CC_silence=1..}] run kill @e[tag=shard_gate]

execute unless entity @e[scores={PillarAge=1}] run kill @e[tag=gate2]
execute unless entity @e[scores={PillarAge=2}] run kill @e[tag=gate1]

execute at @e[tag=shard_gate] positioned ~-0.75 ~-0.75 ~-0.75 as @a[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=15}] Team unless entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run effect give @s poison 1 10
execute at @e[tag=shard_gate] positioned ~-0.75 ~-0.75 ~-0.75 as @a[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=15}] Team run effect give @s slowness 1 5
execute at @e[tag=shard_gate] positioned ~-0.75 ~-0.75 ~-0.75 as @a[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=15}] Team run scoreboard players set @s CC_grounded 10

# Crystalize

scoreboard players set @a[scores={char=15,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=15,s2_timer=1,CC_silence=1..}] s2_timer 340


execute at @a[scores={char=15,s2_timer=1,CC_silence=0}] run playsound block.ancient_debris.break master @a[distance=..12] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=15,s2_timer=1,CC_silence=0}] run playsound entity.zombie.infect master @a[distance=..12] ~ ~ ~ 1 1.6 1
execute at @a[scores={char=15,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["shard_acid","projectile","entities_shard"]}
scoreboard players operation @e[tag=projectile,tag=shard_acid] Team = @p[scores={char=15}] Team
tp @e[tag=shard_acid,limit=1] @a[scores={char=15,s2_timer=1},limit=1]
execute at @a[scores={char=15,s2_timer=1,CC_silence=0}] as @e[tag=shard_acid,limit=1] at @s run tp @s ~ ~1.2 ~ 

execute as @e[tag=shard_acid] at @s positioned ~ ~ ~ unless block ^ ^ ^0.5 #dash run kill @s
execute as @e[tag=shard_acid] at @s positioned ~ ~ ~ unless block ~ ~ ~ #dash run kill @s
execute as @e[tag=shard_acid] at @s run tp @s ^ ^ ^0.6
execute at @e[tag=shard_acid] run particle reverse_portal ~ ~ ~ 1 1 1 0 30 normal
execute at @e[tag=shard_acid] run particle dragon_breath ~ ~ ~ 0.4 0.4 0.4 0.03 3 normal
execute at @e[tag=shard_acid] run particle dust{color:[1.0,0.33,1.0],scale:1.0f} ~ ~1.2 ~ 0.5 0.5 0.5 0 10
execute at @e[tag=shard_acid] run playsound block.lava.extinguish master @a[distance=..6] ~ ~ ~ 0.1 0.1 1
execute at @e[tag=shard_acid] run playsound block.amethyst_block.resonate master @a[distance=..6] ~ ~ ~ 0.2 2 1

scoreboard players set @a[scores={shard_petrify=2..}] CC_silence 2

execute at @e[tag=shard_acid] positioned ~-0.75 ~-0.75 ~-0.75 as @a[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=15}] Team run scoreboard players set @s shard_petrify 80

execute at @a[scores={char=15,s2_timer=30..}] run kill @e[tag=shard_acid]
#execute if entity @e[tag=containment_cube] run kill @e[tag=shard_acid]

scoreboard players remove @a[scores={shard_petrify=1..}] shard_petrify 1
execute at @a[scores={shard_petrify=5..}] unless entity @e[tag=containment_cube,distance=..1] align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["containment_cube","entities_shard"]}
execute at @a[scores={shard_petrify=4..}] run particle dragon_breath ~ ~1 ~ 0.3 0.5 0.3 0.01 2 normal
execute at @a[scores={shard_petrify=4..}] at @e[tag=containment_cube,distance=..1] run fill ~ ~1 ~ ~ ~-1 ~ magenta_stained_glass replace #minecraft:dash
scoreboard players set @a[scores={shard_petrify=3..}] CC_crystalize 3
scoreboard players set @a[scores={shard_petrify=3..}] CC_intangible 3
#effect give @a[scores={shard_petrify=20..}] resistance 1 100 true
execute at @e[tag=containment_cube] run tp @p[distance=0.1..1,scores={shard_petrify=3..}] ~ ~ ~
execute at @a[scores={shard_petrify=1..2}] at @e[tag=containment_cube] run fill ~1 ~2 ~1 ~-1 ~-1 ~-1 air replace magenta_stained_glass

execute as @e[scores={shard_petrify=3..}] run attribute @s jump_strength base set 0
execute as @e[scores={shard_petrify=1..2}] run attribute @s jump_strength base set 0.41

execute as @e[scores={shard_petrify=3..}] run attribute @s movement_speed base set 0
execute as @e[scores={shard_petrify=1..2}] run attribute @s movement_speed base set 0.1

execute unless entity @p[scores={shard_petrify=1..}] run kill @e[tag=containment_cube]
execute at @p[scores={shard_petrify=1}] run function battlegrounds:lightrestore

# shard

scoreboard players set @a[scores={char=15}] MaxHP 16

scoreboard players set @a[scores={s1_timer=1,char=15}] spellCD1 320
scoreboard players add @a[scores={s1_timer=1..,char=15}] s1_timer 1
scoreboard players set @a[scores={s1_timer=321..,char=15}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=15}] spellCD2 360
scoreboard players add @a[scores={s2_timer=1..,char=15}] s2_timer 1
scoreboard players set @a[scores={s2_timer=361..,char=15}] s2_timer 0

execute as @a[scores={char=15,CC_disarm=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:0b}]}] run clear @a[scores={char=15}] warped_fungus_on_a_stick[minecraft:custom_data={s0:1}]
item replace entity @a[scores={char=15,CC_disarm=0}] hotbar.0 with warped_fungus_on_a_stick[custom_data={s0:1},minecraft:item_model="minecraft:stone_hoe",minecraft:custom_name={bold:1b,color:"gray",text:"Crystal Shard"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:unbreaking":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=15,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=15}] carrot_on_a_stick
item replace entity @a[scores={char=15,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:magenta_stained_glass_pane",minecraft:custom_name={text:"Gate of Shivers",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=15,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=15}] warped_fungus_on_a_stick
item replace entity @a[scores={char=15,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:amethyst_cluster",minecraft:custom_name={text:"Crystalize",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1