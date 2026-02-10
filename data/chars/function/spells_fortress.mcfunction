kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:copper_axe"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone"}}]


# I'M FUCKING INVINCIBLE

scoreboard players set @a[scores={char=74,CC_silence=1..}] fortress_shields 0


execute as @a[scores={char=74}] run title @s[scores={char=74,fortress_shields=0}] actionbar [{"text":""},{text:"[",bold:1b,color:"dark_red",type:"text"},{text:" Shield Power: ",color:"gray",type:"text"},{score:{name:"@s",objective:"heat_shield_power"},color:"yellow",type:"score"},{text:"/",color:"gold",type:"text",bold:1b},{text:"8 ",color:"yellow",type:"text"},{text:"|",color:"dark_red",type:"text",bold:1b},{text:" --- ",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_red",type:"text"}]
execute as @a[scores={char=74}] run title @s[scores={char=74,fortress_shields=1..10}] actionbar [{"text":""},{text:"[",bold:1b,color:"dark_red",type:"text"},{text:" Shield Power: ",color:"gray",type:"text"},{score:{name:"@s",objective:"heat_shield_power"},color:"yellow",type:"score"},{text:"/",color:"gold",type:"text",bold:1b},{text:"8 ",color:"yellow",type:"text"},{text:"|",color:"dark_red",type:"text",bold:1b},{text:" === ",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_red",type:"text"}]
execute as @a[scores={char=74}] run title @s[scores={char=74,fortress_shields=11..20}] actionbar [{"text":""},{text:"[",bold:1b,color:"dark_red",type:"text"},{text:" Shield Power: ",color:"gray",type:"text"},{score:{name:"@s",objective:"heat_shield_power"},color:"yellow",type:"score"},{text:"/",color:"gold",type:"text",bold:1b},{text:"8 ",color:"yellow",type:"text"},{text:"|",color:"dark_red",type:"text",bold:1b},{text:" =",color:"yellow",type:"text"},{text:"== ",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_red",type:"text"}]
execute as @a[scores={char=74}] run title @s[scores={char=74,fortress_shields=21..29}] actionbar [{"text":""},{text:"[",bold:1b,color:"dark_red",type:"text"},{text:" Shield Power: ",color:"gray",type:"text"},{score:{name:"@s",objective:"heat_shield_power"},color:"yellow",type:"score"},{text:"/",color:"gold",type:"text",bold:1b},{text:"8 ",color:"yellow",type:"text"},{text:"|",color:"dark_red",type:"text",bold:1b},{text:" ==",color:"yellow",type:"text"},{text:"= ",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_red",type:"text"}]
execute as @a[scores={char=74}] run title @s[scores={char=74,fortress_shields=30..}] actionbar [{"text":""},{text:"[",bold:1b,color:"dark_red",type:"text"},{text:" Shield Power: ",color:"gray",type:"text"},{score:{name:"@s",objective:"heat_shield_power"},color:"yellow",type:"score"},{text:"/",color:"gold",type:"text",bold:1b},{text:"8 ",color:"yellow",type:"text"},{text:"|",color:"dark_red",type:"text",bold:1b},{text:" ===",color:"yellow",type:"text"},{text:" ",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_red",type:"text"}]

execute as @a[scores={char=74}] run title @s[scores={char=74,heat_shields_cooldown=1..19}] actionbar [{"text":""},{text:"[",bold:1b,color:"dark_red",type:"text"},{text:" Shield Power: ",color:"gray",type:"text"},{score:{name:"@s",objective:"heat_shield_power"},color:"yellow",type:"score"},{text:"/",color:"gold",type:"text",bold:1b},{text:"8 ",color:"yellow",type:"text"},{text:"|",color:"dark_red",type:"text",bold:1b},{text:" =",color:"dark_gray",type:"text"},{text:"-- ",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_red",type:"text"}]
execute as @a[scores={char=74}] run title @s[scores={char=74,heat_shields_cooldown=20..39}] actionbar [{"text":""},{text:"[",bold:1b,color:"dark_red",type:"text"},{text:" Shield Power: ",color:"gray",type:"text"},{score:{name:"@s",objective:"heat_shield_power"},color:"yellow",type:"score"},{text:"/",color:"gold",type:"text",bold:1b},{text:"8 ",color:"yellow",type:"text"},{text:"|",color:"dark_red",type:"text",bold:1b},{text:" ==",color:"dark_gray",type:"text"},{text:"- ",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_red",type:"text"}]
execute as @a[scores={char=74}] run title @s[scores={char=74,heat_shields_cooldown=40..}] actionbar [{"text":""},{text:"[",bold:1b,color:"dark_red",type:"text"},{text:" Shield Power: ",color:"gray",type:"text"},{score:{name:"@s",objective:"heat_shield_power"},color:"yellow",type:"score"},{text:"/",color:"gold",type:"text",bold:1b},{text:"8 ",color:"yellow",type:"text"},{text:"|",color:"dark_red",type:"text",bold:1b},{text:" === ",color:"dark_gray",type:"text"},{text:"]",bold:1b,color:"dark_red",type:"text"}]

scoreboard players set @a[scores={char=74,heat_shield_power=..-1}] heat_shield_power 0

scoreboard players add @a[scores={char=74,heat_shield_power=..7}] heat_shield_timer 1
scoreboard players add @a[scores={char=74,heat_shield_power=..7,heat_shield_timer=80..}] heat_shield_power 1
scoreboard players set @a[scores={char=74,heat_shield_timer=80..,heat_shield_power=..7}] heat_shield_timer 0
scoreboard players set @a[scores={char=74,heat_shield_power=8..}] heat_shield_timer 0
scoreboard players set @a[scores={char=74,universal_sneak=1..}] heat_shield_timer 0

scoreboard players add @a[scores={char=74,fortress_shields=30..,heat_shield_power=1..}] shield_decline 1
scoreboard players remove @a[scores={char=74,shield_decline=20..,heat_shield_power=1..}] heat_shield_power 1
scoreboard players set @a[scores={char=74,shield_decline=20..}] shield_decline 0

scoreboard players add @a[scores={char=74,universal_sneak=1..,heat_shield_power=1..,heat_shields_cooldown=0}] fortress_shields 1
scoreboard players set @a[scores={char=74,universal_sneak=0,fortress_shields=1..}] heat_shields_cooldown 60
scoreboard players set @a[scores={char=74,universal_sneak=0}] fortress_shields 0
scoreboard players set @a[scores={char=74,universal_sneak=0}] shield_decline 0
scoreboard players set @a[scores={char=74,heat_shield_power=..0}] fortress_shields 0

execute at @a[scores={char=74,heat_shields_cooldown=59}] run playsound entity.iron_golem.attack master @a[distance=..10] ~ ~ ~ 1 .5 1
scoreboard players remove @a[scores={char=74,heat_shields_cooldown=1..}] heat_shields_cooldown 1

execute unless entity @a[scores={char=74,fortress_shields=1..}] run kill @e[tag=fortress_shield_entities]

execute at @a[scores={char=74,fortress_shields=11}] run playsound block.piston.extend master @a[distance=..10] ~ ~ ~ 1 1 1
execute at @a[scores={char=74,fortress_shields=11}] run playsound block.piston.extend master @a[distance=..10] ~ ~ ~ 1 1.4 1
execute at @a[scores={char=74,fortress_shields=21}] run playsound block.piston.extend master @a[distance=..10] ~ ~ ~ 1 1.8 1

execute at @a[scores={char=74,fortress_shields=30}] run playsound entity.iron_golem.attack master @a[distance=..10] ~ ~ ~ 1 .2 1
execute at @a[scores={char=74,fortress_shields=30}] run playsound entity.iron_golem.repair master @a[distance=..10] ~ ~ ~ 1 .8 1
execute at @a[scores={char=74,fortress_shields=1..}] unless entity @e[tag=fortress_shields_core] run summon marker ~ ~ ~ {Tags:["fortress_shields_core","fortress_shield_entities","entities_fortress"]}
tp @e[tag=fortress_shields_core,limit=1] @a[scores={char=74,fortress_shields=1},limit=1]
execute store result entity @e[tag=fortress_shields_core,limit=1] Rotation[1] float 1 run clear

execute at @a[scores={char=74,fortress_shields=1..}] run tp @e[tag=fortress_shields_core] ~ ~ ~

execute at @e[tag=fortress_shields_core] unless entity @e[tag=fortress_shield_1] run summon armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1,Invulnerable:1,Tags:["fortress_shield_1","fortress_shield_entities","entities_fortress"]}
execute at @e[tag=fortress_shields_core] unless entity @e[tag=fortress_shield_2] run summon armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1,Invulnerable:1,Tags:["fortress_shield_2","fortress_shield_entities","entities_fortress"]}
execute at @e[tag=fortress_shields_core] unless entity @e[tag=fortress_shield_3] run summon armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1,Invulnerable:1,Tags:["fortress_shield_3","fortress_shield_entities","entities_fortress"]}
execute at @e[tag=fortress_shields_core] unless entity @e[tag=fortress_shield_4] run summon armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1,Invulnerable:1,Tags:["fortress_shield_4","fortress_shield_entities","entities_fortress"]}
execute at @e[tag=fortress_shields_core] unless entity @e[tag=fortress_shield_5] run summon armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1,Invulnerable:1,Tags:["fortress_shield_5","fortress_shield_entities","entities_fortress"]}

execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=fortress_shield_1] ^1 ^ ^0.6
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=fortress_shield_2] ^0.5 ^ ^0.8
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=fortress_shield_3] ^ ^ ^1
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=fortress_shield_4] ^-0.5 ^ ^0.8
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=fortress_shield_5] ^-1 ^ ^0.6

execute at @a[scores={char=74,fortress_shields=1..11}] unless entity @e[tag=shield_rising_1_1] run summon block_display ~ ~ ~ {Tags:["shield_rising_1_1","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,0.4f],scale:[0.2f,0.2f,0.5f]},block_state:{Name:"minecraft:crimson_hyphae"}}
execute at @a[scores={char=74,fortress_shields=1..11}] unless entity @e[tag=shield_rising_1_2] run summon block_display ~ ~ ~ {Tags:["shield_rising_1_2","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,0.4f],scale:[0.2f,0.2f,0.5f]},block_state:{Name:"minecraft:crimson_hyphae"}}
execute at @a[scores={char=74,fortress_shields=1..11}] unless entity @e[tag=shield_rising_1_3] run summon block_display ~ ~ ~ {Tags:["shield_rising_1_3","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,0.4f],scale:[0.2f,0.2f,0.5f]},block_state:{Name:"minecraft:crimson_hyphae"}}
execute at @a[scores={char=74,fortress_shields=1..11}] unless entity @e[tag=shield_rising_1_4] run summon block_display ~ ~ ~ {Tags:["shield_rising_1_4","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,0.4f],scale:[0.2f,0.2f,0.5f]},block_state:{Name:"minecraft:crimson_hyphae"}}
execute at @a[scores={char=74,fortress_shields=1..11}] unless entity @e[tag=shield_rising_1_5] run summon block_display ~ ~ ~ {Tags:["shield_rising_1_5","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,0.4f],scale:[0.2f,0.2f,0.5f]},block_state:{Name:"minecraft:crimson_hyphae"}}

execute at @a[scores={char=74,fortress_shields=11..21}] unless entity @e[tag=shield_rising_2_1] run summon block_display ~ ~ ~ {Tags:["shield_rising_2_1","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,0.1f],scale:[0.15f,0.15f,0.5f]},block_state:{Name:"minecraft:crimson_hyphae"}}
execute at @a[scores={char=74,fortress_shields=11..21}] unless entity @e[tag=shield_rising_2_2] run summon block_display ~ ~ ~ {Tags:["shield_rising_2_2","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,0.1f],scale:[0.15f,0.15f,0.5f]},block_state:{Name:"minecraft:crimson_hyphae"}}
execute at @a[scores={char=74,fortress_shields=11..21}] unless entity @e[tag=shield_rising_2_3] run summon block_display ~ ~ ~ {Tags:["shield_rising_2_3","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,0.1f],scale:[0.15f,0.15f,0.5f]},block_state:{Name:"minecraft:crimson_hyphae"}}
execute at @a[scores={char=74,fortress_shields=11..21}] unless entity @e[tag=shield_rising_2_4] run summon block_display ~ ~ ~ {Tags:["shield_rising_2_4","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,0.1f],scale:[0.15f,0.15f,0.5f]},block_state:{Name:"minecraft:crimson_hyphae"}}
execute at @a[scores={char=74,fortress_shields=11..21}] unless entity @e[tag=shield_rising_2_5] run summon block_display ~ ~ ~ {Tags:["shield_rising_2_5","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,0.1f],scale:[0.15f,0.15f,0.5f]},block_state:{Name:"minecraft:crimson_hyphae"}}

execute at @a[scores={char=74,fortress_shields=22..31}] unless entity @e[tag=shield_rising_3_1] run summon block_display ~ ~ ~ {Tags:["shield_rising_3_1","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.06f],scale:[0.7f,1f,0.12f]},block_state:{Name:"minecraft:red_stained_glass"}}
execute at @a[scores={char=74,fortress_shields=21..31}] unless entity @e[tag=shield_rising_3_2] run summon block_display ~ ~ ~ {Tags:["shield_rising_3_2","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.06f],scale:[0.7f,1f,0.12f]},block_state:{Name:"minecraft:red_stained_glass"}}
execute at @a[scores={char=74,fortress_shields=21..31}] unless entity @e[tag=shield_rising_3_3] run summon block_display ~ ~ ~ {Tags:["shield_rising_3_3","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.06f],scale:[0.7f,1f,0.12f]},block_state:{Name:"minecraft:red_stained_glass"}}
execute at @a[scores={char=74,fortress_shields=21..31}] unless entity @e[tag=shield_rising_3_4] run summon block_display ~ ~ ~ {Tags:["shield_rising_3_4","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.06f],scale:[0.7f,1f,0.12f]},block_state:{Name:"minecraft:red_stained_glass"}}
execute at @a[scores={char=74,fortress_shields=21..31}] unless entity @e[tag=shield_rising_3_5] run summon block_display ~ ~ ~ {Tags:["shield_rising_3_5","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.06f],scale:[0.7f,1f,0.12f]},block_state:{Name:"minecraft:red_stained_glass"}}

execute at @a[scores={char=74,fortress_shields=30..}] unless entity @e[tag=fortress_shield_1_visual] run summon block_display ~ ~ ~ {Tags:["fortress_shield_1_visual","shield_magma_part","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.075f],scale:[0.7f,1f,0.15f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=74,fortress_shields=30..}] unless entity @e[tag=fortress_shield_2_visual] run summon block_display ~ ~ ~ {Tags:["fortress_shield_2_visual","shield_magma_part","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.075f],scale:[0.7f,1f,0.15f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=74,fortress_shields=30..}] unless entity @e[tag=fortress_shield_3_visual] run summon block_display ~ ~ ~ {Tags:["fortress_shield_3_visual","shield_magma_part","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.075f],scale:[0.7f,1f,0.15f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=74,fortress_shields=30..}] unless entity @e[tag=fortress_shield_4_visual] run summon block_display ~ ~ ~ {Tags:["fortress_shield_4_visual","shield_magma_part","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.075f],scale:[0.7f,1f,0.15f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=74,fortress_shields=30..}] unless entity @e[tag=fortress_shield_5_visual] run summon block_display ~ ~ ~ {Tags:["fortress_shield_5_visual","shield_magma_part","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.075f],scale:[0.7f,1f,0.15f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=74,fortress_shields=30..}] unless entity @e[tag=fortress_shield_6_visual] run summon block_display ~ ~ ~ {Tags:["fortress_shield_6_visual","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.06f],scale:[0.7f,1f,0.12f]},block_state:{Name:"minecraft:red_stained_glass"}}
execute at @a[scores={char=74,fortress_shields=30..}] unless entity @e[tag=fortress_shield_7_visual] run summon block_display ~ ~ ~ {Tags:["fortress_shield_7_visual","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.06f],scale:[0.7f,1f,0.12f]},block_state:{Name:"minecraft:red_stained_glass"}}
execute at @a[scores={char=74,fortress_shields=30..}] unless entity @e[tag=fortress_shield_8_visual] run summon block_display ~ ~ ~ {Tags:["fortress_shield_8_visual","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.06f],scale:[0.7f,1f,0.12f]},block_state:{Name:"minecraft:red_stained_glass"}}
execute at @a[scores={char=74,fortress_shields=30..}] unless entity @e[tag=fortress_shield_9_visual] run summon block_display ~ ~ ~ {Tags:["fortress_shield_9_visual","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.06f],scale:[0.7f,1f,0.12f]},block_state:{Name:"minecraft:red_stained_glass"}}
execute at @a[scores={char=74,fortress_shields=30..}] unless entity @e[tag=fortress_shield_10_visual] run summon block_display ~ ~ ~ {Tags:["fortress_shield_10_visual","fortress_shield_entities","fortress_shield_visuals","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.06f],scale:[0.7f,1f,0.12f]},block_state:{Name:"minecraft:red_stained_glass"}}

execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=shield_rising_1_1] ^1 ^0.5 ^0.5
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=shield_rising_1_2] ^0.6 ^0.5 ^1
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=shield_rising_1_3] ^ ^0.5 ^1.2
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=shield_rising_1_4] ^-0.6 ^0.5 ^1
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=shield_rising_1_5] ^-1 ^0.5 ^0.5
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=shield_rising_2_1] ^1 ^0.5 ^0.5
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=shield_rising_2_2] ^0.6 ^0.5 ^1
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=shield_rising_2_3] ^ ^0.5 ^1.2
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=shield_rising_2_4] ^-0.6 ^0.5 ^1
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=shield_rising_2_5] ^-1 ^0.5 ^0.5
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=shield_rising_3_1] ^1 ^0.5 ^0.5
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=shield_rising_3_2] ^0.6 ^0.5 ^1
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=shield_rising_3_3] ^ ^0.5 ^1.2
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=shield_rising_3_4] ^-0.6 ^0.5 ^1
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=shield_rising_3_5] ^-1 ^0.5 ^0.5


execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=fortress_shield_1_visual] ^1 ^0.5 ^0.5
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=fortress_shield_2_visual] ^0.6 ^0.5 ^1
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=fortress_shield_3_visual] ^ ^0.5 ^1.2
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=fortress_shield_4_visual] ^-0.6 ^0.5 ^1
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=fortress_shield_5_visual] ^-1 ^0.5 ^0.5
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=fortress_shield_6_visual] ^1 ^1 ^0.5
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=fortress_shield_7_visual] ^0.6 ^1 ^1
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=fortress_shield_8_visual] ^ ^1 ^1.2
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=fortress_shield_9_visual] ^-0.6 ^1 ^1
execute as @e[tag=fortress_shields_core] at @s run tp @e[tag=fortress_shield_10_visual] ^-1 ^1 ^0.5

execute as @e[tag=fortress_shield_visuals] run rotate @s facing entity @p[scores={char=74}]
execute as @e[tag=fortress_shield_visuals] store result entity @s Rotation[1] float 1 run clear

execute at @e[tag=shield_magma_part,tag=!fortress_shields_core] as @e[distance=..2,tag=projectile] unless score @s Team = @p[scores={char=74}] Team run kill @s

scoreboard players add @e[tag=fortress_shields_core] heat_shield_power 1

execute as @e[tag=shield_magma_part] at @s run particle flame ^ ^0.1 ^-0.2 0.2 0.4 0.2 0.01 1

# crash and burn

execute at @a[scores={char=74,s1_timer=1,CC_silence=0}] run playsound entity.zombie.attack_iron_door master @a[distance=..12] ~ ~ ~ 0.5 0.6 1
execute at @a[scores={char=74,s1_timer=1,CC_silence=0}] run playsound entity.dragon_fireball.explode master @a[distance=..12] ~ ~ ~ 0.8 1.5 1
execute at @a[scores={char=74,s1_timer=1,fortress_shields=..29,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.25f,-0.35f],scale:[0.7f,0.5f,0.7f]},block_state:{Name:"minecraft:red_stained_glass"},Tags:["crash_cone_1","crash_and_burn_projectiles","non_explosive_crash","projectile","entities_fortress"]}
execute at @a[scores={char=74,s1_timer=1,fortress_shields=..29,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.25f,-0.35f],scale:[0.7f,0.5f,0.7f]},block_state:{Name:"minecraft:red_stained_glass"},Tags:["crash_cone_2","crash_and_burn_projectiles","non_explosive_crash","projectile","entities_fortress"]}
execute at @a[scores={char=74,s1_timer=1,fortress_shields=..29,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.25f,-0.35f],scale:[0.7f,0.5f,0.7f]},block_state:{Name:"minecraft:red_stained_glass"},Tags:["crash_cone_3","crash_and_burn_projectiles","non_explosive_crash","projectile","entities_fortress"]}
execute at @a[scores={char=74,s1_timer=1,fortress_shields=..29,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.25f,-0.35f],scale:[0.7f,0.5f,0.7f]},block_state:{Name:"minecraft:red_stained_glass"},Tags:["crash_cone_4","crash_and_burn_projectiles","non_explosive_crash","projectile","entities_fortress"]}
execute at @a[scores={char=74,s1_timer=1,fortress_shields=..29,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.25f,-0.35f],scale:[0.7f,0.5f,0.7f]},block_state:{Name:"minecraft:red_stained_glass"},Tags:["crash_cone_5","crash_and_burn_projectiles","non_explosive_crash","projectile","entities_fortress"]}
execute at @a[scores={char=74,s1_timer=1,fortress_shields=..29,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.25f,-0.35f],scale:[0.7f,0.5f,0.7f]},block_state:{Name:"minecraft:red_stained_glass"},Tags:["crash_cone_6","crash_and_burn_projectiles","non_explosive_crash","projectile","entities_fortress"]}
execute at @a[scores={char=74,s1_timer=1,fortress_shields=..29,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.25f,-0.35f],scale:[0.7f,0.5f,0.7f]},block_state:{Name:"minecraft:red_stained_glass"},Tags:["crash_cone_7","crash_and_burn_projectiles","non_explosive_crash","projectile","entities_fortress"]}

execute at @a[scores={char=74,s1_timer=1,fortress_shields=30..,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.25f,-0.35f],scale:[0.7f,0.5f,0.7f]},block_state:{Name:"minecraft:magma_block"},Tags:["crash_cone_1","crash_and_burn_projectiles","explosive_crash","projectile","entities_fortress"]}
execute at @a[scores={char=74,s1_timer=1,fortress_shields=30..,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.25f,-0.35f],scale:[0.7f,0.5f,0.7f]},block_state:{Name:"minecraft:magma_block"},Tags:["crash_cone_2","crash_and_burn_projectiles","explosive_crash","projectile","entities_fortress"]}
execute at @a[scores={char=74,s1_timer=1,fortress_shields=30..,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.25f,-0.35f],scale:[0.7f,0.5f,0.7f]},block_state:{Name:"minecraft:magma_block"},Tags:["crash_cone_3","crash_and_burn_projectiles","explosive_crash","projectile","entities_fortress"]}
execute at @a[scores={char=74,s1_timer=1,fortress_shields=30..,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.25f,-0.35f],scale:[0.7f,0.5f,0.7f]},block_state:{Name:"minecraft:magma_block"},Tags:["crash_cone_4","crash_and_burn_projectiles","explosive_crash","projectile","entities_fortress"]}
execute at @a[scores={char=74,s1_timer=1,fortress_shields=30..,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.25f,-0.35f],scale:[0.7f,0.5f,0.7f]},block_state:{Name:"minecraft:magma_block"},Tags:["crash_cone_5","crash_and_burn_projectiles","explosive_crash","projectile","entities_fortress"]}
execute at @a[scores={char=74,s1_timer=1,fortress_shields=30..,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.25f,-0.35f],scale:[0.7f,0.5f,0.7f]},block_state:{Name:"minecraft:magma_block"},Tags:["crash_cone_6","crash_and_burn_projectiles","explosive_crash","projectile","entities_fortress"]}
execute at @a[scores={char=74,s1_timer=1,fortress_shields=30..,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.25f,-0.35f],scale:[0.7f,0.5f,0.7f]},block_state:{Name:"minecraft:magma_block"},Tags:["crash_cone_7","crash_and_burn_projectiles","explosive_crash","projectile","entities_fortress"]}
scoreboard players set @a[scores={char=74,s1_timer=1,fortress_shields=30..,CC_silence=0}] heat_shields_cooldown 60
scoreboard players set @a[scores={char=74,s1_timer=1,fortress_shields=30..,CC_silence=0}] fortress_shields 0

scoreboard players operation @e[tag=projectile,tag=crash_and_burn_projectiles] Team = @p[scores={char=74}] Team
execute as @e[tag=crash_and_burn_projectiles] run tp @p[scores={char=53,s1_timer=1}]
execute at @a[scores={char=74,s2_timer=1,CC_silence=0}] as @e[tag=crash_and_burn_projectiles] at @s run tp @s ~ ~0.5 ~ 

execute at @a[scores={char=74,s1_timer=1,CC_silence=0}] as @e[tag=crash_cone_1] run rotate @s ~30 0
execute at @a[scores={char=74,s1_timer=1,CC_silence=0}] as @e[tag=crash_cone_2] run rotate @s ~20 0
execute at @a[scores={char=74,s1_timer=1,CC_silence=0}] as @e[tag=crash_cone_3] run rotate @s ~10 0
execute at @a[scores={char=74,s1_timer=1,CC_silence=0}] as @e[tag=crash_cone_4] run rotate @s ~ 0
execute at @a[scores={char=74,s1_timer=1,CC_silence=0}] as @e[tag=crash_cone_5] run rotate @s ~-10 0
execute at @a[scores={char=74,s1_timer=1,CC_silence=0}] as @e[tag=crash_cone_6] run rotate @s ~-20 0
execute at @a[scores={char=74,s1_timer=1,CC_silence=0}] as @e[tag=crash_cone_7] run rotate @s ~-30 0

execute at @e[tag=crash_and_burn_projectiles] run particle sweep_attack ~ ~0.2 ~ 0.4 0.1 0.4 0 1
execute at @e[tag=crash_and_burn_projectiles] run particle cloud ~ ~0.2 ~ 0.4 0.1 0.4 0 1
execute at @e[tag=explosive_crash] run particle flame ~ ~0.5 ~ 0.4 0.2 0.4 0 2

execute as @e[tag=crash_and_burn_projectiles] at @s run tp @s ^ ^ ^0.45
execute as @e[tag=crash_and_burn_projectiles] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=crash_and_burn_projectiles] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~0.8 ~
execute as @e[tag=crash_and_burn_projectiles] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=crash_and_burn_projectiles] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

execute at @e[tag=non_explosive_crash] as @e[distance=..1.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=74}] Team run tag @s add fortress_crashed
execute at @e[tag=explosive_crash] as @e[distance=..1.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=74}] Team run tag @s add fortress_crashed_and_burned

execute at @a[scores={char=74,s1_timer=15..}] run kill @e[tag=crash_and_burn_projectiles]

scoreboard players set @e[tag=fortress_crashed] CC_stagger 60
execute as @e[tag=fortress_crashed] run damage @s 0.000001 player_attack by @p[scores={char=74}] from @p[scores={char=74}]
tag @e remove fortress_crashed

scoreboard players set @e[tag=fortress_crashed_and_burned] CC_stagger 60
execute as @e[tag=fortress_crashed_and_burned] run damage @s 4 player_attack by @p[scores={char=74}] from @p[scores={char=74}]
tag @e remove fortress_crashed_and_burned

# bull rush

execute at @a[scores={char=74,death_dash_reset=1..}] run kill @e[tag=bull_rush_thing]
execute at @a[scores={char=74,universal_death=1..}] run kill @e[tag=bull_rush_thing]
execute at @a[scores={char=74,CC_grounded=1..}] run kill @e[tag=bull_rush_thing]
execute at @a[scores={char=74,CC_root=1..}] run kill @e[tag=bull_rush_thing]
execute at @a[scores={char=74,CC_stun=1..}] run kill @e[tag=bull_rush_thing]
execute at @a[scores={char=74,CC_silence=1..}] run kill @e[tag=bull_rush_thing]

execute at @a[scores={char=74,s2_timer=1,CC_silence=0}] run playsound entity.ravager.attack master @a[distance=..16] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=74,s2_timer=1,fortress_shields=..29,CC_silence=0}] run summon marker ~ ~ ~ {Invisible:1b,Tags:["bull_rush_thing","non_explosive_rush","entities_fortress"]}
execute at @a[scores={char=74,s2_timer=1,fortress_shields=30..,CC_silence=0}] run summon marker ~ ~ ~ {Invisible:1b,Tags:["bull_rush_thing","explosive_rush","entities_fortress"]}
tp @e[tag=bull_rush_thing,limit=1] @p[scores={char=74,s2_timer=1}]
execute store result entity @e[tag=bull_rush_thing,limit=1] Rotation[1] float 1 run clear
tp @p[scores={char=74}] @e[tag=bull_rush_thing,limit=1]
scoreboard players set @a[scores={char=74,s2_timer=1,fortress_shields=30..,CC_silence=0}] heat_shields_cooldown 60
scoreboard players set @a[scores={char=74,s2_timer=1,fortress_shields=30..,CC_silence=0}] fortress_shields 0

execute at @a[scores={char=74,s2_timer=1..25}] if entity @e[tag=explosive_rush] unless entity @e[tag=exploding_shield_vis_1] run summon block_display ~ ~ ~ {Tags:["exploding_shield_vis_1","exploding_shield_vis","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.075f],scale:[0.7f,1f,0.15f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=74,s2_timer=1..25}] if entity @e[tag=explosive_rush] unless entity @e[tag=exploding_shield_vis_2] run summon block_display ~ ~ ~ {Tags:["exploding_shield_vis_2","exploding_shield_vis","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.06f],scale:[0.7f,1f,0.12f]},block_state:{Name:"minecraft:red_stained_glass"}}
execute at @a[scores={char=74,s2_timer=1..25}] if entity @e[tag=explosive_rush] unless entity @e[tag=exploding_shield_vis_3] run summon block_display ~ ~ ~ {Tags:["exploding_shield_vis_3","exploding_shield_vis","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.075f],scale:[0.7f,1f,0.15f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=74,s2_timer=1..25}] if entity @e[tag=explosive_rush] unless entity @e[tag=exploding_shield_vis_4] run summon block_display ~ ~ ~ {Tags:["exploding_shield_vis_4","exploding_shield_vis","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.06f],scale:[0.7f,1f,0.12f]},block_state:{Name:"minecraft:red_stained_glass"}}
execute at @a[scores={char=74,s2_timer=1..25}] if entity @e[tag=explosive_rush] unless entity @e[tag=exploding_shield_vis_5] run summon block_display ~ ~ ~ {Tags:["exploding_shield_vis_5","exploding_shield_vis","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.075f],scale:[0.7f,1f,0.15f]},block_state:{Name:"minecraft:magma_block"}}
execute at @a[scores={char=74,s2_timer=1..25}] if entity @e[tag=explosive_rush] unless entity @e[tag=exploding_shield_vis_6] run summon block_display ~ ~ ~ {Tags:["exploding_shield_vis_6","exploding_shield_vis","entities_fortress"],brightness:{sky:15,block:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.06f],scale:[0.7f,1f,0.12f]},block_state:{Name:"minecraft:red_stained_glass"}}

execute as @a[scores={char=74,s2_timer=1..25}] at @s run tp @e[tag=exploding_shield_vis_1] ^ ^0.5 ^1.2
execute as @a[scores={char=74,s2_timer=1..25}] at @s run tp @e[tag=exploding_shield_vis_2] ^ ^1 ^1.2
execute as @a[scores={char=74,s2_timer=1..25}] at @s run tp @e[tag=exploding_shield_vis_3] ^-0.5 ^0.5 ^1
execute as @a[scores={char=74,s2_timer=1..25}] at @s run tp @e[tag=exploding_shield_vis_4] ^-0.5 ^1 ^1
execute as @a[scores={char=74,s2_timer=1..25}] at @s run tp @e[tag=exploding_shield_vis_5] ^0.5 ^0.5 ^1
execute as @a[scores={char=74,s2_timer=1..25}] at @s run tp @e[tag=exploding_shield_vis_6] ^0.5 ^1 ^1

execute as @e[tag=exploding_shield_vis] unless entity @e[tag=bull_rush_thing] run kill @s
execute as @e[tag=exploding_shield_vis] run rotate @s facing entity @p[scores={char=74}]
execute as @e[tag=exploding_shield_vis] store result entity @s Rotation[1] float 1 run clear

execute at @a[scores={char=74,s2_timer=2,CC_silence=0}] if entity @e[tag=bull_rush_thing] run playsound entity.ravager.step master @a[distance=..16] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=74,s2_timer=6,CC_silence=0}] if entity @e[tag=bull_rush_thing] run playsound entity.ravager.step master @a[distance=..16] ~ ~ ~ 1 1.4 1
execute at @a[scores={char=74,s2_timer=10,CC_silence=0}] if entity @e[tag=bull_rush_thing] run playsound entity.ravager.step master @a[distance=..16] ~ ~ ~ 1 1.6 1
execute at @a[scores={char=74,s2_timer=14,CC_silence=0}] if entity @e[tag=bull_rush_thing] run playsound entity.ravager.step master @a[distance=..16] ~ ~ ~ 1 1.8 1
execute at @a[scores={char=74,s2_timer=18,CC_silence=0}] if entity @e[tag=bull_rush_thing] run playsound entity.ravager.step master @a[distance=..16] ~ ~ ~ 1 2 1
execute at @a[scores={char=74,s2_timer=22,CC_silence=0}] if entity @e[tag=bull_rush_thing] run playsound entity.ravager.step master @a[distance=..16] ~ ~ ~ 1 2 1

execute at @e[tag=explosive_rush] run particle flame ~ ~0.5 ~ 1.2 1 1.2 0 10
execute at @e[tag=bull_rush_thing] run particle cloud ~ ~0.2 ~ 1.1 0.3 1.1 0 2
execute at @e[tag=bull_rush_thing] run particle crit ~ ~0.2 ~ 0.7 0.2 0.7 0 40
execute at @e[tag=bull_rush_thing] run particle dust{color:[0.67,0.0,0.0],scale:1} ^2 ^0.1 ^0.5 0.1 0 0.1 0.1 20
execute at @e[tag=bull_rush_thing] run particle dust{color:[0.67,0.0,0.0],scale:1} ^-2 ^0.1 ^0.5 0.1 0 0.1 0.1 20
execute as @e[tag=bull_rush_thing] at @s unless block ^ ^1 ^1 #minecraft:dash run summon marker ~ ~ ~ {Tags:["rush_hits_the_wall","entities_fortress"]}
execute as @e[tag=bull_rush_thing] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=bull_rush_thing] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~
execute as @e[tag=bull_rush_thing] at @s run tp @s ^ ^ ^0.7
execute as @e[tag=bull_rush_thing] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=bull_rush_thing] at @s if block ~ ~-0.5 ~ #minecraft:dash run tp @s ~ ~-0.5 ~

execute at @e[tag=explosive_rush] as @e[tag=valid_spell_target,distance=..2] unless score @s Team = @p[scores={char=74}] Team run summon marker ~ ~ ~ {Tags:["rush_explosion","entities_fortress"]}

execute at @e[tag=rush_explosion] run kill @e[tag=bull_rush_thing]
execute at @e[tag=rush_explosion] as @e[tag=valid_spell_target,distance=..4] unless score @s Team = @p[scores={char=74}] Team run scoreboard players set @s CC_stun 20
execute at @e[tag=rush_explosion] as @e[tag=valid_spell_target,distance=..4] unless score @s Team = @p[scores={char=74}] Team run damage @s 4 fireball by @p[scores={char=74}] from @p[scores={char=74}]
execute at @e[tag=rush_explosion] run particle lava ~ ~0.5 ~ 1.5 0.5 1.5 0.1 25
execute at @e[tag=rush_explosion] run particle explosion ~ ~0.5 ~ 2 0.5 2 0.1 20
execute at @e[tag=rush_explosion] run playsound entity.dragon_fireball.explode master @a[distance=..12] ~ ~ ~ 0.6 1.8 1
kill @e[tag=rush_explosion] 


execute at @e[tag=rush_hits_the_wall] as @e[tag=valid_spell_target,distance=..3] unless score @s Team = @p[scores={char=74}] Team run scoreboard players set @s CC_stun 20
execute at @e[tag=rush_hits_the_wall] run particle cloud ~ ~0.5 ~ 1 0.5 1 0.01 15
execute at @e[tag=rush_hits_the_wall] run particle explosion ~ ~0.5 ~ 1 0.5 1 0.1 15
execute at @e[tag=rush_hits_the_wall] run playsound entity.dragon_fireball.explode master @a[distance=..12] ~ ~ ~ 0.6 1.8 1
kill @e[tag=rush_hits_the_wall] 

execute at @e[tag=non_explosive_rush] as @e[tag=valid_spell_target,distance=..2] unless score @s Team = @p[scores={char=74}] Team run scoreboard players set @s CC_stun 2
execute at @e[tag=non_explosive_rush] as @e[tag=valid_spell_target,distance=..2] unless score @s Team = @p[scores={char=74}] Team run tp @s @n[tag=non_explosive_rush]


execute at @a[scores={char=74,s2_timer=25..}] run kill @e[tag=bull_rush_thing]

# character name


scoreboard players set @a[scores={s1_timer=1,char=74}] spellCD1 180
scoreboard players add @a[scores={s1_timer=1..,char=74}] s1_timer 1
scoreboard players set @a[scores={s1_timer=180..,char=74}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=74}] spellCD2 320
scoreboard players add @a[scores={s2_timer=1..,char=74}] s2_timer 1
scoreboard players set @a[scores={s2_timer=320..,char=74}] s2_timer 0

execute as @a[scores={char=74,fortress_shields=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:copper_axe",Slot:0b}]}] run clear @a[scores={char=74}] copper_axe
item replace entity @a[scores={char=74,fortress_shields=0}] hotbar.0 with copper_axe[minecraft:custom_name=[{color:"gray",text:"\""},{bold:1b,color:"gray",text:"Wildfire"},{color:"gray",text:"\""}],minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.75d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1

execute as @a[scores={char=74,fortress_shields=1..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone",Slot:0b}]}] run clear @a[scores={char=74}] stone
item replace entity @a[scores={char=74,fortress_shields=1..}] hotbar.0 with stone[minecraft:custom_name={bold:1b,color:"gray",text:"Disarmed"},minecraft:item_model="minecraft:barrier",minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:-10.0d,operation:"add_value",slot:"mainhand"}],minimum_attack_charge=0.8] 1

execute as @a[scores={char=74,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=74}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=74,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:jungle_door",minecraft:custom_name={text:"Crash and Burn",color:"dark_aqua",bold:1b},attribute_modifiers=[{id:"entity_interaction_range",type:"entity_interaction_range",amount:-100,operation:"add_value",slot:"mainhand"}]] 1

execute as @a[scores={char=74,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=74}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=74,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:ravager_spawn_egg",minecraft:custom_name={text:"Bull Rush",color:"dark_aqua",bold:1b},attribute_modifiers=[{id:"entity_interaction_range",type:"entity_interaction_range",amount:-100,operation:"add_value",slot:"mainhand"}]] 1
