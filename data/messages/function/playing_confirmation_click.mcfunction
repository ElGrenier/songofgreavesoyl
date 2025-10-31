
# @s - player

function core:main/clear_chat
tellraw @s [{text:"=======",color:"dark_green",type:"text"},{text:" READY CHECK",bold:1b,color:"green",type:"text"},{text:" =======",color:"dark_green",type:"text"},{text:"\n\n \u0020 \u0020",type:"text"},{text:"You WILL play the game.",bold:1b,color:"green",type:"text"},{text:"\n\n",type:"text"},{text:"============================",color:"dark_green",type:"text"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.9 1
