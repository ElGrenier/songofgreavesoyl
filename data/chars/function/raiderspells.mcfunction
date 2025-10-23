kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:string"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_sword"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_sword"}}]



#passive

scoreboard players set @a[scores={char=44,CC_grounded=1..}] passive_raid_timer -60
scoreboard players set @a[scores={char=44,CC_root=1..}] passive_raid_timer -60
scoreboard players set @a[scores={char=44,CC_stun=1..}] passive_raid_timer -60
scoreboard players set @a[scores={char=44,CC_silence=1..}] passive_raid_timer -60

execute as @a[scores={char=44,universal_death=1..}] run kill @e[tag=raider_hook]
execute as @a[scores={char=44,universal_death=1..}] run kill @e[tag=grapple_point]
execute as @a[scores={char=44,CC_grounded=1..}] run kill @e[tag=raider_hook]
execute as @a[scores={char=44,CC_root=1..}] run kill @e[tag=raider_hook]
execute as @a[scores={char=44,CC_stun=1..}] run kill @e[tag=raider_hook]
execute as @a[scores={char=44,CC_silence=1..}] run kill @e[tag=raider_hook]

execute if entity @a[scores={char=44,universal_death=1..}] run kill @e[tag=raider_hook]
execute if entity @e[tag=raider_hook] run scoreboard players set @a grapple_use 0

execute at @a[scores={grapple_use=1..,passive_raid=1..,passive_raid_timer=0..}] run playsound minecraft:item.crossbow.loading_end master @a[distance=..10] ~ ~ ~ 1 1.6 1
execute as @a[scores={grapple_use=1..,passive_raid=1..,passive_raid_timer=0..}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["raider_hook"]}
scoreboard players add @a[scores={char=44,passive_raid_timer=..200}] passive_raid_timer 1
scoreboard players add @a[scores={char=44,passive_raid_timer=200..,passive_raid=..2}] passive_raid 1
scoreboard players set @a[scores={char=44,passive_raid_timer=200..}] passive_raid_timer 0
scoreboard players set @a[scores={char=44,passive_raid=3..,passive_raid_timer=0..}] passive_raid_timer 0

scoreboard players add @e[tag=raider_hook] passive_raid 1
execute at @e[tag=raider_hook] run particle minecraft:falling_dust{block_state:{Name:"minecraft:oak_fence"}} ~ ~ ~ 0 0 0 0 30 force @a
execute as @e[tag=raider_hook,scores={passive_raid=2..21}] at @s rotated as @s positioned ^ ^ ^.5 run particle minecraft:falling_dust{block_state:{Name:"minecraft:oak_fence"}} ~ ~ ~ 0 0 0 0 30 force @a
execute as @e[tag=raider_hook,scores={passive_raid=22..}] at @s rotated as @s positioned ~ ~-.5 ~ run particle minecraft:falling_dust{block_state:{Name:"minecraft:oak_fence"}} ~ ~ ~ 0 0 0 0 30 force @a
execute at @e[tag=raider_hook] run summon minecraft:falling_block ~ ~-.5 ~ {BlockState:{Name:"minecraft:iron_bars",Properties:{north:"true",south:"true",east:"true",west:"true"}},NoGravity:1b,Silent:1b,Time:599,DropItem:0b,HurtEntities:0b,Tags:["grapple_hook_visual"]}
tp @e[tag=raider_hook,scores={passive_raid=1}] @p[scores={char=44}]
execute as @e[tag=raider_hook,scores={passive_raid=1}] positioned as @s run tp @s ~ ~1 ~
execute as @e[tag=raider_hook,scores={passive_raid=2..21}] positioned as @s rotated as @s if block ^ ^ ^1 #minecraft:dash run tp @s ^ ^ ^1
execute as @e[tag=raider_hook,scores={passive_raid=2..21}] positioned as @s rotated as @s unless block ^ ^ ^1 #minecraft:dash run summon minecraft:marker ~ ~ ~ {Tags:["grapple_point"]}
execute as @e[tag=raider_hook,scores={passive_raid=2..21}] positioned as @s rotated as @s unless block ^ ^ ^1 #minecraft:dash run playsound minecraft:block.chain.place master @a[distance=..20] ~ ~ ~ 1 0.6 1
execute as @e[tag=raider_hook,scores={passive_raid=2..21}] positioned as @s rotated as @s unless block ^ ^ ^1 #minecraft:dash run kill @e[tag=grapple_hook_visual]
execute as @e[tag=raider_hook,scores={passive_raid=2..21}] positioned as @s rotated as @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute if entity @e[tag=grapple_point] at @a[scores={char=44}] run playsound minecraft:item.crossbow.loading_start master @a[distance=..10] ~ ~ ~ 1 1.2 1
execute if entity @e[tag=grapple_point] run effect give @a[scores={char=44}] minecraft:levitation 2 2 true
execute if entity @e[tag=grapple_point] as @e[scores={char=44}] at @s run tp @s ~ ~ ~ facing entity @e[tag=grapple_point,limit=1]
execute if entity @e[tag=grapple_point] as @e[scores={char=44}] at @s run tp @s ^ ^ ^1

execute as @a[scores={char=44}] at @s if entity @e[distance=..1.5,tag=grapple_point] run effect clear @a[scores={char=44}] minecraft:resistance
execute as @a[scores={char=44}] at @s if entity @e[distance=..1.5,tag=grapple_point] run effect clear @a[scores={char=44}] minecraft:weakness
execute as @a[scores={char=44}] at @s if entity @e[distance=..1.5,tag=grapple_point] run effect clear @a[scores={char=44}] minecraft:levitation
execute as @a[scores={char=44}] at @s if entity @e[distance=..1.5,tag=grapple_point] run scoreboard players set @a[scores={char=44}] CC_intangible 0
execute as @a[scores={char=44}] at @s if entity @e[distance=..1.5,tag=grapple_point] run kill @e[tag=grapple_point]

kill @e[tag=raider_hook,scores={passive_raid=22..}]


#execute as @e[tag=raider_hook,scores={passive_raid=2..21}] positioned as @s rotated as @s if block ^ ^ ^1 #dash unless block ^ ^ ^2 #dash run tp @a[scores={char=44}] ~ ~ ~
#execute as @e[tag=raider_hook,scores={passive_raid=2..21}] positioned as @s rotated as @s if block ^ ^ ^1 #dash unless block ^ ^ ^2 #dash run kill @s
#execute as @e[tag=raider_hook,scores={passive_raid=22..}] positioned as @s rotated as @s if block ~ ~-1 ~ #dash run tp @s ~ ~-.7 ~
#execute as @e[tag=raider_hook,scores={passive_raid=22..}] positioned as @s rotated as @s unless block ~ ~-1 ~ #dash run tp @a[scores={char=44}] ~ ~ ~
#execute as @e[tag=raider_hook,scores={passive_raid=22..}] positioned as @s rotated as @s unless block ~ ~-1 ~ #dash run kill @s

title @a[scores={char=44,passive_raid=0,passive_raid_timer=0..}] actionbar [{text:"[ ",color:"#523A1E",bold:1b,type:"text"},{text:"- - -",color:"gray",type:"text"},{text:" ]",color:"#523A1E",bold:1b,type:"text"}]
title @a[scores={char=44,passive_raid=1,passive_raid_timer=0..}] actionbar [{text:"[ ",color:"#523A1E",bold:1b,type:"text"},{text:"X",bold:1b,color:"dark_red",type:"text"},{text:" - -",color:"gray",type:"text"},{text:" ]",color:"#523A1E",bold:1b,type:"text"}]
title @a[scores={char=44,passive_raid=2,passive_raid_timer=0..}] actionbar [{text:"[ ",color:"#523A1E",bold:1b,type:"text"},{text:"X",bold:1b,color:"dark_red",type:"text"},{text:" X",bold:1b,color:"dark_red",type:"text"},{text:" -",bold:1b,color:"gray",type:"text"},{text:" ]",color:"#523A1E",bold:1b,type:"text"}]
title @a[scores={char=44,passive_raid=3,passive_raid_timer=0..}] actionbar [{text:"[ ",color:"#523A1E",bold:1b,type:"text"},{text:"X",bold:1b,color:"dark_red",type:"text"},{text:" X",bold:1b,color:"dark_red",type:"text"},{text:" X",bold:1b,color:"dark_red",type:"text"},{text:"",bold:1b,color:"gray",type:"text"},{text:" ]",color:"#523A1E",bold:1b,type:"text"}]
title @a[scores={char=44,passive_raid_timer=..-1}] actionbar [{text:"[ ",color:"#523A1E",bold:1b,type:"text"},{text:"DISABLED",bold:1b,color:"dark_red",type:"text"},{text:"",bold:1b,color:"dark_red",type:"text"},{text:"",bold:1b,color:"dark_red",type:"text"},{text:"",bold:1b,color:"gray",type:"text"},{text:" ]",color:"#523A1E",bold:1b,type:"text"}]
scoreboard players remove @a[scores={grapple_use=1..,passive_raid=1..,passive_raid_timer=0..}] passive_raid 1
scoreboard players set @a grapple_use 00

#constrict

scoreboard players set @a[scores={char=44,spell_raid_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=44,spell_raid_1_1=1,CC_silence=1..}] spell_raid_1_1 200

execute at @a[scores={char=44,spell_raid_1_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,Tags:["bola"]}
execute as @a[scores={char=44,spell_raid_1_1=1,CC_silence=0}] as @e[tag=bola] rotated as @s at @s run tp @s ~ ~ ~ ~-120 ~
execute at @a[scores={char=44,spell_raid_1_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,Tags:["bola"]}
execute as @a[scores={char=44,spell_raid_1_1=1,CC_silence=0}] as @e[tag=bola] rotated as @s at @s run tp @s ~ ~ ~ ~-120 ~
execute at @a[scores={char=44,spell_raid_1_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,Tags:["bola"]}
execute as @a[scores={char=44,spell_raid_1_1=1,CC_silence=0}] as @e[tag=bola] rotated as @s at @s run tp @s ~ ~ ~ ~-120 ~

effect give @a[scores={char=44,spell_raid_1_1=1,CC_silence=0}] minecraft:slowness 1 4
execute if entity @a[scores={char=44,spell_raid_1_1=1..21}] as @e[tag=bola] rotated as @s at @s run tp @s ~ ~ ~ ~-9 ~
execute if entity @a[scores={char=44,spell_raid_1_1=1..21}] as @e[tag=bola] rotated as @s positioned as @a[scores={char=44}] run particle minecraft:crit ^ ^1.5 ^1.5 0.1 0 0.1 0 15 force @a
execute if entity @a[scores={char=44,spell_raid_1_1=1..21}] as @e[tag=bola] rotated as @s at @s run tp @s ~ ~ ~ ~-9 ~
execute if entity @a[scores={char=44,spell_raid_1_1=1..21}] as @e[tag=bola] rotated as @s positioned as @a[scores={char=44}] run particle minecraft:crit ^ ^.1 ^.5 0.1 0 0.1 0 15 force @a
execute as @a[scores={char=44,spell_raid_1_1=1..21,CC_silence=0}] at @s run playsound minecraft:entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ .5 1 .5
execute as @a[scores={char=44,CC_silence=1..}] run kill @e[tag=bola]
execute at @a[scores={char=44,spell_raid_1_1=21}] if entity @e[tag=bola] run summon minecraft:armor_stand ~ ~1.6 ~ {Silent:1b,Marker:1b,Invisible:1b,Tags:["bola2"]}
execute as @a[scores={char=44,spell_raid_1_1=21}] run kill @e[tag=bola]
execute as @a[scores={char=44,spell_raid_1_1=21,CC_silence=0}] at @s run playsound minecraft:item.trident.riptide_3 master @a[distance=..10] ~ ~ ~ .7 1.5 .7
execute at @e[tag=bola2] run particle minecraft:crit ~ ~ ~ 0.5 0.1 0.5 0 30 force @a
tp @e[tag=bola2] @p[scores={char=44,spell_raid_1_1=21}]
execute as @a[scores={char=44,spell_raid_1_1=21}] positioned as @e[tag=bola2] run tp @e[tag=bola2] ~ ~1.6 ~
execute if entity @a[scores={char=44,spell_raid_1_1=22..42}] as @e[tag=bola2] at @s rotated as @s if block ^ ^ ^1 #minecraft:dash run tp ^ ^ ^1

execute if entity @a[scores={char=44,spell_raid_1_1=22..42}] if entity @a[scores={char=44},team=yellow] as @e[tag=bola2] at @s run scoreboard players set @p[distance=..2.5,team=purple] constricted 101
execute if entity @a[scores={char=44,spell_raid_1_1=22..42}] if entity @a[scores={char=44},team=yellow] as @e[tag=bola2] at @s if entity @a[distance=..2.5,team=purple] run kill @s

execute if entity @a[scores={char=44,spell_raid_1_1=22..42}] if entity @a[scores={char=44},team=purple] as @e[tag=bola2] at @s run scoreboard players set @p[distance=..2.5,team=yellow] constricted 101
execute if entity @a[scores={char=44,spell_raid_1_1=22..42}] if entity @a[scores={char=44},team=purple] as @e[tag=bola2] at @s if entity @a[distance=..2.5,team=yellow] run kill @s

scoreboard players set @a[scores={universal_death=1..}] constricted 0
execute if entity @a[scores={char=44,universal_death=1..}] run scoreboard players set @e[scores={constricted=1..}] constricted 0
scoreboard players remove @e[scores={constricted=1..}] constricted 1
execute as @e[scores={constricted=100}] at @s run playsound minecraft:entity.leash_knot.place master @s ~ ~ ~ 1 0.5 1
effect give @e[scores={constricted=100}] minecraft:slowness 2 4
execute as @e[scores={constricted=1..}] at @s run particle minecraft:item{item:"lead"} ~ ~1 ~ 0 .6 0 0 30 normal



execute as @a[scores={char=44}] at @s if entity @e[distance=15..,scores={constricted=1..}] run tag @e[distance=15..,scores={constricted=1..}] add constrict_victim


#execute as @a[scores={char=44}] at @s if entity @e[distance=15..,scores={constricted=1..}] run scoreboard players set @e[distance=15..,scores={constricted=1..}] constricted 1
#execute as @a[scores={char=44}] at @s if entity @e[distance=15..,scores={constricted=1..}] run effect give @a[distance=15..,scores={constricted=1..}] slowness 1 100 true
#execute as @a[scores={char=44}] at @s if entity @e[distance=15..,scores={constricted=1..}] run effect give @a[distance=15..,scores={constricted=1..}] weakness 1 100 true
#execute as @a[scores={char=44}] at @s if entity @e[distance=15..,scores={constricted=1..}] run scoreboard players set @a[distance=15..,scores={constricted=1..}] CC_stun 20

scoreboard players set @a[tag=constrict_victim] constricted 1
scoreboard players set @a[tag=constrict_victim] CC_stun 10




#execute as @a[scores={char=44}] at @s if entity @e[distance=15..,scores={constricted=1..}] at @e[distance=15..,scores={constricted=1..}] run summon firework_rocket ~ ~ ~ {Silent:1b,Owner:[I;0,0,0,0],Life:0,LifeTime:100,ShotAtAngle:1b,Tags:["constrict"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;14075032]},{Type:0,Colors:[I;14075032]}]}}}}
#execute as @a[scores={char=44}] at @s if entity @e[distance=15..,scores={constricted=1..}] run data modify entity @e[tag=constrict,limit=1,sort=nearest] Owner set from entity @a[scores={char=44},limit=1,sort=nearest] UUID
#data merge entity @e[tag=constrict,limit=1,sort=nearest] {Life:100s}

execute as @a[scores={char=44}] at @s if entity @e[distance=15..,scores={constricted=1..}] run effect clear @a[scores={char=44}] minecraft:levitation
execute as @a[scores={char=44}] at @s if entity @e[distance=15..,scores={constricted=1..}] run kill @e[tag=grapple_point]
execute as @a[scores={char=44}] at @s if entity @e[distance=15..,scores={constricted=1..}] run tp @s @e[distance=15..,scores={constricted=1..},limit=1]
#execute as @a[scores={char=44}] at @s if entity @e[distance=15..,scores={constricted=1..}] run damage @p[distance=15..,scores={constricted=1..}] 8 generic by @p[scores={char=44}] from @p[scores={char=44}]

execute if entity @a[tag=constrict_victim] run damage @p[tag=constrict_victim] 8 generic by @p[scores={char=44}] from @p[scores={char=44}]

execute if entity @a[scores={char=44,spell_raid_1_1=22..42}] as @e[tag=bola2] at @s rotated as @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @a[scores={char=44,spell_raid_1_1=42}] run kill @e[tag=bola2]

tag @a remove constrict_victim



#left for dead

effect give @a[scores={char=44,spell_raid_2_1=1}] minecraft:speed 1 3
effect give @a[scores={char=44,spell_raid_2_1=1}] minecraft:weakness 2 100
scoreboard players set @a[scores={char=44,spell_raid_2_1=1}] CC_disarm 40

effect give @a[advancements={chars:l4d=true}] minecraft:wither 2 3
execute as @a[advancements={chars:l4d=true}] at @s run playsound minecraft:entity.bee.sting master @s ~ ~ ~ 1 1 1
execute as @a[advancements={chars:l4d=true}] at @s run playsound minecraft:block.bubble_column.upwards_ambient master @s ~ ~ ~ 1 0 1
execute as @a[advancements={chars:l4d=true}] at @s run particle minecraft:falling_spore_blossom ~ ~1.6 ~ 0.5 0.5 0.5 0.01 100 force @s
scoreboard players set @a[scores={CC_defiled=..60},advancements={chars:l4d=true}] CC_defiled 60
advancement revoke @a[advancements={chars:l4d=true}] only chars:l4d


# raider

scoreboard players add @a[scores={spell_raid_1=1..}] spell_raid_1_1 1
item replace entity @a[scores={char=44,spell_raid_1_1=220..}] hotbar.1 with minecraft:string[minecraft:custom_name={text:"Constrict",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_raid_1_1=221..}] spell_raid_1 0
scoreboard players set @a[scores={spell_raid_1_1=221..}] spell_raid_1_1 0
scoreboard players set @a[scores={spell_raid_1_1=1}] spellCD1 220

scoreboard players add @a[scores={spell_raid_2=1..}] spell_raid_2_1 1
item replace entity @a[scores={char=44,spell_raid_2_1=320..}] hotbar.2 with minecraft:golden_sword[minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Left for Dead"},minecraft:unbreakable={},minecraft:max_damage=1,minecraft:custom_data={raid:1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"}]] 1
scoreboard players set @a[scores={spell_raid_2_1=321..}] spell_raid_2 0
scoreboard players set @a[scores={spell_raid_2_1=321..}] spell_raid_2_1 0
scoreboard players set @a[scores={char=44,spell_raid_2_1=1}] spellCD2 320

execute as @a[scores={char=44}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword",Slot:0b}]}] run clear @a[scores={char=44}] minecraft:wooden_sword
item replace entity @a[scores={char=44}] hotbar.0 with minecraft:wooden_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Rusted Knife"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1
scoreboard players set @a[scores={char=44,weapondrop_raid=1..}] weapondrop_raid 0

execute as @a[scores={char=44,spell_raid_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:string",Slot:1b}]}] run clear @a[scores={char=44}] minecraft:string
item replace entity @a[scores={char=44,spell_raid_1=0}] hotbar.1 with minecraft:string[minecraft:custom_name={text:"Constrict",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=44,spell_raid_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_sword",Slot:2b}]}] run clear @a[scores={char=44}] minecraft:golden_sword
item replace entity @a[scores={char=44,spell_raid_2=0}] hotbar.2 with minecraft:golden_sword[minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Left for Dead"},minecraft:max_damage=1,minecraft:custom_data={raid:1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"}]] 1