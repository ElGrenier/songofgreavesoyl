
# @s - player

playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.5 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5 1
function core:main/clear_chat
scoreboard players enable @a ConfirmTrigger
tellraw @s [{text:"=======",color:"dark_green",type:"text"},{text:" READY CHECK",bold:1b,color:"green",type:"text"},{text:" =======",color:"dark_green",type:"text"},{text:"\n\n \u0020 \u0020 ",type:"text"},{text:"Click here to confirm",bold:1b,color:"yellow",type:"text",click_event:{action:"run_command",command:"/trigger ConfirmTrigger set 1"}},{text:"\n\n",type:"text"},{text:"============================",color:"dark_green",type:"text"}]