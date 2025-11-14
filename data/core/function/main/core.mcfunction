#chars related

function core:main/manage_game

team leave @a[tag=PracticeRoom,scores={universal_death=1..}]
tag @a[tag=PracticeRoom,scores={universal_death=1..}] add ExitPracticeRoom
scoreboard players set @a[tag=ExitPracticeRoom] Team 0


#function customhit:core
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

function chars:surrender



execute as @a run function core:main/hp_display

execute as @a[tag=!welcomemessage] run function core:lobby/welcome_message

#mc related
#effect give @a saturation 999 100 true
#advancement revoke @a everything
recipe give @a[tag=!recipe] *
tag @a[tag=!recipe] add recipe
xp set @a 0 points
xp set @a 0 levels
difficulty easy

kill @e[type=minecraft:tnt]
kill @e[type=minecraft:end_crystal]

#azeth rzeczy

function core:main/kilin_spree
execute as @a run function core:main/hpercentage
execute as @e[type=minecraft:falling_block,tag=FAKE_BLOCK] run data merge entity @s {Time:1}


scoreboard players set @a[team=purple] Team 1
scoreboard players set @a[team=yellow] Team -1
execute as @a[scores={DisplayDeath=1..}] run function core:main/deathmessages
function core:main/anti_spawnkill
#function buffs:system
function altars:system
function ctf:main
function battlegrounds:timeofday
function core:score/visibility

#Why was there a ticket things ?

execute if entity @a[tag=in_game] as @a[tag=!in_game] run function core:main/game/spawn_outsider

execute positioned 220 34 -130 run function core:main/spawn_new_player

#lobby rzeczy

function core:main/practice_room
function core:main/tutorial_stuff
function core:lobby/lobby_trigger
function bans:bans_system
function chars:char_select
execute if score confirmation_counter lobby matches 1.. run function core:lobby/confirmation/confirmation_loop


function core:main/wavmode


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