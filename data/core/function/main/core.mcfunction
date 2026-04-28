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
function chars:cc_display
function chars:cc_actual
function chars:cooldowndisplay
function chars:regen
function battlegrounds:railrestore
function chars:check_armor
function chars:team_wool
function chars:char_display_stands
function core:lobby/choose_char
function chars:char_name_display

execute as @a run function core:main/hp_display
execute as @e[tag=summon] run function core:main/hp_display_for_mobs

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


kill @e[type=tnt]
kill @e[type=end_crystal]
kill @e[type=area_effect_cloud]

#system shit

function core:main/kilin_spree
execute as @a run function core:main/hpercentage

#stats

function core:lobby/lobby_interactions
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
function core:lobby/credit_room_stands

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
