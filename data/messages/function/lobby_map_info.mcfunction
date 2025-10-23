# Wywołanie wewnątrz lobby:map
# function messages:siege
tellraw @s {text:"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",type:"text"}

#tellraw @s {"text":"List of Battlegrounds:\n","color":"yellow"}



execute if entity @e[tag=GameStart,scores={Map=1}] run trigger LobbyTrigger set 201
execute if entity @e[tag=GameStart,scores={Map=2}] run trigger LobbyTrigger set 201
execute if entity @e[tag=GameStart,scores={Map=6}] run trigger LobbyTrigger set 201
execute if entity @e[tag=GameStart,scores={Map=7}] run trigger LobbyTrigger set 201
execute if entity @e[tag=GameStart,scores={Map=10}] run trigger LobbyTrigger set 201
execute if entity @e[tag=GameStart,scores={Map=12}] run trigger LobbyTrigger set 201
execute if entity @e[tag=GameStart,scores={Map=17}] run trigger LobbyTrigger set 201
execute if entity @e[tag=GameStart,scores={Map=19}] run trigger LobbyTrigger set 201
execute if entity @e[tag=GameStart,scores={Map=22}] run trigger LobbyTrigger set 201

execute if entity @e[tag=GameStart,scores={Map=4}] run trigger LobbyTrigger set 202
execute if entity @e[tag=GameStart,scores={Map=3}] run trigger LobbyTrigger set 202
execute if entity @e[tag=GameStart,scores={Map=11}] run trigger LobbyTrigger set 202
execute if entity @e[tag=GameStart,scores={Map=16}] run trigger LobbyTrigger set 202
execute if entity @e[tag=GameStart,scores={Map=20}] run trigger LobbyTrigger set 202

execute if entity @e[tag=GameStart,scores={Map=5}] run trigger LobbyTrigger set 203
execute if entity @e[tag=GameStart,scores={Map=9}] run trigger LobbyTrigger set 203
execute if entity @e[tag=GameStart,scores={Map=15}] run trigger LobbyTrigger set 203
execute if entity @e[tag=GameStart,scores={Map=21}] run trigger LobbyTrigger set 203

execute if entity @e[tag=GameStart,scores={Map=8}] run trigger LobbyTrigger set 204
execute if entity @e[tag=GameStart,scores={Map=13}] run trigger LobbyTrigger set 204

execute if entity @e[tag=GameStart,scores={Map=14}] run trigger LobbyTrigger set 205
execute if entity @e[tag=GameStart,scores={Map=18}] run trigger LobbyTrigger set 205

function messages:lobby_map_info_main