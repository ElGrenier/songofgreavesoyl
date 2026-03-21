#chars related

execute if score game_type settings matches 1 run function core:main/manage_game
execute if score game_type settings matches 2 run function crawlermode:manage_game


team leave @a[tag=PracticeRoom,scores={universal_death=1..}]
tag @a[tag=PracticeRoom,scores={universal_death=1..}] add ExitPracticeRoom
scoreboard players set @a[tag=ExitPracticeRoom] Team 0

function core:main/practice_room

function chars:surrender

function core:main/wavmode

function chars:showkit
function chars:all_chars_spells
function chars:rangedcd
function chars:spellcooldowns
function chars:cc_display
function chars:cc_actual
function chars:cooldowndisplay
function chars:regen
function battlegrounds:railrestore
function chars:check_armor
function chars:team_wool
function chars:char_display_stands
function core:lobby/choose_char

execute as @a run function core:main/hp_display

execute as @a[tag=!welcomemessage] run function core:main/spawn_new_player
execute as @a[tag=!welcomemessage] run function core:lobby/welcome_message

#mc related
#effect give @a saturation 999 100 true
#advancement revoke @a everything
recipe give @a[tag=!recipe] *
tag @a[tag=!recipe] add recipe
xp set @a 0 points
xp set @a 0 levels
difficulty easy

#setblock 119 15 -185 redstone_lamp[lit=true]
#setblock 129 15 -185 redstone_lamp[lit=true]

kill @e[type=minecraft:tnt]
kill @e[type=minecraft:end_crystal]

#system shit

function core:main/kilin_spree
execute as @a run function core:main/hpercentage

function core:lobby/lobby_credits
function core:main/display_captured_altars


execute unless score map_type settings matches 4 run scoreboard players set @a[team=purple] Team 1
execute unless score map_type settings matches 4 run scoreboard players set @a[team=yellow] Team -1
execute as @a[scores={DisplayDeath=1..}] run function core:main/deathmessages
function core:main/anti_spawnkill
#function buffs:system
function altars:system
function ctf:main
function battlegrounds:timeofday
function core:score/visibility

#Ticket (to make the player leaving a match not being stuck after rejoining)
execute if score game_state settings matches 1.. as @a[tag=!outsider] unless score @s ticket = ticket settings run function core:main/game/spawn_outsider
execute unless score game_state settings matches 1.. as @a[scores={ticket=..0,ticket=0..}] run function core:main/reset_ticket





#lobby rzeczy


function core:main/tutorial_stuff
function core:lobby/lobby_trigger
function bans:bans_system
function chars:char_select
execute if score confirmation_counter lobby matches 1.. run function core:lobby/confirmation/confirmation_loop

#lobby holograms
execute positioned 127 12 -154 if entity @a[distance=..10] unless entity @e[tag=lobby_hologram_1] run summon text_display 127 14 -154 {Tags:["lobby_holograms","lobby_hologram_1"],alignment: "center", background: 1073741824, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: "Practice Room", text_opacity: 255, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 0.99999994f, 0.9999999f], translation: [0.0f, 0.0f, 0.0f]}}
execute positioned 121 12 -154 if entity @a[distance=..10] unless entity @e[tag=lobby_hologram_2] run summon text_display 121 14 -154 {Tags:["lobby_holograms","lobby_hologram_2"],alignment: "center", background: 1073741824, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: "Tutorial", text_opacity: 255, transformation: {left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 0.99999994f, 0.9999999f], translation: [0.0f, 0.0f, 0.0f]}}
execute positioned 124 11 -154 unless entity @a[distance=..10] run kill @e[tag=lobby_holograms]

#credits holograms
execute positioned 124 11 -143 if entity @a[distance=..20] unless entity @e[tag=credits_hologram_1] run summon text_display 124 14.5 -135 {Rotation:[180f,0f],billboard:"vertical",Tags:["credits_hologram_1","credits_holograms"],line_width:220,text:["",{text:"",extra:[{text:"=",color:"red",bold:1b},{text:" MrKisiel ",color:"gold",bold:1b},{text:"=",color:"red",bold:1b},{text:"\nMain Creator",color:"yellow"}]}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]}}

execute positioned 124 11 -143 if entity @a[distance=..20] unless entity @e[tag=credits_hologram_2] run summon text_display 129 14.3 -136 {Rotation:[180f,0f],billboard:"vertical",Tags:["credits_hologram_2","credits_holograms"],line_width:220,text:["",{text:"",extra:[{text:"=",color:"red",bold:1b},{text:" Grenier ",color:"gold",bold:1b},{text:"=",color:"red",bold:1b},{text:"\nEngine Code Rework",color:"yellow"}]}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
execute positioned 124 11 -143 if entity @a[distance=..20] unless entity @e[tag=credits_hologram_3] run summon text_display 130 14.3 -146 {Rotation:[180f,0f],billboard:"vertical",Tags:["credits_hologram_3","credits_holograms"],line_width:220,text:["",{text:"",extra:[{text:"=",color:"red",bold:1b},{text:" Franklo & Jajoman ",color:"gold",bold:1b},{text:"=",color:"red",bold:1b},{text:"\nAdditional Code",color:"yellow"}]}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}

execute positioned 124 11 -143 if entity @a[distance=..20] unless entity @e[tag=credits_hologram_4] run summon text_display 118 14.3 -147 {Rotation:[180f,0f],billboard:"vertical",Tags:["credits_hologram_4","credits_holograms"],line_width:220,text:["",{text:"",extra:[{text:"=",color:"red",bold:1b},{text:" Exo ",color:"gold",bold:1b},{text:"=",color:"red",bold:1b},{text:"\nCustom Heads",color:"yellow"}]}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
execute positioned 124 11 -143 if entity @a[distance=..20] unless entity @e[tag=credits_hologram_5] run summon text_display 118 14.3 -143 {Rotation:[180f,0f],billboard:"vertical",Tags:["credits_hologram_5","credits_holograms"],line_width:220,text:["",{text:"",extra:[{text:"=",color:"red",bold:1b},{text:" wavgudbye ",color:"gold",bold:1b},{text:"=",color:"red",bold:1b},{text:"\nAdditional Code",color:"yellow"}]}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}

execute positioned 124 11 -143 if entity @a[distance=..20] unless entity @e[tag=credits_hologram_6] run summon text_display 119 14.3 -134 {Rotation:[180f,0f],billboard:"vertical",Tags:["credits_hologram_6","credits_holograms"],line_width:220,text:["",{text:"",extra:[{text:"=",color:"red",bold:1b},{text:" AzethMeron ",color:"gold",bold:1b},{text:"=",color:"red",bold:1b},{text:"\nLegacy Engine",color:"yellow"}]}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]}}

execute positioned 124 11 -143 unless entity @a[distance=..20] run kill @e[tag=credits_holograms]



#spectator
gamemode spectator @a[tag=spectator]
scoreboard players set @a[tag=spectator] char 0
tag @a[tag=spectator] remove valid_spell_target
team leave @a[tag=spectator]

#realms censorship

##########execute unless entity @e[tag=1984] run summon minecraft:marker ~ ~ ~ {Tags:["1984"]}


# List of all commands block being executed all the time :

#Why ? Ok i guess its anti-quiting prevention

# execute store result score lobby_team_purple lobby run team list purple
# execute store result score lobby_team_yellow lobby run team list yellow
# execute store result score lobby_team_none lobby if entity @a[scores={Team=0},tag=!outsider]


#Called "Typical Case"
#execute if entity @e[tag=GameStart,scores={TeamSelect=1}]
# execute if entity @e[tag=GameStart,scores={LobbyTeamNone=0}]
# execute as @e[tag=GameStart] run scoreboard players operation @s Temp = @s LobbyTeamYellow
# execute as @e[tag=GameStart] run scoreboard players operation @s Temp -= @s LobbyTeamPurple
# scoreboard players set @a Queue 0

#Called "Unequal Team"
#execute if entity @e[tag=GameStart,scores={TeamSelect=1}]
# execute if entity @e[tag=GameStart,scores={LobbyTeamNone=0}]
# execute as @e[tag=GameStart] run scoreboard players operation @s Temp = @s LobbyTeamYellow
# execute as @e[tag=GameStart] run scoreboard players operation @s Temp -= @s LobbyTeamPurple
# execute unless entity @e[tag=GameStart,scores={Temp=0}]
# scoreboard players set @a Queue 0


#function chars:char_display_stands_new

# (positioned near banish zone)
# execute if entity @a[distance=..20] run function chars:banish


#In the waiting room :
# title @a[distance=..20] actionbar ["",{text:"The game is in progress.",color:"dark_red",bold:1b,type:"text"},{text:" Please wait until the current game is finished.",color:"red",type:"text"}]