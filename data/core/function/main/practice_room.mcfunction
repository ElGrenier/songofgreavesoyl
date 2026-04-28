

#entering from lobby

execute positioned 131 11 -154 run tag @a[distance=..2.5] add EnterPracticeRoom
execute positioned 131 11 -154 run tag @a[distance=..2.5] add PracticeCharPick
execute positioned 131 11 -154 run tag @a[distance=..2.5] add PracticeRoom

#entering from practice room itself

execute positioned 100 13 36 run tag @a[distance=..2] add EnterPracticeRoom
execute positioned 100 13 36 run tag @a[distance=..2] add PracticeCharPick
execute positioned 100 13 36 run tag @a[distance=..2] add PracticeRoom

#entering actual

effect clear @a[tag=EnterPracticeRoom]
execute as @a[tag=EnterPracticeRoom] run spawnpoint @s 124 12 -172
tp @a[tag=EnterPracticeRoom] 98 15 36
execute as @a[tag=EnterPracticeRoom] run function chars:char_display_stands_new

execute as @a[tag=EnterPracticeRoom] run function core:main/char_scores_reset
scoreboard players set @a[tag=EnterPracticeRoom] ClassPickTrigger 8
scoreboard players set @a[tag=EnterPracticeRoom] char 0
clear @a[tag=EnterPracticeRoom]
tag @a remove EnterPracticeRoom


tp @a[tag=PracticeCharPick,scores={char=1..}] 103 13 44 -90 0
scoreboard players set @a[tag=PracticeCharPick,scores={char=1..}] practice_heal 1
title @a[tag=PracticeCharPick] title {text:" ",type:"text"}
title @a[tag=PracticeCharPick] subtitle {text:" ",type:"text"}
execute as @a[tag=PracticeCharPick] store result score @s Team run scoreboard players get @s char

clear @a[tag=PracticeCharPick,scores={char=1..}] white_banner
team join ffa @a[tag=PracticeCharPick,scores={char=1..}]
tag @a[scores={char=1..}] remove PracticeCharPick

clear @a[tag=PracticeRoom,scores={char=1..}] white_banner

effect give @a[scores={practice_heal=1..}] regeneration 2 20 true
scoreboard players add @a[scores={practice_heal=1..}] practice_heal 1
scoreboard players set @a[scores={practice_heal=8..}] practice_heal 0

#exiting

execute positioned 98 12 44 run tag @a[distance=..3] add ExitPracticeRoom
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

tp @a[tag=PracticeRoom,scores={death_dash_reset=1..6}] 127 12 -154 90 0
scoreboard players set @a[tag=PracticeRoom,scores={death_dash_reset=1..6}] char 0
team leave @a[tag=PracticeRoom,scores={death_dash_reset=1..6}]
clear @a[tag=PracticeRoom,scores={death_dash_reset=1..6}]
tag @a[tag=PracticeRoom,scores={death_dash_reset=6..7}] remove PracticeRoom
#execute as @a[tag=PracticeRoom,scores={death_dash_reset=1..}] run function core:lobby/tp_lobby


#other

execute positioned 110 13 53 run team join purple @a[distance=..1.5]
execute positioned 118 13 53 run team join yellow @a[distance=..1.5]
execute positioned 114 13 53 run team join ffa @a[distance=..1.5]
execute positioned 114 13 53 as @a[distance=..1.5] store result score @s Team run scoreboard players get @s char

#holograms

execute positioned 115 12 40 if entity @a[distance=..15] unless entity @e[tag=practice_hologram_1] run summon text_display 103 15.5 44 {Rotation:[-90f,0f],Tags:["practice_holograms","practice_hologram_1"],alignment: "center", background: 1073741824, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text:["",{text:"",extra:[{text:"=",color:"gold",bold:1b},{text:" Back to Lobby ",color:"yellow",bold:1b},{text:"=",color:"gold",bold:1b}]}], text_opacity: 255, transformation: {scale: [0.9999999f, 0.99999994f, 0.9999999f], translation: [0.0f, 0.0f, 0.0f]}}
execute positioned 115 12 40 if entity @a[distance=..15] unless entity @e[tag=practice_hologram_2] run summon text_display 103 16 36 {Rotation:[-90f,0f],Tags:["practice_holograms","practice_hologram_2"],alignment: "center", background: 1073741824, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text:["",{text:"",extra:[{text:"=",color:"dark_green",bold:1b},{text:" Change Character ",color:"green",bold:1b},{text:"=",color:"dark_green",bold:1b}]}], text_opacity: 255,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]}}
execute positioned 115 12 40 if entity @a[distance=..15] unless entity @e[tag=practice_hologram_3] run summon text_display 114 17 53 {Tags:["practice_holograms","practice_hologram_3"],billboard:"vertical",alignment: "center", background: 1073741824, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text:["",{text:"",extra:[{text:"=",color:"gray",bold:1b},{text:" Switch Teams ",color:"white",bold:1b},{text:"=",color:"gray",bold:1b}]}], text_opacity: 255,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}


execute as @e[tag=practice_dummy] store result score @s dummy_hp run data get entity @s Health

execute positioned 115 12 40 unless entity @a[distance=..15] run kill @e[tag=practice_holograms]

execute if entity @a[tag=PracticeRoom] unless entity @e[tag=dummy_in_the_middle_of_the_room_1] run summon mannequin 129 13 37 {Rotation:[90f,0f],Tags:["valid_spell_target","practice_dummy","dummy_in_the_middle_of_the_room_1"],CustomName:"Dummy",CustomNameVisible:1b,hide_description:false,profile:{"properties":[{"name":"textures","value":"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTg4ZTU2MTViYWFlODZjNTYwNzAxNDY2NTdkNmIxZjkyYmE2ODNlM2QxZTZmNjMyNWQyYzQ1NTUwY2MxMmQzYiJ9fX0"}],model:"slim"}}
execute if entity @a[tag=PracticeRoom] unless entity @e[tag=dummy_in_the_middle_of_the_room_2] run summon mannequin 130 13 40 {Rotation:[90f,0f],Tags:["valid_spell_target","practice_dummy","dummy_in_the_middle_of_the_room_2"],CustomName:"Dummy",CustomNameVisible:1b,hide_description:false,profile:{"properties":[{"name":"textures","value":"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTg4ZTU2MTViYWFlODZjNTYwNzAxNDY2NTdkNmIxZjkyYmE2ODNlM2QxZTZmNjMyNWQyYzQ1NTUwY2MxMmQzYiJ9fX0"}],model:"slim"}}
execute if entity @a[tag=PracticeRoom] unless entity @e[tag=dummy_in_the_middle_of_the_room_3] run summon mannequin 129 13 43 {Rotation:[90f,0f],Tags:["valid_spell_target","practice_dummy","dummy_in_the_middle_of_the_room_3"],CustomName:"Dummy",CustomNameVisible:1b,hide_description:false,profile:{"properties":[{"name":"textures","value":"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTg4ZTU2MTViYWFlODZjNTYwNzAxNDY2NTdkNmIxZjkyYmE2ODNlM2QxZTZmNjMyNWQyYzQ1NTUwY2MxMmQzYiJ9fX0"}],model:"slim"}}

execute unless entity @a[tag=PracticeRoom] run kill @e[tag=practice_dummy]

execute if block 129 14 52 minecraft:polished_blackstone_button[powered=true] run tp @e[tag=practice_dummy,scores={SummonAge=5..}] ~ ~-200 ~
execute if block 129 14 52 minecraft:polished_blackstone_button[powered=true] run kill @e[tag=practice_dummy,scores={SummonAge=5..}] 
execute if block 129 14 52 minecraft:polished_blackstone_button[powered=true] run summon mannequin 129 13 56 {Rotation:[180f,0f],Tags:["valid_spell_target","practice_dummy"],CustomName:"Dummy",CustomNameVisible:1b,hide_description:false,profile:{"properties":[{"name":"textures","value":"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTg4ZTU2MTViYWFlODZjNTYwNzAxNDY2NTdkNmIxZjkyYmE2ODNlM2QxZTZmNjMyNWQyYzQ1NTUwY2MxMmQzYiJ9fX0"}],model:"slim"}}

execute if block 129 14 52 minecraft:polished_blackstone_button[powered=true] run scoreboard players add @e[tag=practice_dummy] SummonAge 1
execute if block 129 14 52 minecraft:polished_blackstone_button[powered=true] run setblock 129 14 52 polished_blackstone_button[face=floor]

execute as @e[tag=practice_dummy] run function core:main/practice_room_dummy_hp

scoreboard players set @e[tag=practice_dummy] Team -6699
scoreboard players set @e[tag=practice_dummy] HPercentage 100
