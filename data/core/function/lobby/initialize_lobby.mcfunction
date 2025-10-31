#summon minecraft:armor_stand 209.43 4.00 -125.52 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["GameStart"]}
# generic
scoreboard players set maxLoading lobby 98
scoreboard players set Score lobby 1000
scoreboard players set Ticket lobby 0
scoreboard players set Map lobby 1
scoreboard players set Bans lobby 0
scoreboard players set unless_draft lobby 1
scoreboard players set LobbyModeSign lobby 1
scoreboard players set fallen_flag_max_countdown lobby 200
# Team select mode
scoreboard players set TeamSelect lobby 0
scoreboard players set LobbyTeamYellow lobby 0
scoreboard players set LobbyTeamPurple lobby 0
scoreboard players set LobbyTeamNone lobby 1
scoreboard players set Temp lobby 0
# /scoreboard objectives add ScoreTemp dummy {"text":"ScoreToWin","color":""}
# Memory & confirmation
scoreboard players set Memorize lobby 0
scoreboard players set RequireConfirmation lobby 1
scoreboard players set ConfirmationCounter lobby 0

# Memory
function memory:on_spawn_gamestart