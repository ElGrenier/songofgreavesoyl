
scoreboard players add @e[tag=GameStart] LobbyModeSign 1
scoreboard players set @e[tag=GameStart,scores={LobbyModeSign=2..}] LobbyModeSign 0

execute as @e[tag=GameStart,scores={LobbyModeSign=0}] run setblock 176 12 -85 minecraft:air replace
execute as @e[tag=GameStart,scores={LobbyModeSign=0}] run setblock 176 12 -85 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{text:"===================",bold:1b,color:"dark_red",type:"text"},{text:"TOURNAMENT",color:"red",bold:1b,type:"text"},{text:"MODE",color:"red",bold:1b,type:"text",click_event:{action:"run_command",command:"/function lobby:unless_draft_sign"}},{text:"===================",bold:1b,color:"dark_red",type:"text"}]},is_waxed:1b} replace
execute as @e[tag=GameStart,scores={LobbyModeSign=0}] run scoreboard players set @s unless_draft 1
execute as @e[tag=GameStart,scores={LobbyModeSign=0}] run scoreboard players set @s TeamSelect 1

execute as @e[tag=GameStart,scores={LobbyModeSign=1}] run setblock 176 12 -85 minecraft:air replace
execute as @e[tag=GameStart,scores={LobbyModeSign=1}] run setblock 176 12 -85 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{text:"===================",bold:1b,color:"dark_purple",type:"text"},{text:"CASUAL",color:"light_purple",bold:1b,type:"text"},{text:"GAME",color:"light_purple",bold:1b,type:"text",click_event:{action:"run_command",command:"/function lobby:unless_draft_sign"}},{text:"===================",bold:1b,color:"dark_purple",type:"text"}]},is_waxed:1b} replace
execute as @e[tag=GameStart,scores={LobbyModeSign=1}] run scoreboard players set @s unless_draft 1
execute as @e[tag=GameStart,scores={LobbyModeSign=1}] run scoreboard players set @s TeamSelect 0

#execute as @e[tag=GameStart,scores={LobbyModeSign=2}] run setblock 176 12 -85 minecraft:air replace
#execute as @e[tag=GameStart,scores={LobbyModeSign=2}] run setblock 176 12 -85 minecraft:oak_wall_sign[facing=south]{is_waxed:1b,Text1:"{\"text\":\"===================\",\"bold\":\"true\"}",Text2:"{\"text\":\"MANUAL\",\"color\":\"light_purple\",\"bold\":\"true\"}",Text3:"{\"text\":\"TEAM SELECT\",\"color\":\"light_purple\",\"bold\":\"true\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function lobby:unless_draft_sign\"}}",Text4:"{\"text\":\"===================\",\"bold\":\"true\"}"} replace
#execute as @e[tag=GameStart,scores={LobbyModeSign=2}] run scoreboard players set @s unless_draft 1
#execute as @e[tag=GameStart,scores={LobbyModeSign=2}] run scoreboard players set @s TeamSelect 1

#function messages:lobby_draft