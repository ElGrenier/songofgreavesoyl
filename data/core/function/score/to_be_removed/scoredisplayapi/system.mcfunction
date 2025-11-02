# Hacked-in support for score display systems other than altar control
# Variable originally used by Deathmatch, it is also used by CTF. How many points per kill/flag
# If you wish to change it, do it here and in lobby:score_up, score_down, up_5 and so on
#I still use dmTemp because its just a temp value to store 100

scoreboard players set hundred dmTemp 100

function battlegrounds:map_settings
execute if score map_type settings matches 1 run scoreboard objectives setdisplay sidebar ScoreDisplay
execute if score map_type settings matches 2 run scoreboard objectives setdisplay sidebar dmScoreDisplay
execute if score map_type settings matches 3 run scoreboard objectives setdisplay sidebar ctfScoreDisplay

execute if score map_type settings matches 1 run function scoredisplay_api:team_dm
#Why ? lobby is not usefull to be shown ?
#execute if score map_type lobby matches 1 run function scoredisplay_api:dm

execute if score map_type settings matches 3 run function scoredisplay_api:ctf
#Why ? Same as before ^
#execute if score map_type lobby matches 3 run function scoredisplay_api:ctf


scoreboard objectives add score_display dummy
