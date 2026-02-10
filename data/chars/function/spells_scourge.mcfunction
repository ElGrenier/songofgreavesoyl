kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_pickaxe"}}]

#to ashes

scoreboard players set @a[scores={char=25,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=25,s1_timer=1,CC_silence=1..}] s1_timer 260

scoreboard players set @a[scores={char=25,s1_timer=1..30,CC_silence=1..}] spellCD1 240
scoreboard players set @a[scores={char=25,s1_timer=1..30,CC_silence=1..}] s1_timer 41

#effect give @a[scores={char=25,s1_timer=1,CC_silence=0}] slowness 2 3 true
#attribute @a[scores={char=25,s1_timer=1,CC_silence=0},limit=1] movement_speed base set 0.04
effect give @a[scores={char=25,s1_timer=1,CC_silence=0}] fire_resistance 3 1 true
execute at @a[scores={char=25,s1_timer=2,CC_silence=0}] run playsound entity.ender_dragon.growl master @a[distance=..20] ~ ~ ~ 0.5 0.5 1
execute at @a[scores={char=25,s1_timer=2,CC_silence=0}] run playsound entity.blaze.shoot master @a[distance=..20] ~ ~ ~ 1.0 0.5 1.0
execute at @a[scores={char=25,s1_timer=3,CC_silence=0}] run playsound entity.blaze.ambient master @a[distance=..20] ~ ~ ~ 1.0 0.7 1.0
#attribute @a[scores={char=25,s1_timer=30},limit=1] movement_speed base set 0.1

execute at @a[scores={char=25,s1_timer=1..30,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["firestream","entities_scourge"]}
execute at @a[scores={char=25,s1_timer=1..30}] run summon marker ~ ~ ~ {Tags:["firenomore","entities_scourge"]}

tp @e[tag=firestream,scores={fire_life=1..2}] @a[scores={char=25},limit=1]
execute as @e[tag=firestream,scores={fire_life=2}] at @s run tp @s ~ ~1.5 ~
execute as @e[tag=firestream] at @s run tp @s ^ ^ ^1.5

tp @e[tag=firenomore,scores={fire_life=1..2}] @a[scores={char=25},limit=1]
execute as @e[tag=firenomore,scores={fire_life=2}] at @s run tp @s ~ ~1.5 ~
execute as @e[tag=firenomore,scores={fire_life=1..10}] at @s run tp @s ^ ^ ^1.5



execute at @e[tag=firestream,scores={fire_life=1..3}] run particle flame ~ ~ ~ 0.1 0.1 0.1 0.001 1 force
execute at @e[tag=firestream,scores={fire_life=4..7}] run particle flame ~ ~ ~ 0.3 0.3 0.3 0.01 5 force
execute at @e[tag=firestream,scores={fire_life=7..10}] run particle flame ~ ~ ~ 0.7 0.6 0.7 0.01 10 force
execute as @e[tag=firestream] at @s unless block ~ ~1 ~ #minecraft:dash run kill @s

execute at @e[tag=firestream,scores={fire_life=3..}] run fill ~ ~2 ~ ~ ~-1 ~ fire replace #minecraft:dash

execute at @e[tag=firestream] if entity @a[scores={char=25}] run execute as @a[distance=..2] unless score @s Team = @p[scores={char=25}] Team run scoreboard players set @s scourge_damage 100


execute at @a[scores={char=25,s1_timer=41..42}] run kill @e[tag=firestream] 
execute at @a[scores={char=25,s1_timer=41..42}] at @e[tag=firenomore] run fill ~15 ~10 ~15 ~-15 ~-10 ~-15 air replace fire
execute at @a[scores={char=25,s1_timer=41..42}] at @e[tag=firenomore] run fill ~15 ~10 ~15 ~-15 ~-10 ~-15 air replace soul_fire
execute at @a[scores={char=25,s1_timer=1..51}] run fill ~1 ~3 ~1 ~-1 ~-3 ~-1 minecraft:air replace minecraft:fire
scoreboard players add @e[tag=firestream] fire_life 1
scoreboard players add @e[tag=firenomore] fire_life 1
kill @e[tag=firestream,scores={fire_life=10..}]
execute at @a[scores={char=25,s1_timer=60..61}] run kill @e[tag=firenomore]
execute at @a[scores={char=25,s1_timer=55}] run function battlegrounds:firerestore

execute at @e[tag=firestream] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=25}] Team run effect give @s slowness 2 3

execute at @e[tag=firestream] as @a[distance=..3,scores={fire=-15..}] if score @s Team = @p[scores={char=25}] Team run tag @s add friendly_fire_scourge

effect give @a[tag=friendly_fire_scourge] minecraft:fire_resistance 1
tag @a[scores={fire=..-20}] remove friendly_fire_scourge



#dragons descent
clear @a[scores={char=25,s2_timer=1,CC_silence=0}] *[custom_data={s2:1}]

scoreboard players set @a[scores={char=25,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=25,s2_timer=1,CC_silence=1..}] s2_timer 280

effect give @a[scores={char=25,s2_timer=1..2,CC_silence=0}] minecraft:levitation 1 20 true
#item replace entity @a[scores={char=25,s2_timer=1,CC_silence=0}] armor.head with player_head{display:{Name:'{"text":"Head"}'},Enchantments:[{id:"minecraft:projectile_protection",lvl:2s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"max_health",Name:"max_health",Amount:6,Operation:0,UUID:[I;0,998802,0,792568],Slot:"head"},{AttributeName:"knockback_resistance",Name:"knockback_resistance",Amount:100,Operation:0,UUID:[I;-1943387552,1643268210,-1144463574,977006382],Slot:"head"}],SkullOwner:{Id:[I;-1093052481,-2032251941,-1704865060,-830880570],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzg0NTg3NTg4ODg5NmFiNmI2ZTVmMjlkNjZhYzllZjZiNDFmMjI3ZTEyNjg1ZGU0Y2IxMzQ5ZTMwYzBlMzVjOCJ9fX0="}]}}}
scoreboard players set @a[scores={char=25,s2_timer=1,CC_silence=0}] unstoppable 80

effect clear @a[scores={char=25,CC_grounded=1..}] levitation
effect clear @a[scores={char=25,CC_root=1..}] levitation
effect clear @a[scores={char=25,CC_stun=1..}] levitation

effect clear @a[scores={char=25,s2_timer=8,CC_silence=0}] levitation
execute at @a[scores={char=25,s2_timer=1,CC_silence=0}] run playsound entity.ender_dragon.growl master @a[distance=..15] ~ ~ ~ 0.5 0.8 1
execute at @a[scores={char=25,s2_timer=2,CC_silence=0}] run playsound entity.ender_dragon.flap master @a[distance=..15] ~ ~ ~ 1 .8 1
execute at @a[scores={char=25,s2_timer=15,CC_silence=0}] run playsound entity.ender_dragon.flap master @a[distance=..15] ~ ~ ~ 1 .8 1
execute at @a[scores={char=25,s2_timer=1..50,CC_silence=0}] run particle flame ~ ~1 ~ 0.5 0.5 0.5 0.01 1 force
execute at @a[scores={char=25,s2_timer=20..50,CC_silence=0}] unless block ~ ~-0.5 ~ #minecraft:dash run tag @p[scores={char=25}] add scourge_hit_the_ground

#item replace entity @a[scores={char=25,s2_timer=62}] armor.head with player_head{display:{Name:'{"text":"Head"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:projectile_protection",lvl:2s}],AttributeModifiers:[{AttributeName:"max_health",Name:"max_health",Amount:6,Operation:0,UUID:[I;0,998802,0,792568],Slot:"head"}],SkullOwner:{Id:[I;-1093052481,-2032251941,-1704865060,-830880570],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzg0NTg3NTg4ODg5NmFiNmI2ZTVmMjlkNjZhYzllZjZiNDFmMjI3ZTEyNjg1ZGU0Y2IxMzQ5ZTMwYzBlMzVjOCJ9fX0="}]}}}
scoreboard players set @a[scores={char=25,s2_timer=62}] unstoppable 0

execute at @a[scores={char=25,s2_timer=62,CC_silence=0}] run execute as @e[distance=..3,tag=valid_spell_target] unless score @s Team = @p[scores={char=25}] Team run scoreboard players set @s CC_knockup 20
execute at @a[scores={char=25,s2_timer=62,CC_silence=0}] run execute as @a[distance=..3] unless score @s Team = @p[scores={char=25}] Team run scoreboard players set @s scourge_damage 100

execute at @a[scores={char=25},tag=scourge_hit_the_ground] run particle lava ~ ~ ~ 2 0.2 2 0.01 100 force
execute at @a[scores={char=25},tag=scourge_hit_the_ground] run particle block{block_state:{Name:"minecraft:magma_block"}} ~ ~ ~ 1.5 0.3 1.5 0.01 100 force
execute at @a[scores={char=25},tag=scourge_hit_the_ground] run particle flame ~ ~ ~ 1.5 0.5 1.5 0.01 80 force
execute at @a[scores={char=25},tag=scourge_hit_the_ground] run playsound entity.lightning_bolt.impact master @a[distance=..10] ~ ~ ~ 1.0 0.5 1.0
execute at @a[scores={char=25},tag=scourge_hit_the_ground] run scoreboard players set @a[scores={char=25,s2_timer=10..50}] s2_timer 61

execute at @a[scores={char=25},tag=scourge_hit_the_ground] run summon block_display ~1.5 ~ ~ {teleport_duration:1,Tags:["magma_visual_1","scourge_magma","entities_scourge"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=25},tag=scourge_hit_the_ground] run summon block_display ~-1.5 ~ ~ {teleport_duration:1,Tags:["magma_visual_1","scourge_magma","entities_scourge"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=25},tag=scourge_hit_the_ground] run summon block_display ~ ~ ~1.5 {teleport_duration:1,Tags:["magma_visual_1","scourge_magma","entities_scourge"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=25},tag=scourge_hit_the_ground] run summon block_display ~ ~ ~-1.5 {teleport_duration:1,Tags:["magma_visual_1","scourge_magma","entities_scourge"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=25},tag=scourge_hit_the_ground] run summon block_display ~-1 ~ ~-1 {teleport_duration:1,Tags:["magma_visual_1","scourge_magma","entities_scourge"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=25},tag=scourge_hit_the_ground] run summon block_display ~1 ~ ~1 {teleport_duration:1,Tags:["magma_visual_1","scourge_magma","entities_scourge"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=25},tag=scourge_hit_the_ground] run summon block_display ~-1 ~ ~1 {teleport_duration:1,Tags:["magma_visual_1","scourge_magma","entities_scourge"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=25},tag=scourge_hit_the_ground] run summon block_display ~1 ~ ~-1 {teleport_duration:1,Tags:["magma_visual_1","scourge_magma","entities_scourge"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}

execute at @a[scores={char=25},tag=scourge_hit_the_ground] run summon block_display ~1.3 ~ ~-0.6 {teleport_duration:1,Tags:["magma_visual_1","scourge_magma","entities_scourge"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=25},tag=scourge_hit_the_ground] run summon block_display ~1.3 ~ ~0.6 {teleport_duration:1,Tags:["magma_visual_1","scourge_magma","entities_scourge"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=25},tag=scourge_hit_the_ground] run summon block_display ~-1.3 ~ ~-0.6 {teleport_duration:1,Tags:["magma_visual_1","scourge_magma","entities_scourge"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=25},tag=scourge_hit_the_ground] run summon block_display ~-1.3 ~ ~0.6 {teleport_duration:1,Tags:["magma_visual_1","scourge_magma","entities_scourge"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=25},tag=scourge_hit_the_ground] run summon block_display ~-0.6 ~ ~1.3 {teleport_duration:1,Tags:["magma_visual_1","scourge_magma","entities_scourge"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=25},tag=scourge_hit_the_ground] run summon block_display ~0.6 ~ ~1.3 {teleport_duration:1,Tags:["magma_visual_1","scourge_magma","entities_scourge"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=25},tag=scourge_hit_the_ground] run summon block_display ~-0.6 ~ ~-1.3 {teleport_duration:1,Tags:["magma_visual_1","scourge_magma","entities_scourge"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=25},tag=scourge_hit_the_ground] run summon block_display ~0.6 ~ ~-1.3 {teleport_duration:1,Tags:["magma_visual_1","scourge_magma","entities_scourge"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}

tag @a remove scourge_hit_the_ground

#{teleport_duration:1,Tags:["magma_visual_1","scourge_magma","entities_scourge"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:magma_block"}}

scoreboard players add @e[tag=scourge_magma] scourge_damage 1
execute as @e[tag=scourge_magma,scores={scourge_damage=1}] at @s run tp @s ~ ~ ~ facing entity @p[scores={char=25}]
execute as @e[tag=scourge_magma,scores={scourge_damage=2}] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=scourge_magma,scores={scourge_damage=2..}] at @s run tp @s ^ ^ ^-0.17
execute as @e[tag=magma_visual_1,scores={scourge_damage=1..}] at @s run tp @s ~ ~0.02 ~

kill @e[tag=magma_visual_1,scores={scourge_damage=15..}]


#trial of terror

scoreboard players remove @a[scores={scourge_damage=1..}] scourge_damage 1

#advancement update
scoreboard players set @a[advancements={chars:scourge_fear_apply=true}] scourge_damage 100
advancement revoke @a[advancements={chars:scourge_fear_apply=true}] only chars:scourge_fear_apply

execute at @a[scores={universal_death=1..,scourge_damage=1..}] run scoreboard players set @a[scores={char=25}] passive_scou 1
scoreboard players set @a[scores={universal_death=1..,scourge_damage=1..}] scourge_damage 0

execute at @a[scores={char=25,passive_scou=1..}] run execute as @a[distance=..10] unless score @s Team = @p[scores={char=25}] Team run tag @s add scourge_fear

execute at @a[scores={char=25,passive_scou=1..}] run execute as @a[distance=..10] unless score @s Team = @p[scores={char=25}] Team run scoreboard players set @s CC_disarm 40
execute at @a[scores={char=25,passive_scou=1..}] run playsound minecraft:entity.ender_dragon.growl master @a[distance=..20] ~ ~ ~ 0.7 0.8 1.0
execute at @a[scores={char=25,passive_scou=1..}] run playsound minecraft:entity.ravager.celebrate master @a[distance=..20] ~ ~ ~ 1 0.9 1
execute at @a[scores={char=25,passive_scou=1..}] run particle minecraft:flame ~ ~ ~ 10 1 10 0.01 300 force
execute at @a[scores={char=25,passive_scou=1..}] run particle minecraft:smoke ~ ~ ~ 10 1 10 0.01 500 force

scoreboard players set @a[scores={passive_scou=1..}] passive_scou 0


execute as @a[tag=scourge_fear] at @s run tp @s ~ ~ ~ facing entity @p[distance=0.5..,scores={char=25}]
execute as @a[tag=scourge_fear] at @s run tp @s ~ ~ ~ ~-180 ~
tag @a remove scourge_fear

# scourge

scoreboard players set @a[scores={s1_timer=1,char=25}] spellCD1 280
scoreboard players add @a[scores={s1_timer=1..,char=25}] s1_timer 1
scoreboard players set @a[scores={s1_timer=281..,char=25}] s1_timer 0

scoreboard players set @a[scores={s2_timer=70,char=25}] spellCD2 230
scoreboard players add @a[scores={s2_timer=1..,char=25}] s2_timer 1
scoreboard players set @a[scores={s2_timer=301..,char=25}] s2_timer 0


execute as @a[scores={char=25}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_pickaxe",Slot:0b}]}] run clear @a[scores={char=25}] netherite_pickaxe
item replace entity @a[scores={char=25}] hotbar.0 with minecraft:netherite_pickaxe[minecraft:custom_name={bold:1b,color:"gray",text:"Tail"},custom_data={scourges_dong:1},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1

execute as @a[scores={char=25,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=25}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=25,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:campfire",minecraft:custom_name={text:"To Ashes",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=25,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=25}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=25,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:netherite_scrap",minecraft:custom_name={text:"Dragon's Descent",color:"dark_aqua",bold:1b}] 1




