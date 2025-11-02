
# @s - player

playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~ 1 0.9 1
playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 0.8 1
function core:main/clear_chat
tellraw @s [{text:"=======",color:"dark_red",type:"text"},{text:" READY CHECK",bold:1b,color:"red",type:"text"},{text:" =======",color:"dark_red",type:"text"},{text:"\n\n",type:"text"},{selector:"@a[scores={Confirm=0}]",color:"dark_red",bold:1b,type:"selector"},{text:" has not confirmed.",color:"red",type:"text"},{text:"\n\n",type:"text"},{text:"============================",color:"dark_red",type:"text"}]
