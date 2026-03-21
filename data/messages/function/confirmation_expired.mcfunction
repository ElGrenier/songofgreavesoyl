
# @s - player

#giving signs back after confirmation fails
setblock 123 12 -179 oak_wall_sign[facing=south]{front_text:{messages:[{text:"===================",color:"dark_green",bold:1b,type:"text"},{text:"CHANGE",color:"green",bold:1b,type:"text"},{text:"MAP",color:"green",bold:1b,type:"text",click_event:{action:"run_command",command:"/function messages:lobby_map_info"}},{text:"===================",color:"dark_green",bold:1b,type:"text"}]}}
setblock 124 12 -179 oak_wall_sign[facing=south]{front_text:{messages:[{text:"==================",color:"gold",bold:1b,type:"text"},{text:"START",color:"yellow",bold:1b,type:"text"},{text:"GAME",color:"yellow",bold:1b,type:"text",click_event:{action:"run_command",command:"/function core:lobby/start_game"}},{text:"==================",color:"gold",bold:1b,type:"text"}]}}
setblock 125 12 -179 oak_wall_sign[facing=south]{front_text:{messages:[{text:"===================",color:"dark_green",bold:1b,type:"text"},{text:"CHANGE",color:"green",bold:1b,type:"text"},{text:"OPTIONS",color:"green",bold:1b,type:"text",click_event:{action:"run_command",command:"/trigger LobbyTrigger set 110"}},{text:"===================",color:"dark_green",bold:1b,type:"text"}]}}

playsound entity.ender_dragon.hurt master @s ~ ~ ~ 1 0.9 1
playsound block.beacon.deactivate master @s ~ ~ ~ 1 0.8 1
function core:main/clear_chat
tellraw @s [{text:"=======",color:"dark_red",type:"text"},{text:" READY CHECK",bold:1b,color:"red",type:"text"},{text:" =======",color:"dark_red",type:"text"},{text:"\n\n",type:"text"},{selector:"@a[scores={Confirm=0}]",color:"dark_red",bold:1b,type:"selector"},{text:" has not confirmed.",color:"red",type:"text"},{text:"\n\n",type:"text"},{text:"============================",color:"dark_red",type:"text"}]
