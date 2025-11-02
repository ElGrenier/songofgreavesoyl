scoreboard objectives add lobby dummy
# generic
scoreboard players set max_loading lobby 98
scoreboard players set score lobby 1000
#scoreboard players set Ticket lobby 0
scoreboard players set map lobby 1
scoreboard players set bans lobby 0
scoreboard players set unless_draft lobby 1
scoreboard players set lobby_mode_sign lobby 1
scoreboard players set fallen_flag_max_countdown lobby 200
# Team select mode
scoreboard players set team_select lobby 0
scoreboard players set wav_mode lobby 0
scoreboard players set ctf_score lobby 5
scoreboard players set dm_score lobby 10
scoreboard players set all_random lobby 0

# /scoreboard objectives add ScoreTemp dummy {"text":"ScoreToWin","color":""}
# Memory & confirmation
scoreboard players set memorize lobby 0
scoreboard players set require_confirmation lobby 1
scoreboard players set confirmation_counter lobby 0


function core:lobby/map/map_synchronize

# Memory
function core:main/memory/on_initialize_lobby