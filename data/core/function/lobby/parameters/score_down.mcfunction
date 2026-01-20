execute if score map_type lobby matches 1 unless score score lobby matches ..599 run scoreboard players remove score lobby 100
execute if score map_type lobby matches 2 unless score dm_score lobby matches ..1 run scoreboard players remove dm_score lobby 1
execute if score map_type lobby matches 3 unless score ctf_score lobby matches ..1 run scoreboard players remove ctf_score lobby 1


function scoredisplay_api:system
function core:lobby/options