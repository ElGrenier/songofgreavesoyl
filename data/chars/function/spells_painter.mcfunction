kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_sword"}}]

# color mixing


# red

scoreboard players set @a[scores={char=69,s1_timer=1,CC_silence=1..}] spellCD1 10
scoreboard players set @a[scores={char=69,s1_timer=1,CC_silence=1..}] s1_timer 1

execute at @a[scores={char=69,s1_timer=1,CC_silence=0}] run playsound block.fire.extinguish master @a[distance=..8] ~ ~ ~ 0.5 2 1
execute at @a[scores={char=69,s1_timer=1,CC_silence=0}] run playsound block.lever.click master @a[distance=..8] ~ ~ ~ 1 2 1
execute at @a[scores={char=69,s1_timer=1,CC_silence=0}] run particle dust{color:[0.67,0.0,0.0],scale:1} ~ ~1 ~ 0.5 0.6 0.5 0 10
scoreboard players add @a[scores={char=69,s1_timer=1,CC_silence=0}] red 1

# yellow

scoreboard players set @a[scores={char=69,s2_timer=1,CC_silence=1..}] spellCD2 10
scoreboard players set @a[scores={char=69,s2_timer=1,CC_silence=1..}] s2_timer 1

execute at @a[scores={char=69,s2_timer=1,CC_silence=0}] run playsound block.fire.extinguish master @a[distance=..8] ~ ~ ~ 0.5 2 1
execute at @a[scores={char=69,s2_timer=1,CC_silence=0}] run playsound block.lever.click master @a[distance=..8] ~ ~ ~ 1 2 1
execute at @a[scores={char=69,s2_timer=1,CC_silence=0}] run particle dust{color:[1.0,1.0,0.33],scale:1} ~ ~1 ~ 0.5 0.6 0.5 0 10
scoreboard players add @a[scores={char=69,s2_timer=1,CC_silence=0}] yellow 1

# blue

scoreboard players set @a[scores={char=69,s3_timer=1,CC_silence=1..}] spellCD3 10
scoreboard players set @a[scores={char=69,s3_timer=1,CC_silence=1..}] s3_timer 1

execute at @a[scores={char=69,s3_timer=1,CC_silence=0}] run playsound block.fire.extinguish master @a[distance=..8] ~ ~ ~ 0.5 2 1
execute at @a[scores={char=69,s3_timer=1,CC_silence=0}] run playsound block.lever.click master @a[distance=..8] ~ ~ ~ 1 2 1
execute at @a[scores={char=69,s3_timer=1,CC_silence=0}] run particle dust{color:[0.33,0.33,1.0],scale:1} ~ ~1 ~ 0.5 0.6 0.5 0 10
scoreboard players add @a[scores={char=69,s3_timer=1,CC_silence=0}] blue 1

scoreboard players set @a[scores={char=69}] matematyka 20
scoreboard players set @a[scores={char=69}] matematyka2 1

scoreboard players operation @a[scores={char=69}] spellCD_red = @p[scores={char=69}] spell_painter_red
scoreboard players operation @a[scores={char=69}] spellCD_red /= @p[scores={char=69}] matematyka
scoreboard players operation @a[scores={char=69,spell_painter_red=1..}] spellCD_red += @p[scores={char=69}] matematyka2

scoreboard players operation @a[scores={char=69}] spellCD_yellow = @p[scores={char=69}] spell_painter_yellow
scoreboard players operation @a[scores={char=69}] spellCD_yellow /= @p[scores={char=69}] matematyka
scoreboard players operation @a[scores={char=69,spell_painter_yellow=1..}] spellCD_yellow += @p[scores={char=69}] matematyka2

scoreboard players operation @a[scores={char=69}] spellCD_blue = @p[scores={char=69}] spell_painter_blue
scoreboard players operation @a[scores={char=69}] spellCD_blue /= @p[scores={char=69}] matematyka
scoreboard players operation @a[scores={char=69,spell_painter_blue=1..}] spellCD_blue += @p[scores={char=69}] matematyka2

scoreboard players operation @a[scores={char=69}] spellCD_purple = @p[scores={char=69}] spell_painter_purple
scoreboard players operation @a[scores={char=69}] spellCD_purple /= @p[scores={char=69}] matematyka
scoreboard players operation @a[scores={char=69,spell_painter_purple=1..}] spellCD_purple += @p[scores={char=69}] matematyka2

scoreboard players operation @a[scores={char=69}] spellCD_green = @p[scores={char=69}] spell_painter_green
scoreboard players operation @a[scores={char=69}] spellCD_green /= @p[scores={char=69}] matematyka
scoreboard players operation @a[scores={char=69,spell_painter_green=1..}] spellCD_green += @p[scores={char=69}] matematyka2

scoreboard players operation @a[scores={char=69}] spellCD_orange = @p[scores={char=69}] spell_painter_orange
scoreboard players operation @a[scores={char=69}] spellCD_orange /= @p[scores={char=69}] matematyka
scoreboard players operation @a[scores={char=69,spell_painter_orange=1..}] spellCD_orange += @p[scores={char=69}] matematyka2


execute as @a[scores={char=69}] run title @s actionbar [{score:{name:"@s",objective:"spellCD_red"},color:"red",bold:1b,type:"score"},{text:"s",color:"dark_red",bold:1b,type:"text"},{text:" ",bold:1b,color:"white",type:"text"},{score:{name:"@s",objective:"spellCD_yellow"},color:"yellow",bold:1b,type:"score"},{text:"s",color:"#DAC630",bold:1b,type:"text"},{text:" ",bold:1b,color:"white",type:"text"},{score:{name:"@s",objective:"spellCD_blue"},color:"blue",bold:1b,type:"score"},{text:"s",color:"dark_blue",bold:1b,type:"text"},{text:" ",bold:1b,color:"white",type:"text"},{score:{name:"@s",objective:"spellCD_purple"},color:"light_purple",bold:1b,type:"score"},{text:"s",color:"dark_purple",bold:1b,type:"text"},{text:" ",bold:1b,color:"white",type:"text"},{score:{name:"@s",objective:"spellCD_green"},color:"green",bold:1b,type:"score"},{text:"s",color:"dark_green",bold:1b,type:"text"},{text:" ",bold:1b,color:"white",type:"text"},{score:{name:"@s",objective:"spellCD_orange"},color:"gold",bold:1b,type:"score"},{text:"s",color:"#BF6F0E",bold:1b,type:"text"}]


# crison cloud (red) ==============================================================================

scoreboard players set @a[scores={char=69,red=2..,spell_painter_red=0}] spell_painter_red 140
tag @a[scores={char=69,red=2..}] add color_reset
#title @a[scores={char=69,red=2..}] title [{"text":"crimson cloud","color":red}]

execute at @a[scores={char=69,spell_painter_red=140,CC_silence=0}] run playsound block.fire.extinguish master @a[distance=..12] ~ ~ ~ 0.8 1.2 1

execute as @a[scores={char=69,spell_painter_red=140,CC_silence=0}] at @s positioned ~ ~1.2 ~ rotated ~40 ~ run function chars:painter_crimson_cloud
execute as @a[scores={char=69,spell_painter_red=140,CC_silence=0}] at @s positioned ~ ~1.2 ~ rotated ~35 ~ run function chars:painter_crimson_cloud
execute as @a[scores={char=69,spell_painter_red=140,CC_silence=0}] at @s positioned ~ ~1.2 ~ rotated ~25 ~ run function chars:painter_crimson_cloud
execute as @a[scores={char=69,spell_painter_red=140,CC_silence=0}] at @s positioned ~ ~1.2 ~ rotated ~15 ~ run function chars:painter_crimson_cloud
execute as @a[scores={char=69,spell_painter_red=140,CC_silence=0}] at @s positioned ~ ~1.2 ~ rotated ~5 ~ run function chars:painter_crimson_cloud
execute as @a[scores={char=69,spell_painter_red=140,CC_silence=0}] at @s positioned ~ ~1.2 ~ rotated ~-5 ~ run function chars:painter_crimson_cloud
execute as @a[scores={char=69,spell_painter_red=140,CC_silence=0}] at @s positioned ~ ~1.2 ~ rotated ~-15 ~ run function chars:painter_crimson_cloud
execute as @a[scores={char=69,spell_painter_red=140,CC_silence=0}] at @s positioned ~ ~1.2 ~ rotated ~-25 ~ run function chars:painter_crimson_cloud
execute as @a[scores={char=69,spell_painter_red=140,CC_silence=0}] at @s positioned ~ ~1.2 ~ rotated ~-35 ~ run function chars:painter_crimson_cloud
execute as @a[scores={char=69,spell_painter_red=140,CC_silence=0}] at @s positioned ~ ~1.2 ~ rotated ~-40 ~ run function chars:painter_crimson_cloud

execute as @e[tag=painter_redded] run damage @s 5 generic by @p[scores={char=69}] from @p[scores={char=69}]
tag @e remove painter_redded


scoreboard players remove @a[scores={char=69,spell_painter_red=1..}] spell_painter_red 1

# deep blue (blue) ==============================================================================

scoreboard players set @a[scores={char=69,blue=2..,spell_painter_blue=0}] spell_painter_blue 180
tag @a[scores={char=69,blue=2..}] add color_reset
#title @a[scores={char=69,blue=2..}] title [{"text":"deep blue","color":blue}]

execute at @a[scores={char=69,spell_painter_blue=180,CC_silence=0}] run playsound item.bucket.empty master @a[distance=..12] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=69,spell_painter_blue=180,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["deep_blue_projectile","painter_stuff","entities_painter","projectile"]}
tp @e[tag=deep_blue_projectile,limit=1] @a[scores={char=69,spell_painter_blue=180},limit=1]

execute store result entity @e[tag=deep_blue_projectile,limit=1] Rotation[1] float 1 run clear
execute as @e[tag=deep_blue_projectile] at @s unless block ^ ^1 ^1 #minecraft:dash run summon marker ~ ~ ~ {Tags:["blue_puddle","entities_painter"]}
execute as @e[tag=deep_blue_projectile] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=deep_blue_projectile] at @s run particle dust{color:[0.33,0.33,1.0],scale:1} ~ ~ ~ 0.1 1 0.1 0 25
execute as @e[tag=deep_blue_projectile] at @s run tp @s ^ ^ ^0.6
execute at @a[scores={char=69,spell_painter_blue=..160}] run kill @e[tag=deep_blue_projectile]


execute as @e[tag=deep_blue_projectile] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=deep_blue_projectile] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

execute at @e[tag=deep_blue_projectile] positioned ~-.5 ~-1 ~-.5 as @e[tag=valid_spell_target,dx=0,dy=2,dz=0] unless score @s Team = @p[scores={char=69}] Team at @e[tag=deep_blue_projectile] run summon marker ~ ~ ~ {Tags:["blue_puddle","entities_painter"]}
execute if entity @e[tag=blue_puddle] run kill @e[tag=deep_blue_projectile]

execute at @e[tag=blue_puddle] positioned ~-3 ~-3 ~-3 as @e[tag=valid_spell_target,dx=5,dy=5,dz=5] unless score @s Team = @p[scores={char=69}] Team run effect give @s slowness 1 1

execute at @e[tag=blue_puddle,scores={fire_life=2}] positioned ~-3 ~-3 ~-3 as @a[tag=valid_spell_target,dx=5,dy=5,dz=5] unless score @s Team = @p[scores={char=69}] Team run scoreboard players set @s CC_grounded 60

execute as @e[tag=blue_puddle] at @s run rotate @s ~-7 ~
execute as @e[tag=blue_puddle] at @s run particle dust{color:[0.33,0.33,1.0],scale:1} ^ ^ ^4 0.1 0.2 0.1 0 5
execute as @e[tag=blue_puddle] at @s run particle dust{color:[0.33,0.33,1.0],scale:1} ^ ^ ^-4 0.1 0.2 0.1 0 5
execute as @e[tag=blue_puddle] at @s run particle dust{color:[0.33,0.33,1.0],scale:1} ^4 ^ ^ 0.1 0.2 0.1 0 5
execute as @e[tag=blue_puddle] at @s run particle dust{color:[0.33,0.33,1.0],scale:1} ^-4 ^ ^ 0.1 0.2 0.1 0 5
execute as @e[tag=blue_puddle] at @s run particle dust{color:[0.33,0.33,1.0],scale:1} ^3 ^ ^3 0.1 0.2 0.1 0 5
execute as @e[tag=blue_puddle] at @s run particle dust{color:[0.33,0.33,1.0],scale:1} ^-3 ^ ^-3 0.1 0.2 0.1 0 5
execute as @e[tag=blue_puddle] at @s run particle dust{color:[0.33,0.33,1.0],scale:1} ^3 ^ ^-3 0.1 0.2 0.1 0 5
execute as @e[tag=blue_puddle] at @s run particle dust{color:[0.33,0.33,1.0],scale:1} ^-3 ^ ^3 0.1 0.2 0.1 0 5
execute at @e[tag=blue_puddle] run particle dust{color:[0.33,0.33,1.0],scale:1} ~ ~ ~ 3 0.2 3 0 6
execute at @e[tag=blue_puddle] run particle dripping_water ~ ~ ~ 2 0.2 2 0 10

execute as @e[tag=blue_puddle] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=blue_puddle] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~


execute at @e[tag=blue_puddle,scores={fire_life=2}] run playsound minecraft:item.bucket.empty master @a[distance=..12] ~ ~ ~ 1 1.8 1

scoreboard players add @e[tag=blue_puddle] fire_life 1
kill @e[tag=blue_puddle,scores={fire_life=60..}]

scoreboard players remove @a[scores={char=69,spell_painter_blue=1..}] spell_painter_blue 1


# song of healing (yellow) ==============================================================================

scoreboard players set @a[scores={char=69,yellow=2..,spell_painter_yellow=0}] spell_painter_yellow 240
tag @a[scores={char=69,yellow=2..}] add color_reset
#title @a[scores={char=69,yellow=2..}] title [{"text":"song of healing","color":yellow}]

execute at @a[scores={char=69,spell_painter_yellow=240,CC_silence=0}] run playsound minecraft:item.bucket.empty master @a[distance=..12] ~ ~ ~ 0.8 1.9 1
execute at @a[scores={char=69,spell_painter_yellow=240,CC_silence=0}] run playsound minecraft:block.bell.use master @a[distance=..12] ~ ~ ~ 1 1.5 1
execute at @a[scores={char=69,spell_painter_yellow=240,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["yellow_area_thing","painter_stuff","entities_painter"]}

execute at @e[tag=yellow_area_thing] positioned ~-3 ~-3 ~-3 as @e[tag=valid_spell_target,dx=5,dy=5,dz=5] if score @s Team = @p[scores={char=69}] Team run effect give @s resistance 1

execute at @e[tag=yellow_area_thing] as @a[distance=4.1..] if score @s Team = @p[scores={char=69}] Team if data entity @s {attributes:[{id:"minecraft:knockback_resistance",modifiers:[{id:"minecraft:smells_like_satran_spirit"}]}]} run attribute @s knockback_resistance modifier remove smells_like_satran_spirit

execute at @e[tag=yellow_area_thing] as @a[distance=..4] if score @s Team = @p[scores={char=69}] Team unless data entity @s {attributes:[{id:"minecraft:knockback_resistance",modifiers:[{id:"minecraft:smells_like_satran_spirit"}]}]} run attribute @s knockback_resistance modifier add smells_like_satran_spirit 0.025 add_value

execute as @e[tag=yellow_area_thing] at @s run rotate @s ~7 ~
execute as @e[tag=yellow_area_thing] at @s run particle dust{color:[1.0,1.0,0.33],scale:1} ^ ^ ^4 0.1 0.2 0.1 0 5
execute as @e[tag=yellow_area_thing] at @s run particle dust{color:[1.0,1.0,0.33],scale:1} ^ ^ ^-4 0.1 0.2 0.1 0 5
execute as @e[tag=yellow_area_thing] at @s run particle dust{color:[1.0,1.0,0.33],scale:1} ^4 ^ ^ 0.1 0.2 0.1 0 5
execute as @e[tag=yellow_area_thing] at @s run particle dust{color:[1.0,1.0,0.33],scale:1} ^-4 ^ ^ 0.1 0.2 0.1 0 5
execute as @e[tag=yellow_area_thing] at @s run particle dust{color:[1.0,1.0,0.33],scale:1} ^3 ^ ^3 0.1 0.2 0.1 0 5
execute as @e[tag=yellow_area_thing] at @s run particle dust{color:[1.0,1.0,0.33],scale:1} ^-3 ^ ^-3 0.1 0.2 0.1 0 5
execute as @e[tag=yellow_area_thing] at @s run particle dust{color:[1.0,1.0,0.33],scale:1} ^3 ^ ^-3 0.1 0.2 0.1 0 5
execute as @e[tag=yellow_area_thing] at @s run particle dust{color:[1.0,1.0,0.33],scale:1} ^-3 ^ ^3 0.1 0.2 0.1 0 5

execute as @e[tag=yellow_area_thing] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=yellow_area_thing] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~


scoreboard players add @e[tag=yellow_area_thing] fire_life 1
execute unless entity @e[tag=yellow_area_thing] as @a if data entity @s {attributes:[{id:"minecraft:knockback_resistance",modifiers:[{id:"minecraft:smells_like_satran_spirit"}]}]} run attribute @s knockback_resistance modifier remove smells_like_satran_spirit
kill @e[tag=yellow_area_thing,scores={fire_life=80..}]

scoreboard players remove @a[scores={char=69,spell_painter_yellow=1..}] spell_painter_yellow 1

# phantom (purple) ==============================================================================

scoreboard players set @a[scores={char=69,red=1..,blue=1..,spell_painter_purple=0}] spell_painter_purple 320
tag @a[scores={char=69,red=1..,blue=1..}] add color_reset
#title @a[scores={char=69,red=1..,blue=1..}] title [{"text":"phantom","color":dark_purple}]

execute at @a[scores={char=69,spell_painter_purple=320,CC_silence=0}] run playsound block.trial_spawner.ambient_ominous master @a[distance=..12] ~ ~ ~ 0.8 1.2 1
execute at @a[scores={char=69,spell_painter_purple=320,CC_silence=0}] run playsound entity.ghast.warn master @a[distance=..12] ~ ~ ~ 0.2 0.8 1
execute at @a[scores={char=69,spell_painter_purple=320,CC_silence=0}] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["purple_phantom_spook","painter_stuff","entities_painter","projectile"]}
scoreboard players operation @e[tag=projectile,tag=purple_phantom_spook] Team = @p[scores={char=69}] Team
tp @e[tag=purple_phantom_spook,limit=1] @a[scores={char=69,spell_painter_purple=319..320},limit=1]

execute as @e[tag=purple_phantom_spook] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=purple_phantom_spook] at @s run particle dust{color:[0.67,0.0,0.67],scale:1} ~ ~1 ~ 0.4 0.8 0.4 0 8
execute as @e[tag=purple_phantom_spook] at @s run particle falling_dust{block_state:{Name:amethyst_block}} ~ ~1 ~ 0.4 0.8 0.4 0 4
execute as @e[tag=purple_phantom_spook] at @s run tp @s ^ ^ ^0.5
execute at @a[scores={char=69,spell_painter_purple=..290}] run kill @e[tag=purple_phantom_spook]

execute at @e[tag=purple_phantom_spook] positioned ~-.75 ~-.75 ~-.75 as @p[tag=valid_spell_target,dx=.5,dy=.5,dz=.5] unless score @s Team = @p[scores={char=69}] Team run tag @s add fear_painter

execute at @p[tag=fear_painter] run kill @e[tag=purple_phantom_spook]
scoreboard players set @p[tag=fear_painter] CC_silence 30
damage @n[tag=fear_painter] 3 generic by @p[scores={char=69}] from @p[scores={char=69}]
execute as @a[tag=fear_painter] at @s run tp @s ~ ~ ~ facing entity @p[distance=0.5..,scores={char=69}]
execute as @a[tag=fear_painter] at @s run tp @s ~ ~ ~ ~-180 ~
tag @e[tag=valid_spell_target,tag=fear_painter] remove fear_painter
scoreboard players add @e[tag=purple_phantom_spook] fire_life 1


data merge entity @e[tag=purple_phantom_spook,scores={fire_life=3},limit=1] {equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzIxY2I3Zjc2MTg4ZThmYmE0NTJkN2EwOTgyNzIzN2NmMDE5NTk1ZTVkMWQyODlmZmE0YTY0YjZlMWY3OTBkYiJ9fX0="}]}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":5909629}}}}

scoreboard players remove @a[scores={char=69,spell_painter_purple=1..}] spell_painter_purple 1

# rules of nature (green) ==============================================================================

scoreboard players set @a[scores={char=69,yellow=1..,blue=1..,spell_painter_green=0}] spell_painter_green 240
tag @a[scores={char=69,yellow=1..,blue=1..}] add color_reset
#title @a[scores={char=69,yellow=1..,blue=1..}] title [{"text":"rules of nature","color":green}]
execute at @a[scores={char=69,spell_painter_green=240,CC_silence=0}] run summon block_display ~ ~ ~ {Tags:["green_grenade_thing","entities_painter","painter_stuff","projectile"],teleport_duration:1,block_state: {Name: "minecraft:green_stained_glass"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.625f, 0.625f, 0.625f], translation: [-0.375f, 0f, -0.375f]}}
scoreboard players operation @e[tag=projectile,tag=green_grenade_thing] Team = @p[scores={char=69}] Team
execute at @a[scores={char=60,s1_timer=1,CC_silence=0}] run playsound entity.snowball.throw master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=69,spell_painter_green=240,CC_silence=0}] run playsound entity.snowball.throw master @a[distance=..10] ~ ~ ~ 0.5 0.8 1
tp @e[tag=green_grenade_thing,limit=1] @a[scores={char=69,spell_painter_green=240},limit=1]
execute at @a[scores={char=69,spell_painter_green=240},limit=1] run tp @e[tag=green_grenade_thing,limit=1] ~ ~0.8 ~

execute at @a[scores={char=69,spell_painter_green=226..240}] as @e[tag=green_grenade_thing] at @s run tp @s ^ ^ ^0.4
execute at @a[scores={char=69,spell_painter_green=216..225}] as @e[tag=green_grenade_thing] at @s run tp @s ^ ^ ^0.3
execute at @a[scores={char=69,spell_painter_green=216..225}] as @e[tag=green_grenade_thing] at @s run tp @s ~ ~-0.3 ~
execute at @a[scores={char=69,spell_painter_green=..215}] as @e[tag=green_grenade_thing] at @s run tp @s ^ ^ ^0.1
execute at @a[scores={char=69,spell_painter_green=..215}] as @e[tag=green_grenade_thing] at @s run tp @s ~ ~-0.5 ~
execute at @a[scores={char=69,spell_painter_green=..200}] as @e[tag=green_grenade_thing] at @s run tp @s ~ ~-0.6 ~

execute at @e[tag=green_grenade_thing] run particle dust{color:[0.0,0.67,0.0],scale:1} ~ ~ ~ 0.3 0.3 0.3 0 10

execute as @e[tag=green_grenade_thing] at @s unless block ^ ^.625 ^.625 #minecraft:dash run summon marker ~ ~ ~ {Tags:["green_thing_boom","painter_stuff","entities_painter","entities_painter"]}
execute as @e[tag=green_grenade_thing] at @s unless block ^ ^.625 ^.625 #minecraft:dash run kill @s

execute at @e[tag=green_thing_boom,scores={fire_life=2}] positioned ~-4.5 ~-4.5 ~-4.5 as @a[tag=valid_spell_target,dx=8,dy=8,dz=8] unless score @s Team = @p[scores={char=69}] Team run scoreboard players set @s CC_taunt 30
execute at @e[tag=green_thing_boom,scores={fire_life=2}] positioned ~-4.5 ~-4.5 ~-4.5 as @a[tag=valid_spell_target,dx=8,dy=8,dz=8] unless score @s Team = @p[scores={char=69}] Team run tag @s add taunt_source_painter
execute at @e[tag=green_thing_boom,scores={fire_life=2}] positioned ~-4.5 ~-4.5 ~-4.5 as @a[tag=valid_spell_target,dx=8,dy=8,dz=8] if score @s Team = @p[scores={char=69}] Team run effect give @s instant_health
execute at @e[tag=green_thing_boom,scores={fire_life=2}] run playsound entity.iron_golem.damage master @a[distance=..12] ~ ~ ~ 0.5 2 1
execute at @e[tag=green_thing_boom,scores={fire_life=2}] run playsound item.bucket.empty_tadpole master @a[distance=..12] ~ ~ ~ 1 1.5 1

execute as @a[tag=taunt_source_painter,scores={CC_taunt=2..}] at @s run rotate @s facing entity @e[tag=green_thing_boom,limit=1]
execute as @a[tag=taunt_source_painter,scores={CC_taunt=2..}] at @s unless entity @e[distance=..6,tag=green_thing_boom,limit=1] run scoreboard players set @s CC_taunt 2
tag @a[scores={CC_taunt=..1}] remove taunt_source_painter

execute at @e[tag=green_thing_boom] run particle entity_effect{color:[0.0,0.67,0.0,1.0]} ~ ~1 ~ 4 1 4 0 25
execute at @e[tag=green_thing_boom] run particle block{block_state:{Name:"minecraft:lime_stained_glass"}} ~ ~1 ~ 3 1 3 0 45

execute as @e[tag=green_thing_boom] at @s run rotate @s ~7 ~
execute as @e[tag=green_thing_boom] at @s positioned ~ ~1.5 ~ run particle dust{color:[0.33,1.0,0.33],scale:1} ^ ^ ^6 0.1 0.2 0.1 0 3
execute as @e[tag=green_thing_boom] at @s positioned ~ ~1.5 ~ run particle dust{color:[0.33,1.0,0.33],scale:1} ^ ^ ^-6 0.1 0.2 0.1 0 3
execute as @e[tag=green_thing_boom] at @s positioned ~ ~1.5 ~ run particle dust{color:[0.33,1.0,0.33],scale:1} ^6 ^ ^ 0.1 0.2 0.1 0 3
execute as @e[tag=green_thing_boom] at @s positioned ~ ~1.5 ~ run particle dust{color:[0.33,1.0,0.33],scale:1} ^-6 ^ ^ 0.1 0.2 0.1 0 3
execute as @e[tag=green_thing_boom] at @s positioned ~ ~1.5 ~ run particle dust{color:[0.33,1.0,0.33],scale:1} ^4.5 ^ ^4.5 0.1 0.2 0.1 0 3
execute as @e[tag=green_thing_boom] at @s positioned ~ ~1.5 ~ run particle dust{color:[0.33,1.0,0.33],scale:1} ^-4.5 ^ ^-4.5 0.1 0.2 0.1 0 3
execute as @e[tag=green_thing_boom] at @s positioned ~ ~1.5 ~ run particle dust{color:[0.33,1.0,0.33],scale:1} ^4.5 ^ ^-4.5 0.1 0.2 0.1 0 3
execute as @e[tag=green_thing_boom] at @s positioned ~ ~1.5 ~ run particle dust{color:[0.33,1.0,0.33],scale:1} ^-4.5 ^ ^4.5 0.1 0.2 0.1 0 3

scoreboard players add @e[tag=green_thing_boom] fire_life 1
kill @e[tag=green_thing_boom,scores={fire_life=32..}]

scoreboard players remove @a[scores={char=69,spell_painter_green=1..}] spell_painter_green 1


# sunset (orange) ==============================================================================

scoreboard players set @a[scores={char=69,red=1..,yellow=1..,spell_painter_orange=0}] spell_painter_orange 260
tag @a[scores={char=69,red=1..,yellow=1..}] add color_reset
#title @a[scores={char=69,red=1..,yellow=1..}] title [{"text":"sunsest","color":gold}]

#execute at @a[scores={char=69,spell_painter_orange=260,CC_silence=0}] run

execute at @a[scores={char=69,spell_painter_orange=260,CC_silence=0},team=yellow,x_rotation=-90..45] run scoreboard players set @p[team=yellow,distance=0.5..8] orange_buff 100
execute at @a[scores={char=69,spell_painter_orange=260,CC_silence=0},team=yellow,x_rotation=-90..45] unless entity @p[distance=0.5..8,team=yellow] run scoreboard players set @p[scores={char=69}] spell_painter_orange 0


execute at @a[scores={char=69,spell_painter_orange=260,CC_silence=0},team=purple,x_rotation=-90..45] run scoreboard players set @p[team=purple,distance=0.5..8] orange_buff 100
execute at @a[scores={char=69,spell_painter_orange=260,CC_silence=0},team=purple,x_rotation=-90..45] unless entity @p[distance=0.5..8,team=purple] run scoreboard players set @p[scores={char=69}] spell_painter_orange 0

execute at @a[scores={char=69,spell_painter_orange=260,CC_silence=0},x_rotation=44..90] run scoreboard players set @p[scores={char=69}] orange_buff 100

execute at @a[scores={orange_buff=99}] run particle dust{color:[1.0,0.67,0.0],scale:1} ~ ~1.5 ~ 0.5 1.5 0.5 0 50
execute at @a[scores={orange_buff=99}] run particle dust{color:[1.0,0.67,0.0],scale:1} ~ ~1.5 ~ 0.1 2 0.1 0 100
execute at @a[scores={orange_buff=99}] run particle dust{color:[1.0,0.67,0.0],scale:1} ~ ~0.5 ~ 2 0.1 2 0 50
execute at @a[scores={orange_buff=99}] run particle wax_on ~ ~0.5 ~ 2 0.1 2 0 30

execute at @a[scores={orange_buff=98}] run playsound item.bucket.empty_tadpole master @a[distance=..12] ~ ~ ~ 1 1.2 1
execute at @a[scores={orange_buff=98}] run playsound entity.zombie_villager.cure ambient @a[distance=..12] ~ ~ ~ 0.1 2 1

execute as @a[scores={orange_buff=3..}] run attribute @s attack_damage modifier add faded-colours 1 add_value
execute as @a[scores={orange_buff=1..2}] run attribute @s attack_damage modifier remove faded-colours


execute at @e[scores={orange_buff=80}] run playsound block.fire.extinguish master @a[distance=..8] ~ ~ ~ 0.2 1.5 1
execute at @e[scores={orange_buff=80}] run particle dust{color:[1.0,0.67,0.0],scale:1} ~ ~0.5 ~ 2 0.1 2 0 120
execute at @e[scores={orange_buff=80}] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=69}] Team run attribute @s minecraft:knockback_resistance base set 100
execute at @e[scores={orange_buff=80}] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=69}] Team run damage @s 1 generic by @p[scores={char=69}] from @p[scores={char=69}]
execute at @e[scores={orange_buff=80}] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=69}] Team run attribute @s minecraft:knockback_resistance base set 0

execute at @e[scores={orange_buff=60}] run playsound block.fire.extinguish master @a[distance=..8] ~ ~ ~ 0.2 1.5 1
execute at @e[scores={orange_buff=60}] run particle dust{color:[1.0,0.67,0.0],scale:1} ~ ~0.5 ~ 2 0.1 2 0 120
execute at @e[scores={orange_buff=60}] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=69}] Team run attribute @s minecraft:knockback_resistance base set 100
execute at @e[scores={orange_buff=60}] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=69}] Team run damage @s 1 generic by @p[scores={char=69}] from @p[scores={char=69}]
execute at @e[scores={orange_buff=60}] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=69}] Team run attribute @s minecraft:knockback_resistance base set 0

execute at @e[scores={orange_buff=40}] run playsound block.fire.extinguish master @a[distance=..8] ~ ~ ~ 0.2 1.5 1
execute at @e[scores={orange_buff=40}] run particle dust{color:[1.0,0.67,0.0],scale:1} ~ ~0.5 ~ 2 0.1 2 0 120
execute at @e[scores={orange_buff=40}] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=69}] Team run attribute @s minecraft:knockback_resistance base set 100
execute at @e[scores={orange_buff=40}] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=69}] Team run damage @s 1 generic by @p[scores={char=69}] from @p[scores={char=69}]
execute at @e[scores={orange_buff=40}] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=69}] Team run attribute @s minecraft:knockback_resistance base set 0

execute at @e[scores={orange_buff=20}] run playsound block.fire.extinguish master @a[distance=..8] ~ ~ ~ 0.2 1.5 1
execute at @e[scores={orange_buff=20}] run particle dust{color:[1.0,0.67,0.0],scale:1} ~ ~0.5 ~ 2 0.1 2 0 120
execute at @e[scores={orange_buff=20}] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=69}] Team run attribute @s minecraft:knockback_resistance base set 100
execute at @e[scores={orange_buff=20}] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=69}] Team run damage @s 1 generic by @p[scores={char=69}] from @p[scores={char=69}]
execute at @e[scores={orange_buff=20}] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=69}] Team run attribute @s minecraft:knockback_resistance base set 0

execute at @e[scores={orange_buff=2}] run playsound block.fire.extinguish master @a[distance=..8] ~ ~ ~ 0.2 1.5 1
execute at @e[scores={orange_buff=2}] run particle dust{color:[1.0,0.67,0.0],scale:1} ~ ~0.5 ~ 2 0.1 2 0 120
execute at @e[scores={orange_buff=2}] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=69}] Team run attribute @s minecraft:knockback_resistance base set 100
execute at @e[scores={orange_buff=2}] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=69}] Team run damage @s 1 generic by @p[scores={char=69}] from @p[scores={char=69}]
execute at @e[scores={orange_buff=2}] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=69}] Team run attribute @s minecraft:knockback_resistance base set 0

scoreboard players remove @a[scores={orange_buff=1..}] orange_buff 1

scoreboard players remove @a[scores={spell_painter_orange=1..}] spell_painter_orange 1



# color reset


scoreboard players set @a[scores={char=69},tag=color_reset] red 0
scoreboard players set @a[scores={char=69},tag=color_reset] yellow 0
scoreboard players set @a[scores={char=69},tag=color_reset] blue 0
#execute at @a[scores={char=69},tag=color_reset] run particle dust{color:[1.0,1.0,1.0],scale:1} ~ ~1 ~ 0.5 0.6 0.5 0 10
tag @a remove color_reset

# painter

scoreboard players set @a[scores={s1_timer=1,char=69}] spellCD1 10
scoreboard players add @a[scores={s1_timer=1..,char=69}] s1_timer 1
scoreboard players set @a[scores={s1_timer=11..,char=69}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=69}] spellCD2 10
scoreboard players add @a[scores={s2_timer=1..,char=69}] s2_timer 1
scoreboard players set @a[scores={s2_timer=11..,char=69}] s2_timer 0

scoreboard players set @a[scores={s3_timer=1,char=69}] spellCD3 10
scoreboard players add @a[scores={s3_timer=1..,char=69}] s3_timer 1
scoreboard players set @a[scores={s3_timer=11..,char=69}] s3_timer 0

execute as @a[scores={char=69}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword",Slot:0b}]}] run clear @a[scores={char=69}] iron_sword
item replace entity @a[scores={char=69}] hotbar.0 with minecraft:iron_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Dirk"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:1.5,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1

execute as @a[scores={char=69}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=69}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=69,red=0}] hotbar.1 with carrot_on_a_stick[minecraft:custom_name={text:"Red",color:"dark_aqua",bold:1b},item_model="red_dye",custom_data={s1:1}] 1
item replace entity @a[scores={char=69,red=1..}] hotbar.1 with carrot_on_a_stick[minecraft:custom_name={text:"Red",color:"dark_aqua",bold:1b},item_model="red_dye",custom_data={s1:1}] 1
item replace entity @a[scores={char=69,blue=1..}] hotbar.1 with carrot_on_a_stick[minecraft:custom_name={text:"Purple",color:"dark_aqua",bold:1b},item_model="purple_dye",custom_data={s1:1}] 1
item replace entity @a[scores={char=69,yellow=1..}] hotbar.1 with carrot_on_a_stick[minecraft:custom_name={text:"Orange",color:"dark_aqua",bold:1b},item_model="orange_dye",custom_data={s1:1}] 1

execute as @a[scores={char=69}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=69}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=69,yellow=0}] hotbar.2 with warped_fungus_on_a_stick[minecraft:custom_name={text:"Yellow",color:"dark_aqua",bold:1b},item_model="yellow_dye",custom_data={s2:1}] 1
item replace entity @a[scores={char=69,yellow=1..}] hotbar.2 with warped_fungus_on_a_stick[minecraft:custom_name={text:"Yellow",color:"dark_aqua",bold:1b},item_model="yellow_dye",custom_data={s2:1}] 1
item replace entity @a[scores={char=69,blue=1..}] hotbar.2 with warped_fungus_on_a_stick[minecraft:custom_name={text:"Green",color:"dark_aqua",bold:1b},item_model="green_dye",custom_data={s2:1}] 1
item replace entity @a[scores={char=69,red=1..}] hotbar.2 with warped_fungus_on_a_stick[minecraft:custom_name={text:"Orange",color:"dark_aqua",bold:1b},item_model="orange_dye",custom_data={s2:1}] 1

execute as @a[scores={char=69}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:3b}]}] run clear @a[scores={char=69}] carrot_on_a_stick[custom_data={s3:1}]
item replace entity @a[scores={char=69,blue=0}] hotbar.3 with carrot_on_a_stick[minecraft:custom_name={text:"Blue",color:"dark_aqua",bold:1b},item_model="blue_dye",custom_data={s3:1}] 1
item replace entity @a[scores={char=69,blue=1..}] hotbar.3 with carrot_on_a_stick[minecraft:custom_name={text:"Blue",color:"dark_aqua",bold:1b},item_model="blue_dye",custom_data={s3:1}] 1
item replace entity @a[scores={char=69,red=1..}] hotbar.3 with carrot_on_a_stick[minecraft:custom_name={text:"Purple",color:"dark_aqua",bold:1b},item_model="purple_dye",custom_data={s3:1}] 1
item replace entity @a[scores={char=69,yellow=1..}] hotbar.3 with carrot_on_a_stick[minecraft:custom_name={text:"Green",color:"dark_aqua",bold:1b},item_model="green_dye",custom_data={s3:1}] 1

