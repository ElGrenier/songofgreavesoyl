

#entering from lobby

execute positioned 186 9 -69 run tag @a[distance=..3] add EnterPracticeRoom
execute positioned 186 9 -69 run tag @a[distance=..3] add PracticeCharPick
execute positioned 186 9 -69 run tag @a[distance=..3] add PracticeRoom

#entering from practice room itself

execute positioned 97 15 31 run tag @a[distance=..2] add EnterPracticeRoom
execute positioned 97 15 31 run tag @a[distance=..2] add PracticeCharPick
execute positioned 97 15 31 run tag @a[distance=..2] add PracticeRoom

#entering actual

tp @a[tag=EnterPracticeRoom] 155 34 16
execute if entity @a[tag=EnterPracticeRoom] unless entity @e[tag=char_displays] run function chars:char_display_stands
execute if entity @a[tag=PracticeRoom,scores={char=1..}] unless entity @a[tag=PracticeCharPick] run kill @e[tag=char_displays]

execute as @a[tag=EnterPracticeRoom] run function main:char_scores_reset
scoreboard players set @a[tag=EnterPracticeRoom] ClassPickTrigger 8
scoreboard players set @a[tag=EnterPracticeRoom] char 0
#scoreboard players set @a[tag=EnterPracticeRoom] Queue 3
clear @a[tag=EnterPracticeRoom]
tag @a remove EnterPracticeRoom


scoreboard players set @a[tag=PracticeCharPick,scores={char=1..}] Queue 3
tp @a[tag=PracticeCharPick,scores={char=1..}] 100 13 38 -90 0
title @a[tag=PracticeCharPick] title {text:" ",type:"text"}
title @a[tag=PracticeCharPick] subtitle {text:" ",type:"text"}
execute as @a[tag=PracticeCharPick,scores={char=1..}] run function chars:all
clear @a[tag=PracticeCharPick,scores={char=1..}] minecraft:white_banner
effect give @a[tag=PracticeCharPick,scores={char=1..}] minecraft:regeneration 3 10 true
effect clear @a[tag=PracticeCharPick,scores={char=1..}] minecraft:weakness
team join yellow @a[tag=PracticeCharPick,scores={char=1..}]
tag @a[scores={char=1..}] remove PracticeCharPick

clear @a[tag=PracticeRoom,scores={char=1..}] minecraft:white_banner

#exiting

execute positioned 92 13 38 run tag @a[distance=..3] add ExitPracticeRoom
scoreboard players set @a[tag=ExitPracticeRoom] char 0
execute as @a[tag=ExitPracticeRoom] run function main:char_scores_reset
clear @a[tag=ExitPracticeRoom]
effect clear @a[tag=ExitPracticeRoom]
tp @a[tag=ExitPracticeRoom] 181 9 -69 90 0
tag @a[tag=ExitPracticeRoom] remove PracticeRoom
team leave @a[tag=ExitPracticeRoom]
title @a[tag=ExitPracticeRoom] actionbar {text:" ",type:"text"}
tag @a remove ExitPracticeRoom



#other

execute positioned 107 15 48 run team join purple @a[distance=..2]
execute positioned 115 15 48 run team join yellow @a[distance=..2]

#holograms

execute positioned 112 15 37 if entity @a[distance=..15] unless entity @e[tag=practice_hologram_1] run summon minecraft:armor_stand 100 14 38 {Marker:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["practice_holograms","practice_hologram_1"],CustomName:"Return to lobby"}
execute positioned 112 15 37 if entity @a[distance=..15] unless entity @e[tag=practice_hologram_2] run summon minecraft:armor_stand 101 15 31 {Marker:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["practice_holograms","practice_hologram_2"],CustomName:"Change character"}
execute positioned 112 15 37 if entity @a[distance=..15] unless entity @e[tag=practice_hologram_3] run summon minecraft:armor_stand 111 15 48 {Marker:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Tags:["practice_holograms","practice_hologram_3"],CustomName:"Switch team"}

execute positioned 112 15 37 unless entity @a[distance=..15] run kill @e[tag=practice_holograms]

execute if block 141 14 32 minecraft:polished_blackstone_button[powered=true] run tp @e[tag=practice_dummy] ~ ~-200 ~
execute if block 141 14 32 minecraft:polished_blackstone_button[powered=true] run summon minecraft:iron_golem 145 13 32 {Tags:["practice_dummy"],NoAI:1b,Health:30.0f,attributes:[{id:"minecraft:max_health",base:30.0d}]}