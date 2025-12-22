execute if score map_type lobby matches 1 unless score score lobby matches 2901.. run scoreboard players add score lobby 100
execute if score map_type lobby matches 2 unless score dm_score lobby matches 99.. run scoreboard players add dm_score lobby 1
execute if score map_type lobby matches 3 unless score ctf_score lobby matches 99.. run scoreboard players add ctf_score lobby 1




function scoredisplay_api:system
function core:lobby/options