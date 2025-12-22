kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:white_wool"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:blue_stained_glass_pane"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bow"}}]

effect give @a[scores={char=34},nbt={SelectedItem:{id:"minecraft:bow"}}] minecraft:weakness 1 100 true

#passive

execute at @a[scores={char=34,arrowcd_1=..10}] run tag @e[type=minecraft:arrow,distance=..2] add rainmakershoot_ar
execute at @e[tag=rainmakershoot_ar] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~ ~ 0.1 0.1 0.1 0.1 5

execute at @a[scores={char=34,CC_disarm=1..}] run kill @e[tag=rainmakershoot_ar]

execute at @a[scores={char=34,rainmaker_shoot=1..}] run tag @e[type=minecraft:arrow,distance=..2,nbt={crit:1b}] add puddleShoot

execute at @e[type=minecraft:arrow,tag=puddleShoot,nbt={inGround:1b}] run summon minecraft:marker ~ ~ ~ {Tags:["puddle"]}

scoreboard players set @a[scores={rainmaker_shoot=1..}] rainmaker_shoot 0

scoreboard players add @e[tag=puddle] puddle_life 1
kill @e[tag=puddle,scores={puddle_life=80..}]

execute at @e[tag=puddle,scores={puddle_life=1..80}] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~ ~ 1 0.05 1 0.01 30
execute at @e[tag=puddle,scores={puddle_life=1}] run playsound minecraft:block.water.ambient master @a[distance=..5] ~ ~ ~ 0.5 1 1
execute at @e[tag=puddle,scores={puddle_life=20}] run playsound minecraft:block.water.ambient master @a[distance=..5] ~ ~ ~ 0.5 1 1
execute at @e[tag=puddle,scores={puddle_life=40}] run playsound minecraft:block.water.ambient master @a[distance=..5] ~ ~ ~ 0.5 1 1
execute as @e[tag=puddle] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~0.5 ~
execute as @e[tag=puddle] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~

execute at @e[tag=puddle] run effect give @a[distance=..2,scores={char=34}] minecraft:jump_boost 1 5

execute at @e[tag=puddle] if entity @a[scores={char=34},team=purple] run effect give @a[distance=..2,team=purple] minecraft:speed 1 0
execute at @e[tag=puddle] if entity @a[scores={char=34},team=yellow] run effect give @a[distance=..2,team=yellow] minecraft:speed 1 0

execute at @e[tag=puddle] if entity @a[scores={char=34},team=purple] run effect give @a[distance=..2,team=yellow] minecraft:slowness 1 0
execute at @e[tag=puddle] if entity @a[scores={char=34},team=yellow] run effect give @a[distance=..2,team=purple] minecraft:slowness 1 0

#walk the clouds

scoreboard players set @a[scores={char=34,spell_rain_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=34,spell_rain_1_1=1,CC_silence=1..}] spell_rain_1_1 80

scoreboard players set @a[scores={char=34,spell_rain_1_1=2,spell_rain_2_1=1..58,CC_silence=0}] spell_rain_2_1 58
execute at @a[scores={char=34,spell_rain_1_1=1,CC_silence=0}] at @e[tag=cloud] run fill ~4 ~-2 ~4 ~-4 ~2 ~-4 minecraft:air replace minecraft:light_gray_stained_glass
execute at @a[scores={char=34,spell_rain_1_1=2,CC_silence=0}] run kill @e[tag=cloud]

effect give @a[scores={char=34,spell_rain_1_1=1,CC_silence=0}] minecraft:levitation 1 5 true
effect clear @a[scores={char=34,spell_rain_1_1=3,CC_silence=0}] minecraft:levitation

execute at @a[scores={char=34,spell_rain_1_1=2,CC_silence=0}] align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["cloud"]}
execute at @a[scores={char=34,spell_rain_1_1=2,CC_silence=0}] run playsound minecraft:entity.zombie.infect master @a[distance=..20] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=34,spell_rain_1_1=2..3,CC_silence=0}] at @e[tag=cloud] run particle minecraft:cloud ~ ~-1 ~ 2 0.3 2 0.01 50 normal
execute at @a[scores={char=34,spell_rain_1_1=2,CC_silence=0}] at @e[tag=cloud] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:light_gray_stained_glass replace #minecraft:dash

execute as @e[tag=cloud] at @s unless entity @a[distance=..5,scores={char=34}] run fill ~4 ~-2 ~4 ~-4 ~2 ~-4 minecraft:air replace minecraft:light_gray_stained_glass
execute as @e[tag=cloud] at @s unless entity @a[distance=..5,scores={char=34}] run kill @s

execute at @e[tag=cloud] run particle minecraft:cloud ~ ~-0.5 ~ 1.5 1 1.5 0.01 2 normal
execute at @e[tag=cloud] run particle minecraft:dripping_water ~ ~-1 ~ 0.7 0.1 0.7 0.01 10 normal

#misty deluge

scoreboard players set @a[scores={char=34,spell_rain_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=34,spell_rain_2_1=1,CC_silence=1..}] spell_rain_2_1 340

execute at @a[scores={char=34,spell_rain_2_1=1,CC_silence=0}] run playsound minecraft:weather.rain master @a[distance=..20] ~ ~ ~ 1 1 1
effect give @a[scores={char=34,spell_rain_2_1=2,CC_silence=0}] minecraft:resistance 3 100 true
effect give @a[scores={char=34,spell_rain_2_1=2,CC_silence=0}] minecraft:weakness 3 100 true
effect give @a[scores={char=34,spell_rain_2_1=2,CC_silence=0}] minecraft:invisibility 3 100 true
scoreboard players set @a[scores={char=34,spell_rain_2_1=2,CC_silence=0}] CC_intangible 60
execute at @a[scores={char=34,spell_rain_2_1=2,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["raincloud"],NoGravity:1b}
tp @e[tag=raincloud,limit=1] @a[scores={char=34,spell_rain_2_1=2},limit=1]
execute at @a[scores={char=34,spell_rain_2_1=2},limit=1] run tp @e[tag=raincloud,limit=1] ~ ~0.5 ~

tp @a[scores={char=34,spell_rain_2_1=2..60}] @e[tag=raincloud,limit=1]
execute as @e[tag=raincloud] at @s run tp @s ^ ^ ^0.4

execute as @e[tag=raincloud] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=raincloud] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=raincloud] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=raincloud] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=raincloud] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=raincloud] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

effect clear @a[scores={char=34,spell_rain_2_1=60}] minecraft:weakness
effect clear @a[scores={char=34,spell_rain_2_1=60}] minecraft:resistance
effect clear @a[scores={char=34,spell_rain_2_1=60}] minecraft:invisibility
scoreboard players set @a[scores={char=34,spell_rain_2_1=60}] CC_intangible 0
execute at @a[scores={char=34,spell_rain_2_1=60}] run kill @e[tag=raincloud]

execute if entity @e[tag=raincloud] at @e[scores={char=34}] run particle minecraft:cloud ~ ~ ~ 0.4 0.4 0.4 0.0001 10 normal
execute if entity @e[tag=raincloud] at @e[scores={char=34}] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~ ~ 0.3 1 0.3 0.0001 10 normal

execute if entity @e[tag=raincloud] run item replace entity @a[scores={char=34}] armor.head with minecraft:air
execute if entity @e[tag=raincloud] run item replace entity @a[scores={char=34}] armor.chest with minecraft:air
execute if entity @e[tag=raincloud] run item replace entity @a[scores={char=34}] armor.legs with minecraft:air
execute if entity @e[tag=raincloud] run item replace entity @a[scores={char=34}] armor.feet with minecraft:air

execute if entity @e[tag=raincloud] run tag @a[scores={char=34}] add invisible
execute unless entity @e[tag=raincloud] run tag @a[scores={char=34}] remove invisible
execute unless entity @e[tag=raincloud] run effect clear @a[scores={char=34}] minecraft:invisibility



# rainmaker

scoreboard players add @a[scores={spell_rain_1=1..}] spell_rain_1_1 1
item replace entity @a[scores={char=34,spell_rain_1_1=100..}] hotbar.1 with minecraft:white_wool[minecraft:custom_name={text:"Walk the Clouds",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:feather_falling":1}] 1
scoreboard players set @a[scores={spell_rain_1_1=101..}] spell_rain_1 0
scoreboard players set @a[scores={spell_rain_1_1=101..}] spell_rain_1_1 0
scoreboard players set @a[scores={spell_rain_1_1=1}] spellCD1 100

scoreboard players add @a[scores={spell_rain_2=1..}] spell_rain_2_1 1
item replace entity @a[scores={char=34,spell_rain_2_1=360..}] hotbar.2 with minecraft:blue_stained_glass_pane[minecraft:custom_name={text:"Morning Mist",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:feather_falling":1}] 1
scoreboard players set @a[scores={spell_rain_2_1=361..}] spell_rain_2 0
scoreboard players set @a[scores={spell_rain_2_1=361..}] spell_rain_2_1 0
scoreboard players set @a[scores={spell_rain_2_1=61}] spellCD2 300

execute as @a[scores={char=34}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Slot:0b}]}] run clear @a[scores={char=34}] minecraft:bow
item replace entity @a[scores={char=34}] hotbar.0 with minecraft:bow[minecraft:custom_name={text:"Rain",color:"gray",bold:1b},minecraft:enchantments={"minecraft:aqua_affinity":1},minecraft:unbreakable={}] 1

execute as @a[scores={char=34,spell_rain_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:white_wool",Slot:1b}]}] run clear @a[scores={char=34}] minecraft:white_wool
item replace entity @a[scores={char=34,spell_rain_1=0}] hotbar.1 with minecraft:white_wool[minecraft:custom_name={text:"Walk the Clouds",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:feather_falling":1}] 1

execute as @a[scores={char=34,spell_rain_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:2b}]}] run clear @a[scores={char=34}] minecraft:blue_stained_glass_pane
item replace entity @a[scores={char=34,spell_rain_2=0}] hotbar.2 with minecraft:blue_stained_glass_pane[minecraft:custom_name={text:"Morning Mist",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:feather_falling":1}] 1
