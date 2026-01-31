

#entering from lobby

execute positioned 131 11 -154 run tag @a[distance=..2.5] add EnterPracticeRoom
execute positioned 131 11 -154 run tag @a[distance=..2.5] add PracticeCharPick
execute positioned 131 11 -154 run tag @a[distance=..2.5] add PracticeRoom

#entering from practice room itself

execute positioned 45 13 -18 run tag @a[distance=..2] add EnterPracticeRoom
execute positioned 45 13 -18 run tag @a[distance=..2] add PracticeCharPick
execute positioned 45 13 -18 run tag @a[distance=..2] add PracticeRoom

#entering actual

execute at @a[tag=EnterPracticeRoom] run time set midnight
effect clear @a[tag=EnterPracticeRoom]
tp @a[tag=EnterPracticeRoom] 155 34 16
execute if entity @a[tag=EnterPracticeRoom] run function chars:char_display_stands_new
# execute if entity @a[tag=PracticeRoom,scores={char=1..}] unless entity @a[tag=PracticeCharPick] run kill @e[tag=char_displays]

execute as @a[tag=EnterPracticeRoom] run function core:main/char_scores_reset
scoreboard players set @a[tag=EnterPracticeRoom] ClassPickTrigger 8
scoreboard players set @a[tag=EnterPracticeRoom] char 0
#scoreboard players set @a[tag=EnterPracticeRoom] Queue 3
clear @a[tag=EnterPracticeRoom]
tag @a remove EnterPracticeRoom


#scoreboard players set @a[tag=PracticeCharPick,scores={char=1..}] Queue 3
tp @a[tag=PracticeCharPick,scores={char=1..}] 48 13 -10 -90 0
title @a[tag=PracticeCharPick] title {text:" ",type:"text"}
title @a[tag=PracticeCharPick] subtitle {text:" ",type:"text"}
#execute as @a[tag=PracticeCharPick,scores={char=1..}] run function chars:all
clear @a[tag=PracticeCharPick,scores={char=1..}] white_banner
effect give @a[tag=PracticeCharPick,scores={char=1..}] regeneration 3 10 true
effect clear @a[tag=PracticeCharPick,scores={char=1..}] weakness
team join yellow @a[tag=PracticeCharPick,scores={char=1..}]
tag @a[scores={char=1..}] remove PracticeCharPick

clear @a[tag=PracticeRoom,scores={char=1..}] white_banner

#exiting

execute positioned 43 12 -10 run tag @a[distance=..3] add ExitPracticeRoom
scoreboard players set @a[tag=ExitPracticeRoom] char 0
execute as @a[tag=ExitPracticeRoom] run function core:main/char_scores_reset
clear @a[tag=ExitPracticeRoom]
effect clear @a[tag=ExitPracticeRoom]
tp @a[tag=ExitPracticeRoom] 127 12 -154 90 0
tag @a[tag=ExitPracticeRoom] remove PracticeRoom
team leave @a[tag=ExitPracticeRoom]
title @a[tag=ExitPracticeRoom] actionbar {text:" ",type:"text"}
tag @a remove ExitPracticeRoom


#dying
scoreboard players set @a[tag=PracticeRoom,scores={death_dash_reset=1..}] char 0
tag @a[tag=PracticeRoom,scores={death_dash_reset=1..}] remove PracticeRoom

#other

execute positioned 58 15 1 run team join purple @a[distance=..2]
execute positioned 64 15 1 run team join yellow @a[distance=..2]

#holograms

execute positioned 57 12 -14 if entity @a[distance=..15] unless entity @e[tag=practice_hologram_1] run summon minecraft:text_display 49 15 -10 {Tags:["practice_holograms","practice_hologram_1"],alignment: "center", background: 1073741824, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: "Return to lobby", text_opacity: 255, transformation: {left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 0.99999994f, 0.9999999f], translation: [0.0f, 0.0f, 0.0f]}}
execute positioned 57 12 -14 if entity @a[distance=..15] unless entity @e[tag=practice_hologram_2] run summon minecraft:text_display 48 16 -18 {Tags:["practice_holograms","practice_hologram_2"],alignment: "center", background: 1073741824, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: "Change character", text_opacity: 255, transformation: {left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 0.99999994f, 0.9999999f], translation: [0.0f, 0.0f, 0.0f]}}
execute positioned 57 12 -14 if entity @a[distance=..15] unless entity @e[tag=practice_hologram_3] run summon minecraft:text_display 61 15 1 {Tags:["practice_holograms","practice_hologram_3"],alignment: "center", background: 1073741824, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: "Switch team", text_opacity: 255, transformation: {left_rotation: [0.0f, 0.99984777f, 0.0f, 0.017452212f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999998f, 1.0f, 0.9999998f], translation: [0.0f, 0.0f, 0.0f]}}



execute positioned 57 12 -14 unless entity @a[distance=..15] run kill @e[tag=practice_holograms]
execute if block 72 14 -20 minecraft:polished_blackstone_button[powered=true] run tp @e[tag=practice_dummy,scores={SummonAge=5..}] ~ ~-200 ~
execute if block 72 14 -20 minecraft:polished_blackstone_button[powered=true] run kill @e[tag=practice_dummy,scores={SummonAge=5..}] 
execute if block 72 14 -20 minecraft:polished_blackstone_button[powered=true] run summon mannequin 72 13 -24 {Tags:["valid_spell_target","practice_dummy"],profile:{"properties":[{"name":"textures","value":"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTg4ZTU2MTViYWFlODZjNTYwNzAxNDY2NTdkNmIxZjkyYmE2ODNlM2QxZTZmNjMyNWQyYzQ1NTUwY2MxMmQzYiJ9fX0"}],model:"slim"}}
execute if block 72 14 -20 minecraft:polished_blackstone_button[powered=true] run scoreboard players add @e[tag=practice_dummy] SummonAge 1
execute if block 72 14 -20 minecraft:polished_blackstone_button[powered=true] run setblock 72 14 -20 polished_blackstone_button[face=floor]


scoreboard players set @e[tag=test_dummy] Team -6699
scoreboard players set @e[tag=test_dummy] HPercentage 100