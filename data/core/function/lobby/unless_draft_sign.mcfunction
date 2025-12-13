
scoreboard players add lobby_mode_sign lobby 1
execute if score lobby_mode_sign lobby matches 2.. run scoreboard players set lobby_mode_sign lobby 0

execute if score lobby_mode_sign lobby matches 0 run setblock 176 12 -85 minecraft:air replace
execute if score lobby_mode_sign lobby matches 0 run setblock 176 12 -85 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{text:"===================",bold:1b,color:"dark_red",type:"text"},{text:"TOURNAMENT",color:"red",bold:1b,type:"text"},{text:"MODE",color:"red",bold:1b,type:"text",click_event:{action:"run_command",command:"/function lobby:unless_draft_sign"}},{text:"===================",bold:1b,color:"dark_red",type:"text"}]},is_waxed:1b} replace
execute if score lobby_mode_sign lobby matches 0 run scoreboard players set unless_draft lobby 1
execute if score lobby_mode_sign lobby matches 0 run scoreboard players set TeamSelect lobby 1

execute if score lobby_mode_sign lobby matches 1 run setblock 176 12 -85 minecraft:air replace
execute if score lobby_mode_sign lobby matches 1 run setblock 176 12 -85 minecraft:oak_wall_sign[facing=south]{front_text:{messages:[{text:"===================",bold:1b,color:"dark_purple",type:"text"},{text:"CASUAL",color:"light_purple",bold:1b,type:"text"},{text:"GAME",color:"light_purple",bold:1b,type:"text",click_event:{action:"run_command",command:"/function lobby:unless_draft_sign"}},{text:"===================",bold:1b,color:"dark_purple",type:"text"}]},is_waxed:1b} replace
execute if score lobby_mode_sign lobby matches 1 run scoreboard players set unless_draft lobby 1
execute if score lobby_mode_sign lobby matches 1 run scoreboard players set TeamSelect lobby 0

#function messages:lobby_draft