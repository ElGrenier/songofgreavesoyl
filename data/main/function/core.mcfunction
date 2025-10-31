#chars related

team leave @a[tag=PracticeRoom,scores={universal_death=1..}]
tag @a[tag=PracticeRoom,scores={universal_death=1..}] add ExitPracticeRoom



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
function main:picks_scoreboard

function chars:surrender

execute as @a run function main:hp_display

execute as @a[tag=!welcomemessage] run function main:welcome_message

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

function main:kilin_spree
execute as @a run function main:hpercentage
execute as @e[type=minecraft:falling_block,tag=FAKE_BLOCK] run data merge entity @s {Time:1}
function scoredisplay_api:system
function main:game_end
scoreboard players set @a[team=purple] Team 1
scoreboard players set @a[team=yellow] Team -1
execute as @a[scores={DisplayDeath=1..}] run function main:deathmessages
function main:anti_spawnkill
#function buffs:system
function altars:system
function score:system
function ctf:main
function battlegrounds:timeofday


#What is this ticket things ?

execute as @a[scores={Ticket=100..}] if entity @e[tag=GameStart] unless score @s Ticket = @e[tag=GameStart,limit=1] Ticket run function main:spawn_outsider
execute as @a[scores={Ticket=100..}] if entity @e[tag=Settings] unless score @s Ticket = @e[tag=Settings,limit=1] Ticket run function main:spawn_outsider
execute if entity @e[tag=Settings] unless entity @e[tag=GameStart] as @a[scores={Ticket=0}] run function main:spawn_outsider
execute as @a[scores={Outsider=1}] run scoreboard players set @s Ticket 1
execute as @e[tag=GameStart,scores={Ticket=0}] as @a[scores={Outsider=1}] run function main:reset_outsider

#lobby rzeczy

#function main:practice_room
function main:practice_room
function main:tutorial_stuff
function lobby:lobby_trigger
function bans:bans_system
function chars:char_select
execute if score ConfirmationCounter game_start matches 1.. run function lobby:confirmation_loop


function main:wavmode

#spectator
gamemode spectator @a[tag=spectator]
scoreboard players set @a[tag=spectator] char 0
team leave @a[tag=spectator]

#realms censorship

##########execute unless entity @e[tag=1984] run summon minecraft:marker ~ ~ ~ {Tags:["1984"]}


function memory:loop







# List of all commands block being executed all the time :
# execute as @e[tag=Altars] at @s if entity @s[scores={Team=-1}]   
#   function score:yellow #This command is executed for each yellow altar
#
#execute as @e[tag=Altars] at @s if entity @s[scores={Team=1}]
# function score:purple  #This command is executed for each purple altar
#
#execute as @a if entity @s[scores={Outsider=0,CharSelectPhase=1,JustLeft=1}] run trigger ClassPickTrigger set 8
# execute as @a if entity @s[scores={CharSelectPhase=1,JustLeft=1}] run scoreboard players set @s JustLeft 0

#execute if entity @a[scores={Team=1,Winner=1}]
# function main:purple

#execute if entity @a[scores={Team=-1,Winner=1}]
# function main:yellow


#execute store result score @e[tag=GameStart] LobbyTeamPurple run team list purple
#execute store result score @e[tag=GameStart] LobbyTeamYellow run team list yellow
#execute store result score @e[tag=GameStart] LobbyTeamNone if entity @a[scores={Team=0,Outsider=0}]


#Called "Typical Case"
#execute if entity @e[tag=GameStart,scores={TeamSelect=1}]
# execute if entity @e[tag=GameStart,scores={LobbyTeamNone=0}]
# execute as @e[tag=GameStart] run scoreboard players operation @s Temp = @s LobbyTeamYellow
# execute as @e[tag=GameStart] run scoreboard players operation @s Temp -= @s LobbyTeamPurple
# scoreboard players set @a Queue 0

#Called "Unequal Team
#execute if entity @e[tag=GameStart,scores={TeamSelect=1}]
# execute if entity @e[tag=GameStart,scores={LobbyTeamNone=0}]
# execute as @e[tag=GameStart] run scoreboard players operation @s Temp = @s LobbyTeamYellow
# execute as @e[tag=GameStart] run scoreboard players operation @s Temp -= @s LobbyTeamPurple
# execute unless entity @e[tag=GameStart,scores={Temp=0}]
# scoreboard players set @a Queue 0


#function chars:char_display_stands_new


#execute if entity @a[distance=..5] unless entity @e[tag=GameStart] unless entity @e[tag=Settings] run function lobby:spawn_gamestart


#function main:spawn_no_initiated
#function main:spawn_initiated
#function chars:death_restart

#function lobby:loss_teams

#function team_select_mode

# (positioned near banish zone)
# execute if entity @a[distance=..20] run function chars:banish


#In the waiting room :
# title @a[distance=..20] actionbar ["",{text:"The game is in progress.",color:"dark_red",bold:1b,type:"text"},{text:" Please wait until the current game is finished.",color:"red",type:"text"}]