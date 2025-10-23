kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:black_candle"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:conduit"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_helmet"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_sword"}}]

#the shape in the shadows

scoreboard players add @a[scores={char=33}] outofcombat 1
scoreboard players set @a[scores={char=33,outofcombat=100..}] outofcombat 80
effect clear @a[scores={stealth=1..}] minecraft:glowing
execute at @a[scores={char=33,outofcombat=80..110},team=yellow] unless entity @e[distance=..5,tag=Altars] unless entity @e[distance=..5,team=purple] run scoreboard players set @a[scores={char=33,outofcombat=80..110}] stealth 4
execute at @a[scores={char=33,outofcombat=80..110},team=purple] unless entity @e[distance=..5,tag=Altars] unless entity @e[distance=..5,team=yellow] run scoreboard players set @a[scores={char=33,outofcombat=80..110}] stealth 4

scoreboard players remove @a[scores={stealth=1..}] stealth 1


tag @a[scores={stealth=3,char=33}] add invisible
effect give @a[scores={stealth=3..,char=33}] minecraft:invisibility 1 1 true
item replace entity @a[scores={stealth=3,char=33}] armor.head with minecraft:air
item replace entity @a[scores={stealth=3,char=33}] armor.chest with minecraft:air
item replace entity @a[scores={stealth=3,char=33}] armor.legs with minecraft:air
item replace entity @a[scores={stealth=3,char=33}] armor.feet with minecraft:air

execute at @a[scores={stealth=2,char=33}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:coal_block"}} ~ ~1 ~ 0.5 1 0.5 0.01 40
execute at @a[scores={stealth=1..2,char=33}] run playsound minecraft:entity.zombie.infect master @a[distance=..10] ~ ~ ~ 1 1 1

effect clear @a[scores={stealth=..2,char=33}] minecraft:invisibility
tag @a[scores={stealth=..1,char=33}] remove invisible

#true darkness

scoreboard players set @a[scores={char=33,spell_stra_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=33,spell_stra_1_1=1,CC_silence=1..}] spell_stra_1_1 260

execute at @a[scores={char=33,spell_stra_1_1=2,CC_silence=0}] run playsound minecraft:entity.wither_skeleton.ambient master @a[distance=..14] ~ ~ ~ 1 0.1 1

execute at @a[scores={char=33,spell_stra_1_1=2,CC_silence=0},team=yellow] at @a[distance=..14,team=purple] run particle minecraft:falling_dust{block_state:{Name:"minecraft:coal_block"}} ~ ~1.6 ~ 0.3 0.4 0.3 1 50
execute at @a[scores={char=33,spell_stra_1_1=2,CC_silence=0},team=purple] at @a[distance=..14,team=yellow] run particle minecraft:falling_dust{block_state:{Name:"minecraft:coal_block"}} ~ ~1.6 ~ 0.3 0.4 0.3 1 50

execute at @a[scores={char=33,spell_stra_1_1=2,CC_silence=0},team=yellow] run effect give @a[distance=..14,team=purple] minecraft:blindness 4 1
execute at @a[scores={char=33,spell_stra_1_1=2,CC_silence=0},team=yellow] run effect give @p[distance=..14,scores={prey=1..},team=purple] minecraft:blindness 6 1

execute at @a[scores={char=33,spell_stra_1_1=2,CC_silence=0},team=purple] run effect give @a[distance=..14,team=yellow] minecraft:blindness 4 1
execute at @a[scores={char=33,spell_stra_1_1=2,CC_silence=0},team=purple] run effect give @p[distance=..14,scores={prey=1..},team=yellow] minecraft:blindness 6 1



#rusted wounds

scoreboard players set @a[scores={char=33,spell_stra_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=33,spell_stra_2_1=1,CC_silence=1..}] spell_stra_2_1 180

execute at @a[scores={char=33,death_dash_reset=1..}] run kill @e[tag=straydash]
execute at @a[scores={char=33,universal_death=1..}] run kill @e[tag=straydash]
execute at @a[scores={char=33,CC_grounded=1..}] run kill @e[tag=straydash]
execute at @a[scores={char=33,CC_root=1..}] run kill @e[tag=straydash]
execute at @a[scores={char=33,CC_stun=1..}] run kill @e[tag=straydash]
execute at @a[scores={char=33,CC_silence=1..}] run kill @e[tag=straydash]

execute at @a[scores={char=33,spell_stra_2_1=2}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["straydash"],NoGravity:1b}
tp @e[tag=straydash,limit=1] @a[scores={char=33,spell_stra_2_1=2},limit=1]
execute at @a[scores={char=33,spell_stra_2_1=2},limit=1] run tp @e[tag=straydash,limit=1] ~ ~0.5 ~

execute as @e[tag=straydash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=straydash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=straydash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=straydash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=straydash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=straydash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=straydash] at @s run tp @s ^ ^ ^1
tp @a[scores={char=33,spell_stra_2_1=2..9,death_dash_reset=0}] @e[tag=straydash,limit=1]

execute at @a[scores={char=33,spell_stra_2_1=6}] run kill @e[tag=straydash]
execute as @a[scores={char=33,spell_stra_2_1=10}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

execute at @a[scores={char=33,spell_stra_2_1=1}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..5] ~ ~ ~ 1 1.6 1

execute at @e[tag=straydash] if entity @a[scores={char=33},team=yellow] if entity @a[distance=..1.5,team=purple] at @a[distance=..1.5,team=purple] run particle minecraft:block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~1.2 ~ 0.4 0.8 0.4 0.1 20
execute at @e[tag=straydash] if entity @a[scores={char=33},team=yellow] if entity @a[distance=..1.5,team=purple] at @a[distance=..1.5,team=purple] run particle minecraft:crit ~ ~1 ~ 0.4 0.8 0.4 0.1 20
execute at @e[tag=straydash] if entity @a[scores={char=33},team=yellow] if entity @a[distance=..1.5,team=purple] run playsound minecraft:entity.player.attack.strong master @a[distance=..5] ~ ~ ~ 1 0.5 1
execute at @e[tag=straydash] if entity @a[scores={char=33},team=yellow] if entity @a[distance=..1.5,team=purple] run scoreboard players set @p[distance=..2,team=purple] CC_defiled 80
execute at @e[tag=straydash] if entity @a[scores={char=33},team=yellow] if entity @a[distance=..1.5,team=purple] run effect give @p[distance=..2,team=purple] minecraft:slowness 1 3
execute at @e[tag=straydash] if entity @a[scores={char=33},team=yellow] if entity @a[distance=..1.5,scores={prey=1..},team=purple] run effect give @a[scores={char=33}] minecraft:speed 2 2 true
execute at @e[tag=straydash] if entity @a[scores={char=33},team=yellow] if entity @a[distance=..1.5,team=purple] run kill @e[tag=straydash]

execute at @e[tag=straydash] if entity @a[scores={char=33},team=purple] if entity @a[distance=..1.5,team=yellow] at @a[distance=..1.5,team=yellow] run particle minecraft:block{block_state:{Name:"minecraft:nether_wart_block"}} ~ ~1.2 ~ 0.4 0.8 0.4 0.1 20
execute at @e[tag=straydash] if entity @a[scores={char=33},team=purple] if entity @a[distance=..1.5,team=yellow] at @a[distance=..1.5,team=yellow] run particle minecraft:crit ~ ~1 ~ 0.4 0.8 0.4 0.1 20
execute at @e[tag=straydash] if entity @a[scores={char=33},team=purple] if entity @a[distance=..1.5,team=yellow] run playsound minecraft:entity.player.attack.strong master @a[distance=..5] ~ ~ ~ 1 0.5 1
execute at @e[tag=straydash] if entity @a[scores={char=33},team=purple] if entity @a[distance=..1.5,team=yellow] run scoreboard players set @p[distance=..2,team=yellow] CC_defiled 80
execute at @e[tag=straydash] if entity @a[scores={char=33},team=purple] if entity @a[distance=..1.5,team=yellow] run effect give @p[distance=..2,team=yellow] minecraft:slowness 1 3
execute at @e[tag=straydash] if entity @a[scores={char=33},team=purple] if entity @a[distance=..1.5,scores={prey=1..},team=yellow] run effect give @a[scores={char=33}] minecraft:speed 2 2 true
execute at @e[tag=straydash] if entity @a[scores={char=33},team=purple] if entity @a[distance=..1.5,team=yellow] run kill @e[tag=straydash]

#no place to hide

execute unless entity @a[scores={prey=1..}] run item replace entity @a[scores={stealth=3..,char=33,CC_silence=0}] hotbar.3 with minecraft:netherite_helmet[minecraft:custom_name={text:"No Place to Hide",color:"dark_aqua",bold:1b}] 1
execute if entity @a[scores={prey=1..}] run clear @a[scores={char=33}] minecraft:netherite_helmet
clear @a[scores={char=33,stealth=..2}] minecraft:netherite_helmet

scoreboard players remove @a[scores={prey=1..}] prey 1
execute at @a[scores={prey=1..},team=purple] if entity @a[distance=1..5,team=purple] run scoreboard players remove @a[scores={prey=1..}] prey 3
execute at @a[scores={prey=1..},team=yellow] if entity @a[distance=1..5,team=yellow] run scoreboard players remove @a[scores={prey=1..}] prey 3


item replace entity @a[scores={spell_stra_3=1..,CC_silence=1..}] hotbar.3 with minecraft:netherite_helmet[minecraft:custom_name={text:"No Place to Hide",color:"dark_aqua",bold:1b}] 1

execute at @a[scores={spell_stra_3=1..,CC_silence=0},team=purple] run scoreboard players set @p[distance=..15,team=yellow] prey 300
execute at @a[scores={spell_stra_3=1..,CC_silence=0},team=yellow] run scoreboard players set @p[distance=..15,team=purple] prey 300

scoreboard players remove @a[scores={spell_stra_3=1..}] spell_stra_3 1

execute at @a[scores={prey=1..},team=yellow] unless entity @a[distance=1..10,team=yellow] run effect give @p[distance=..5,scores={char=33}] minecraft:strength 1
execute at @a[scores={prey=1..},team=purple] unless entity @a[distance=1..10,team=purple] run effect give @p[distance=..5,scores={char=33}] minecraft:strength 1


execute unless entity @a[scores={prey=1..}] run title @a[scores={char=33}] actionbar [{text:"[ ",bold:1b,color:"dark_red",type:"text"},{text:"No current prey",color:"gray",bold:0b,type:"text"},{text:" ]",bold:1b,color:"dark_red",type:"text"}]
execute if entity @a[scores={prey=1..}] run title @a[scores={char=33}] actionbar [{text:"> ",bold:1b,color:"dark_red",type:"text"},{selector:"@a[scores={prey=1..}]",color:"red",bold:1b,type:"selector"},{text:" <",bold:1b,color:"dark_red",type:"text"}]

scoreboard players set @a[scores={universal_death=1..}] prey 0

execute at @a[scores={char=33}] run scoreboard players add @a[distance=..5,scores={prey=1..}] stray_terrorradius 6
execute at @a[scores={char=33}] run scoreboard players add @a[distance=5..11,scores={prey=1..}] stray_terrorradius 4
execute at @a[scores={char=33}] run scoreboard players add @a[distance=11..,scores={prey=1..}] stray_terrorradius 2



execute as @a[scores={stray_terrorradius=80..}] at @s if entity @a[distance=..5,scores={char=33}] run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 1.2 1
execute as @a[scores={stray_terrorradius=80..}] at @s if entity @a[distance=5..11,scores={char=33}] run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 1 1
execute as @a[scores={stray_terrorradius=80..}] at @s if entity @a[distance=11..,scores={char=33}] run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 0.8 1


scoreboard players set @a[scores={stray_terrorradius=80..}] stray_terrorradius 0
scoreboard players set @a[scores={prey=0}] stray_terrorradius 0


# stray

scoreboard players add @a[scores={spell_stra_1=1..}] spell_stra_1_1 1
item replace entity @a[scores={char=33,spell_stra_1_1=280..}] hotbar.1 with minecraft:black_candle[minecraft:custom_name={text:"True Darkness",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_stra_1_1=281..}] spell_stra_1 0
scoreboard players set @a[scores={spell_stra_1_1=281..}] spell_stra_1_1 0
scoreboard players set @a[scores={spell_stra_1_1=1}] spellCD1 280

scoreboard players add @a[scores={spell_stra_2=1..}] spell_stra_2_1 1
item replace entity @a[scores={char=33,spell_stra_2_1=200..}] hotbar.2 with minecraft:conduit[minecraft:custom_name={text:"Rusted Wounds",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_stra_2_1=201..}] spell_stra_2 0
scoreboard players set @a[scores={spell_stra_2_1=201..}] spell_stra_2_1 0
scoreboard players set @a[scores={spell_stra_2_1=1}] spellCD2 200

execute as @a[scores={char=33}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_sword",Slot:0b}]}] run clear @a[scores={char=33}] minecraft:stone_sword
item replace entity @a[scores={char=33}] hotbar.0 with minecraft:stone_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Pocket Knife"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.4d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=33,spell_stra_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:black_candle",Slot:1b}]}] run clear @a[scores={char=33}] minecraft:black_candle
item replace entity @a[scores={char=33,spell_stra_1=0}] hotbar.1 with minecraft:black_candle[minecraft:custom_name={text:"True Darkness",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=33,spell_stra_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:conduit",Slot:2b}]}] run clear @a[scores={char=33}] minecraft:conduit
item replace entity @a[scores={char=33,spell_stra_2=0}] hotbar.2 with minecraft:conduit[minecraft:custom_name={text:"Rusted Wounds",color:"dark_aqua",bold:1b}] 1
