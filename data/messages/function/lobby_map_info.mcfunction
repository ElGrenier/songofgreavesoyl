# Wywołanie wewnątrz lobby:map
# function messages:siege
#function core:main/clear_chat
#tellraw @s {"text":"List of Battlegrounds:\n","color":"yellow"}


scoreboard players set @s LobbyTrigger 200
scoreboard players enable @s LobbyTrigger

function messages:lobby_map_info_main