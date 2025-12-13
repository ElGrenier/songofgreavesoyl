kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:elytra"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:fire_coral_fan"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bow"}}]

#pasive

execute at @a[scores={char=7,arrowcd_1=..10}] run tag @e[type=minecraft:arrow,distance=..2] add dragonshot_ar
execute at @e[tag=dragonshot_ar] run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.1 2
execute at @a[scores={char=7,s1_timer=1..140}] at @e[tag=dragonshot_ar] run particle minecraft:block{block_state:{Name:"minecraft:magma_block"}} ~ ~ ~ 0.1 0.1 0.1 0.1 2
execute at @a[scores={char=7,s1_timer=1..140}] at @e[tag=dragonshot_ar] run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.01 4

execute at @a[scores={char=7,CC_disarm=1..}] run kill @e[tag=dragonshot_ar]

kill @e[type=minecraft:arrow,tag=dragonshot_ar,nbt={inGround:1b}]

effect give @a[scores={char=7},nbt={SelectedItem:{id:"minecraft:bow"}}] minecraft:weakness 1 100 true

#fire shit

scoreboard players set @a[scores={char=7,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=7,s1_timer=1,CC_silence=1..}] s1_timer 460

execute at @a[scores={char=7,s1_timer=1..2}] run particle minecraft:flame ~ ~1 ~ 1 1 1 0.001 40 normal
execute at @a[scores={char=7,s1_timer=1..140}] run particle minecraft:flame ~ ~0.5 ~ 0.3 0.7 0.3 0.001 2 normal
execute at @a[scores={char=7,s1_timer=1}] run playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..15] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=7,s1_timer=2}] run playsound minecraft:entity.blaze.ambient master @a[distance=..15] ~ ~ ~ 1 2 1

clear @a[scores={char=7,s1_timer=1}] minecraft:bow
item replace entity @a[scores={char=7,s1_timer=1}] hotbar.0 with minecraft:bow[minecraft:custom_name={text:"Dragon Fire",color:"gray",bold:1b},minecraft:enchantments={"minecraft:flame":1,"minecraft:infinity":1},minecraft:unbreakable={}] 1
clear @a[scores={char=7,s1_timer=160}] minecraft:bow
item replace entity @a[scores={char=7,s1_timer=160}] hotbar.0 with minecraft:bow[minecraft:custom_name={text:"Dragon Fire",color:"gray",bold:1b},minecraft:enchantments={"minecraft:flame":1},minecraft:unbreakable={}] 1

title @a[scores={char=7,s1_timer=1..20}] actionbar [{text:"[",color:"dark_red",bold:1b,type:"text"},{text:"========",color:"red",type:"text"},{text:"",color:"gray",type:"text"},{text:"]",color:"dark_red",bold:1b,type:"text"}]
title @a[scores={char=7,s1_timer=21..40}] actionbar [{text:"[",color:"dark_red",bold:1b,type:"text"},{text:"=======",color:"red",type:"text"},{text:"=",color:"gray",type:"text"},{text:"]",color:"dark_red",bold:1b,type:"text"}]
title @a[scores={char=7,s1_timer=41..60}] actionbar [{text:"[",color:"dark_red",bold:1b,type:"text"},{text:"======",color:"red",type:"text"},{text:"==",color:"gray",type:"text"},{text:"]",color:"dark_red",bold:1b,type:"text"}]
title @a[scores={char=7,s1_timer=61..80}] actionbar [{text:"[",color:"dark_red",bold:1b,type:"text"},{text:"=====",color:"red",type:"text"},{text:"===",color:"gray",type:"text"},{text:"]",color:"dark_red",bold:1b,type:"text"}]
title @a[scores={char=7,s1_timer=81..100}] actionbar [{text:"[",color:"dark_red",bold:1b,type:"text"},{text:"====",color:"red",type:"text"},{text:"====",color:"gray",type:"text"},{text:"]",color:"dark_red",bold:1b,type:"text"}]
title @a[scores={char=7,s1_timer=101..120}] actionbar [{text:"[",color:"dark_red",bold:1b,type:"text"},{text:"===",color:"red",type:"text"},{text:"=====",color:"gray",type:"text"},{text:"]",color:"dark_red",bold:1b,type:"text"}]
title @a[scores={char=7,s1_timer=121..140}] actionbar [{text:"[",color:"dark_red",bold:1b,type:"text"},{text:"==",color:"red",type:"text"},{text:"======",color:"gray",type:"text"},{text:"]",color:"dark_red",bold:1b,type:"text"}]
title @a[scores={char=7,s1_timer=141..160}] actionbar [{text:"[",color:"dark_red",bold:1b,type:"text"},{text:"=",color:"red",type:"text"},{text:"=======",color:"gray",type:"text"},{text:"]",color:"dark_red",bold:1b,type:"text"}]
title @a[scores={char=7,s1_timer=160..180}] actionbar [{text:"[",color:"dark_red",bold:1b,type:"text"},{text:"",color:"red",type:"text"},{text:"========",color:"gray",type:"text"},{text:"]",color:"dark_red",bold:1b,type:"text"}]
title @a[scores={char=7,s1_timer=180..185}] actionbar [{text:" ",type:"text"}]

#flight

scoreboard players set @a[scores={char=7,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=7,s2_timer=1,CC_silence=1..}] s2_timer 360

execute at @a[scores={char=7,death_dash_reset=1..}] run kill @e[tag=dragondash]
execute at @a[scores={char=7,universal_death=1..}] run kill @e[tag=dragondash]
execute at @a[scores={char=7,CC_grounded=1..}] run kill @e[tag=dragondash]
execute at @a[scores={char=7,CC_root=1..}] run kill @e[tag=dragondash]
execute at @a[scores={char=7,CC_stun=1..}] run kill @e[tag=dragondash]
execute at @a[scores={char=7,CC_silence=1..}] run kill @e[tag=dragondash]

scoreboard players set @a[scores={char=7,s2_timer=1..60,death_dash_reset=1..}] spellCD2 320
scoreboard players set @a[scores={char=7,s2_timer=1..60,death_dash_reset=1..}] s2_timer 61
scoreboard players set @a[scores={char=7,s2_timer=1..60,universal_death=1..}] spellCD2 320
scoreboard players set @a[scores={char=7,s2_timer=1..60,universal_death=1..}] s2_timer 61
scoreboard players set @a[scores={char=7,s2_timer=1..60,CC_grounded=1..}] spellCD2 320
scoreboard players set @a[scores={char=7,s2_timer=1..60,CC_grounded=1..}] s2_timer 61
scoreboard players set @a[scores={char=7,s2_timer=1..60,CC_root=1..}] spellCD2 320
scoreboard players set @a[scores={char=7,s2_timer=1..60,CC_root=1..}] s2_timer 61
scoreboard players set @a[scores={char=7,s2_timer=1..60,CC_stun=1..}] spellCD2 320
scoreboard players set @a[scores={char=7,s2_timer=1..60,CC_stun=1..}] s2_timer 61
scoreboard players set @a[scores={char=7,s2_timer=1..60,CC_silence=1..}] spellCD2 320
scoreboard players set @a[scores={char=7,s2_timer=1..60,CC_silence=1..}] s2_timer 61

effect give @a[scores={char=7,s2_timer=1,CC_silence=0}] levitation 1 15 true
effect give @a[scores={char=7,s2_timer=1..30,CC_silence=0}] slow_falling 1 20 true
effect clear @a[scores={char=7,s2_timer=14..15,CC_silence=0}] levitation
execute at @a[scores={char=7,s2_timer=1,CC_silence=0}] run playsound entity.ender_dragon.flap master @a[distance=..15] ~ ~ ~ 1 0.8 1

execute at @a[scores={char=7,s2_timer=15,CC_silence=0}] run playsound entity.ender_dragon.flap master @a[distance=..15] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=7,s2_timer=25,CC_silence=0}] run playsound entity.ender_dragon.flap master @a[distance=..15] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=7,s2_timer=15,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["dragondash","entities_dragon"],NoGravity:1b}
tp @e[tag=dragondash,limit=1] @a[scores={char=7,s2_timer=15},limit=1]
execute at @a[scores={char=7,s2_timer=15},limit=1] run tp @e[tag=dragondash,limit=1] ~ ~0.5 ~
effect give @a[scores={char=7,s2_timer=25,CC_silence=0}] levitation 1 0 true

execute at @a[scores={char=7,s2_timer=41,CC_silence=0}] run playsound entity.ender_dragon.flap master @a[distance=..15] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=7,s2_timer=51,CC_silence=0}] run playsound entity.ender_dragon.flap master @a[distance=..15] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=7,s2_timer=41,CC_silence=0}] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["dragondash"],NoGravity:1b}
tp @e[tag=dragondash,limit=1] @a[scores={char=7,s2_timer=41},limit=1]
execute at @a[scores={char=7,s2_timer=41},limit=1] run tp @e[tag=dragondash,limit=1] ~ ~0.5 ~

execute as @e[tag=dragondash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=dragondash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=dragondash] at @s unless block ^ ^ ^0.5 #minecraft:dash run kill @s
execute as @e[tag=dragondash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=dragondash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=dragondash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=dragondash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=dragondash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=dragondash] at @s run tp @s ^ ^ ^1.2
execute as @a[scores={char=7,s2_timer=2..60,death_dash_reset=0}] at @e[tag=dragondash,limit=1] run tp ~ ~ ~

execute at @a[scores={char=7,s2_timer=25}] run kill @e[tag=dragondash]
execute at @a[scores={char=7,s2_timer=51}] run kill @e[tag=dragondash]
execute as @a[scores={char=7,s2_timer=1..60}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~



# dragon

scoreboard players set @a[scores={s1_timer=1,char=7}] spellCD1 480
scoreboard players add @a[scores={s1_timer=1..,char=7}] s1_timer 1
scoreboard players set @a[scores={s1_timer=481..,char=7}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=7}] spellCD2 380
scoreboard players add @a[scores={s2_timer=1..,char=7}] s2_timer 1
scoreboard players set @a[scores={s2_timer=381..,char=7}] s2_timer 0

execute as @a[scores={char=7,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Slot:0b}]}] run clear @a[scores={char=7}] minecraft:bow
item replace entity @a[scores={char=7,s1_timer=0}] hotbar.0 with minecraft:bow[minecraft:custom_name={text:"Dragon Fire",color:"gray",bold:1b},minecraft:enchantments={"minecraft:flame":1},minecraft:unbreakable={}] 1

execute as @a[scores={char=7,s1_timer=1..160}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Slot:0b}]}] run clear @a[scores={char=7}] minecraft:bow
item replace entity @a[scores={char=7,s1_timer=1..160}] hotbar.0 with minecraft:bow[minecraft:custom_name={text:"Dragon Fire",color:"gray",bold:1b},minecraft:enchantments={"minecraft:flame":1,"minecraft:infinity":1},minecraft:unbreakable={}] 1

execute as @a[scores={char=7,s1_timer=161..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Slot:0b}]}] run clear @a[scores={char=7}] minecraft:bow
item replace entity @a[scores={char=7,s1_timer=161..}] hotbar.0 with minecraft:bow[minecraft:custom_name={text:"Dragon Fire",color:"gray",bold:1b},minecraft:enchantments={"minecraft:flame":1},minecraft:unbreakable={}] 1


execute as @a[scores={char=7,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=7}] minecraft:carrot_on_a_stick
item replace entity @a[scores={char=7,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:fire_coral_fan",minecraft:custom_name={text:"Flurry of Flames",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=7,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=7}] minecraft:warped_fungus_on_a_stick
item replace entity @a[scores={char=7,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:elytra",minecraft:custom_name={text:"Tyrant's Departure",color:"dark_aqua",bold:1b}] 1





