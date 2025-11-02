execute if score map_type lobby matches 1 unless score score lobby matches ..999 run scoreboard players remove score lobby 500
execute if score map_type lobby matches 2 unless score dm_score lobby matches ..5 run scoreboard players remove dm_score lobby 5
execute if score map_type lobby matches 3 unless score ctf_score lobby matches ..5 run scoreboard players remove ctf_score lobby 5


function scoredisplay_api:system
function core:lobby/options