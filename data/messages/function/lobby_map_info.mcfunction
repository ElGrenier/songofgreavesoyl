# Wywołanie wewnątrz lobby:map
# function messages:siege
function core:main/clear_chat
#tellraw @s {"text":"List of Battlegrounds:\n","color":"yellow"}



execute if score map lobby matches 1 run trigger LobbyTrigger set 201
execute if score map lobby matches 2 run trigger LobbyTrigger set 201
execute if score map lobby matches 6 run trigger LobbyTrigger set 201
execute if score map lobby matches 7 run trigger LobbyTrigger set 201
execute if score map lobby matches 10 run trigger LobbyTrigger set 201
execute if score map lobby matches 12 run trigger LobbyTrigger set 201
execute if score map lobby matches 17 run trigger LobbyTrigger set 201
execute if score map lobby matches 19 run trigger LobbyTrigger set 201
execute if score map lobby matches 22 run trigger LobbyTrigger set 201

execute if score map lobby matches 4 run trigger LobbyTrigger set 202
execute if score map lobby matches 3 run trigger LobbyTrigger set 202
execute if score map lobby matches 11 run trigger LobbyTrigger set 202
execute if score map lobby matches 16 run trigger LobbyTrigger set 202
execute if score map lobby matches 20 run trigger LobbyTrigger set 202

execute if score map lobby matches 5 run trigger LobbyTrigger set 203
execute if score map lobby matches 9 run trigger LobbyTrigger set 203
execute if score map lobby matches 15 run trigger LobbyTrigger set 203
execute if score map lobby matches 21 run trigger LobbyTrigger set 203

execute if score map lobby matches 8 run trigger LobbyTrigger set 204
execute if score map lobby matches 13 run trigger LobbyTrigger set 204

execute if score map lobby matches 14 run trigger LobbyTrigger set 205
execute if score map lobby matches 18 run trigger LobbyTrigger set 205

function messages:lobby_map_info_main