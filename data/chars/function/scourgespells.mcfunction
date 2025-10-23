kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:campfire"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_scrap"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_pickaxe"}}]

#to ashes

scoreboard players set @a[scores={char=25,spell_scou_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=25,spell_scou_1_1=1,CC_silence=1..}] spell_scou_1_1 260

scoreboard players set @a[scores={char=25,spell_scou_1_1=1..40,CC_silence=1..}] spellCD1 240
scoreboard players set @a[scores={char=25,spell_scou_1_1=1..40,CC_silence=1..}] spell_scou_1_1 41

effect give @a[scores={char=25,spell_scou_1_1=1,CC_silence=0}] minecraft:slowness 2 3 true
effect give @a[scores={char=25,spell_scou_1_1=1,CC_silence=0}] minecraft:fire_resistance 3 1 true
execute at @a[scores={char=25,spell_scou_1_1=2,CC_silence=0}] run playsound minecraft:entity.blaze.shoot master @a[distance=..20] ~ ~ ~ 1.0 0.5 1.0
execute at @a[scores={char=25,spell_scou_1_1=3,CC_silence=0}] run playsound minecraft:entity.blaze.ambient master @a[distance=..20] ~ ~ ~ 1.0 0.7 1.0

execute at @a[scores={char=25,spell_scou_1_1=1..40,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["firestream"]}
execute at @a[scores={char=25,spell_scou_1_1=1..40}] run summon minecraft:marker ~ ~ ~ {Tags:["firenomore"]}

tp @e[tag=firestream,scores={fire_life=1..2}] @a[scores={char=25},limit=1]
execute as @e[tag=firestream] at @s run tp @s ^ ^ ^1.5

tp @e[tag=firenomore,scores={fire_life=1..2}] @a[scores={char=25},limit=1]
execute as @e[tag=firenomore,scores={fire_life=1..10}] at @s run tp @s ^ ^ ^1.5



execute at @e[tag=firestream,scores={fire_life=2..3}] run particle minecraft:flame ~ ~1.5 ~ 0.1 0.1 0.1 0.001 1 force
execute at @e[tag=firestream,scores={fire_life=4..7}] run particle minecraft:flame ~ ~1.5 ~ 0.3 0.3 0.3 0.01 5 force
execute at @e[tag=firestream,scores={fire_life=7..10}] run particle minecraft:flame ~ ~1.5 ~ 0.7 0.6 0.7 0.01 10 force
execute as @e[tag=firestream] at @s unless block ~ ~1 ~ #minecraft:dash run kill @s

execute at @e[tag=firestream,scores={fire_life=3..}] run fill ~ ~2 ~ ~ ~ ~ minecraft:fire replace #minecraft:dash

execute at @e[tag=firestream] if entity @a[scores={char=25},team=yellow] run scoreboard players set @p[distance=..2,team=purple] scourge_damage 100
execute at @e[tag=firestream] if entity @a[scores={char=25},team=purple] run scoreboard players set @p[distance=..2,team=yellow] scourge_damage 100


#summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["firenomore"],NoGravity:1b,Marker:1b}

execute at @e[tag=firestream] if entity @a[scores={char=25},team=purple] run effect give @a[distance=..2,team=purple] minecraft:fire_resistance 1 0 true
execute at @e[tag=firestream] if entity @a[scores={char=25},team=yellow] run effect give @a[distance=..2,team=yellow] minecraft:fire_resistance 1 0 true

execute at @a[scores={char=25,spell_scou_1_1=55..56}] at @e[tag=firenomore] run fill ~15 ~10 ~15 ~-15 ~-10 ~-15 minecraft:air replace minecraft:fire
execute at @a[scores={char=25,spell_scou_1_1=55..56}] at @e[tag=firenomore] run fill ~15 ~10 ~15 ~-15 ~-10 ~-15 minecraft:air replace minecraft:soul_fire
execute at @a[scores={char=25,spell_scou_1_1=1..51}] run fill ~1 ~3 ~1 ~-1 ~-3 ~-1 minecraft:air replace minecraft:fire
scoreboard players add @e[tag=firestream] fire_life 1
scoreboard players add @e[tag=firenomore] fire_life 1
kill @e[tag=firestream,scores={fire_life=10..}]
execute at @a[scores={char=25,spell_scou_1_1=60..61}] run kill @e[tag=firenomore]
execute at @a[scores={char=25,spell_scou_1_1=54..57}] run function battlegrounds:firerestore

execute at @e[tag=firestream] if entity @a[scores={char=25},team=purple] run effect give @a[distance=..2,team=yellow] minecraft:slowness 2 3
execute at @e[tag=firestream] if entity @a[scores={char=25},team=yellow] run effect give @a[distance=..2,team=purple] minecraft:slowness 2 3

execute at @e[tag=firestream] if entity @a[scores={char=25},team=yellow] run tag @a[distance=..3,scores={fire=-15..},team=yellow] add friendly_fire_scourge
execute at @e[tag=firestream] if entity @a[scores={char=25},team=purple] run tag @a[distance=..3,scores={fire=-15..},team=purple] add friendly_fire_scourge

effect give @a[tag=friendly_fire_scourge] minecraft:fire_resistance 1
tag @a[scores={fire=..-20}] remove friendly_fire_scourge

#dragons descent

scoreboard players set @a[scores={char=25,spell_scou_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=25,spell_scou_2_1=1,CC_silence=1..}] spell_scou_2_1 280

effect give @a[scores={char=25,spell_scou_2_1=1..2,CC_silence=0}] minecraft:levitation 1 20 true
#item replace entity @a[scores={char=25,spell_scou_2_1=1,CC_silence=0}] armor.head with player_head{display:{Name:'{"text":"Head"}'},Enchantments:[{id:"minecraft:projectile_protection",lvl:2s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"max_health",Name:"max_health",Amount:6,Operation:0,UUID:[I;0,998802,0,792568],Slot:"head"},{AttributeName:"knockback_resistance",Name:"knockback_resistance",Amount:100,Operation:0,UUID:[I;-1943387552,1643268210,-1144463574,977006382],Slot:"head"}],SkullOwner:{Id:[I;-1093052481,-2032251941,-1704865060,-830880570],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzg0NTg3NTg4ODg5NmFiNmI2ZTVmMjlkNjZhYzllZjZiNDFmMjI3ZTEyNjg1ZGU0Y2IxMzQ5ZTMwYzBlMzVjOCJ9fX0="}]}}}
scoreboard players set @a[scores={char=25,spell_scou_2_1=1,CC_silence=0}] unstoppable 80

effect clear @a[scores={char=25,CC_grounded=1..}] minecraft:levitation
effect clear @a[scores={char=25,CC_root=1..}] minecraft:levitation
effect clear @a[scores={char=25,CC_stun=1..}] minecraft:levitation

effect clear @a[scores={char=25,spell_scou_2_1=8,CC_silence=0}] minecraft:levitation
execute at @a[scores={char=25,spell_scou_2_1=1..50,CC_silence=0}] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.01 1 force
execute at @a[scores={char=25,spell_scou_2_1=20..50,CC_silence=0}] unless block ~ ~-1 ~ #minecraft:dash run particle minecraft:lava ~ ~ ~ 2 0.2 2 0.01 100 force
execute at @a[scores={char=25,spell_scou_2_1=20..50,CC_silence=0}] unless block ~ ~-1 ~ #minecraft:dash run particle minecraft:block{block_state:{Name:"minecraft:magma_block"}} ~ ~ ~ 2 0.3 2 0.01 100 force
execute at @a[scores={char=25,spell_scou_2_1=20..50,CC_silence=0}] unless block ~ ~-1 ~ #minecraft:dash run particle minecraft:flame ~ ~ ~ 2 0.5 2 0.01 80 force
execute at @a[scores={char=25,spell_scou_2_1=20..50,CC_silence=0}] unless block ~ ~-1 ~ #minecraft:dash run playsound minecraft:entity.lightning_bolt.impact master @a[distance=..10] ~ ~ ~ 1.0 0.5 1.0
execute at @a[scores={char=25,spell_scou_2_1=20..50,CC_silence=0}] unless block ~ ~-1 ~ #minecraft:dash run scoreboard players set @a[scores={char=25,spell_scou_2_1=10..50}] spell_scou_2_1 61

#item replace entity @a[scores={char=25,spell_scou_2_1=62}] armor.head with player_head{display:{Name:'{"text":"Head"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:projectile_protection",lvl:2s}],AttributeModifiers:[{AttributeName:"max_health",Name:"max_health",Amount:6,Operation:0,UUID:[I;0,998802,0,792568],Slot:"head"}],SkullOwner:{Id:[I;-1093052481,-2032251941,-1704865060,-830880570],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzg0NTg3NTg4ODg5NmFiNmI2ZTVmMjlkNjZhYzllZjZiNDFmMjI3ZTEyNjg1ZGU0Y2IxMzQ5ZTMwYzBlMzVjOCJ9fX0="}]}}}
scoreboard players set @a[scores={char=25,spell_scou_2_1=62}] unstoppable 0

execute at @a[scores={char=25,spell_scou_2_1=62,CC_silence=0},team=yellow] run effect give @a[distance=..3,team=purple] minecraft:slowness 1 100
execute at @a[scores={char=25,spell_scou_2_1=62,CC_silence=0},team=purple] run effect give @a[distance=..3,team=yellow] minecraft:slowness 1 100
execute at @a[scores={char=25,spell_scou_2_1=62,CC_silence=0},team=yellow] run effect give @a[distance=..3,team=purple] minecraft:weakness 1 100
execute at @a[scores={char=25,spell_scou_2_1=62,CC_silence=0},team=purple] run effect give @a[distance=..3,team=yellow] minecraft:weakness 1 100
execute at @a[scores={char=25,spell_scou_2_1=62,CC_silence=0},team=purple] run scoreboard players set @a[distance=..3,team=yellow] CC_knockup 20
execute at @a[scores={char=25,spell_scou_2_1=62,CC_silence=0},team=yellow] run scoreboard players set @a[distance=..3,team=purple] CC_knockup 20
execute at @a[scores={char=25,spell_scou_2_1=62,CC_silence=0},team=purple] run scoreboard players set @a[distance=..3,team=yellow] scourge_damage 100
execute at @a[scores={char=25,spell_scou_2_1=62,CC_silence=0},team=yellow] run scoreboard players set @a[distance=..3,team=purple] scourge_damage 100



execute at @a[scores={char=25,spell_scou_2_1=62}] run summon minecraft:armor_stand ~1.5 ~-2 ~ {Invisible:1b,Tags:["magma_visual_1","scourge_magma"],Marker:1b,equipment:{head:{id:"minecraft:magma_block",count:1}}}
execute at @a[scores={char=25,spell_scou_2_1=62}] run summon minecraft:armor_stand ~-1.5 ~-2 ~ {Invisible:1b,Tags:["magma_visual_1","scourge_magma"],Marker:1b,equipment:{head:{id:"minecraft:magma_block",count:1}}}
execute at @a[scores={char=25,spell_scou_2_1=62}] run summon minecraft:armor_stand ~ ~-2 ~1.5 {Invisible:1b,Tags:["magma_visual_1","scourge_magma"],Marker:1b,equipment:{head:{id:"minecraft:magma_block",count:1}}}
execute at @a[scores={char=25,spell_scou_2_1=62}] run summon minecraft:armor_stand ~ ~-2 ~-1.5 {Invisible:1b,Tags:["magma_visual_1","scourge_magma"],Marker:1b,equipment:{head:{id:"minecraft:magma_block",count:1}}}
execute at @a[scores={char=25,spell_scou_2_1=62}] run summon minecraft:armor_stand ~-1 ~-2 ~-1 {Invisible:1b,Tags:["magma_visual_1","scourge_magma"],Marker:1b,equipment:{head:{id:"minecraft:magma_block",count:1}}}
execute at @a[scores={char=25,spell_scou_2_1=62}] run summon minecraft:armor_stand ~1 ~-2 ~1 {Invisible:1b,Tags:["magma_visual_1","scourge_magma"],Marker:1b,equipment:{head:{id:"minecraft:magma_block",count:1}}}
execute at @a[scores={char=25,spell_scou_2_1=62}] run summon minecraft:armor_stand ~-1 ~-2 ~1 {Invisible:1b,Tags:["magma_visual_1","scourge_magma"],Marker:1b,equipment:{head:{id:"minecraft:magma_block",count:1}}}
execute at @a[scores={char=25,spell_scou_2_1=62}] run summon minecraft:armor_stand ~1 ~-2 ~-1 {Invisible:1b,Tags:["magma_visual_1","scourge_magma"],Marker:1b,equipment:{head:{id:"minecraft:magma_block",count:1}}}

execute at @a[scores={char=25,spell_scou_2_1=62}] run summon minecraft:armor_stand ~1.3 ~-2 ~-0.6 {Invisible:1b,Tags:["magma_visual_1","scourge_magma"],Marker:1b,equipment:{head:{id:"minecraft:magma_block",count:1}}}
execute at @a[scores={char=25,spell_scou_2_1=62}] run summon minecraft:armor_stand ~1.3 ~-2 ~0.6 {Invisible:1b,Tags:["magma_visual_1","scourge_magma"],Marker:1b,equipment:{head:{id:"minecraft:magma_block",count:1}}}
execute at @a[scores={char=25,spell_scou_2_1=62}] run summon minecraft:armor_stand ~-1.3 ~-2 ~-0.6 {Invisible:1b,Tags:["magma_visual_1","scourge_magma"],Marker:1b,equipment:{head:{id:"minecraft:magma_block",count:1}}}
execute at @a[scores={char=25,spell_scou_2_1=62}] run summon minecraft:armor_stand ~-1.3 ~-2 ~0.6 {Invisible:1b,Tags:["magma_visual_1","scourge_magma"],Marker:1b,equipment:{head:{id:"minecraft:magma_block",count:1}}}
execute at @a[scores={char=25,spell_scou_2_1=62}] run summon minecraft:armor_stand ~-0.6 ~-2 ~1.3 {Invisible:1b,Tags:["magma_visual_1","scourge_magma"],Marker:1b,equipment:{head:{id:"minecraft:magma_block",count:1}}}
execute at @a[scores={char=25,spell_scou_2_1=62}] run summon minecraft:armor_stand ~0.6 ~-2 ~1.3 {Invisible:1b,Tags:["magma_visual_1","scourge_magma"],Marker:1b,equipment:{head:{id:"minecraft:magma_block",count:1}}}
execute at @a[scores={char=25,spell_scou_2_1=62}] run summon minecraft:armor_stand ~-0.6 ~-2 ~-1.3 {Invisible:1b,Tags:["magma_visual_1","scourge_magma"],Marker:1b,equipment:{head:{id:"minecraft:magma_block",count:1}}}
execute at @a[scores={char=25,spell_scou_2_1=62}] run summon minecraft:armor_stand ~0.6 ~-2 ~-1.3 {Invisible:1b,Tags:["magma_visual_1","scourge_magma"],Marker:1b,equipment:{head:{id:"minecraft:magma_block",count:1}}}


scoreboard players add @e[tag=scourge_magma] scourge_damage 1
execute as @e[tag=scourge_magma,scores={scourge_damage=1}] at @s run tp @s ~ ~ ~ facing entity @p[scores={char=25}]
execute as @e[tag=scourge_magma,scores={scourge_damage=2}] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=scourge_magma,scores={scourge_damage=2..}] at @s run tp @s ^ ^ ^-0.17
execute as @e[tag=magma_visual_1,scores={scourge_damage=1..}] at @s run tp @s ~ ~0.035 ~

kill @e[tag=magma_visual_1,scores={scourge_damage=15..}]






#trial of terror

scoreboard players remove @a[scores={scourge_damage=1..}] scourge_damage 1

execute at @a[scores={universal_hit=1..,char=25},team=yellow] run scoreboard players set @p[distance=..5,team=purple] scourge_damage 100
execute at @a[scores={universal_hit=1..,char=25},team=purple] run scoreboard players set @p[distance=..5,team=yellow] scourge_damage 100

execute at @a[scores={universal_death=1..,scourge_damage=1..}] run scoreboard players set @a[scores={char=25}] passive_scou 1
scoreboard players set @a[scores={universal_death=1..,scourge_damage=1..}] scourge_damage 0

execute at @a[scores={char=25,passive_scou=1..},team=purple] run tag @p[distance=..10,team=yellow] add scourge_fear
execute at @a[scores={char=25,passive_scou=1..},team=yellow] run tag @p[distance=..10,team=purple] add scourge_fear

execute at @a[scores={char=25,passive_scou=1..},team=purple] run scoreboard players set @a[distance=..10,team=yellow] CC_disarm 60
execute at @a[scores={char=25,passive_scou=1..},team=yellow] run scoreboard players set @a[distance=..10,team=purple] CC_disarm 60
execute at @a[scores={char=25,passive_scou=1..}] run playsound minecraft:entity.ender_dragon.growl master @a[distance=..20] ~ ~ ~ 0.7 0.8 1.0
execute at @a[scores={char=25,passive_scou=1..}] run playsound minecraft:entity.ravager.celebrate master @a[distance=..20] ~ ~ ~ 1 0.9 1
execute at @a[scores={char=25,passive_scou=1..}] run particle minecraft:flame ~ ~ ~ 10 1 10 0.01 300 force
execute at @a[scores={char=25,passive_scou=1..}] run particle minecraft:smoke ~ ~ ~ 10 1 10 0.01 500 force

scoreboard players set @a[scores={passive_scou=1..}] passive_scou 0


execute as @a[tag=scourge_fear] at @s run tp @s ~ ~ ~ facing entity @p[distance=0.5..,scores={char=25}]
execute as @a[tag=scourge_fear] at @s run tp @s ~ ~ ~ ~-180 ~
tag @a remove scourge_fear

# scourge

scoreboard players add @a[scores={spell_scou_1=1..}] spell_scou_1_1 1
item replace entity @a[scores={char=25,spell_scou_1_1=280..}] hotbar.1 with minecraft:campfire[minecraft:custom_name={text:"To Ashes",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:flame":1}] 1
scoreboard players set @a[scores={spell_scou_1_1=281..}] spell_scou_1 0
scoreboard players set @a[scores={spell_scou_1_1=281..}] spell_scou_1_1 0
scoreboard players set @a[scores={spell_scou_1_1=1}] spellCD1 280

scoreboard players add @a[scores={spell_scou_2=1..}] spell_scou_2_1 1
item replace entity @a[scores={char=25,spell_scou_2_1=300..}] hotbar.2 with minecraft:netherite_scrap[minecraft:custom_name={text:"Dragon's Descent",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_scou_2_1=301..}] spell_scou_2 0
scoreboard players set @a[scores={spell_scou_2_1=301..}] spell_scou_2_1 0
scoreboard players set @a[scores={spell_scou_2_1=70}] spellCD2 230


execute as @a[scores={char=25}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_pickaxe",Slot:0b}]}] run clear @a[scores={char=25}] minecraft:netherite_pickaxe
item replace entity @a[scores={char=25}] hotbar.0 with minecraft:netherite_pickaxe[minecraft:custom_name={bold:1b,color:"gray",text:"Tail"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}]] 1


execute as @a[scores={char=25,spell_scou_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:campfire",Slot:1b}]}] run clear @a[scores={char=25}] minecraft:campfire
item replace entity @a[scores={char=25,spell_scou_1=0}] hotbar.1 with minecraft:campfire[minecraft:custom_name={text:"To Ashes",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:flame":1}] 1

execute as @a[scores={char=25,spell_scou_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_scrap",Slot:2b}]}] run clear @a[scores={char=25}] minecraft:netherite_scrap
item replace entity @a[scores={char=25,spell_scou_2=0}] hotbar.2 with minecraft:netherite_scrap[minecraft:custom_name={text:"Dragon's Descent",color:"dark_aqua",bold:1b}] 1




