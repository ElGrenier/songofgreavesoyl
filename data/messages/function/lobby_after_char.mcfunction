
# @s - player who was teleported to chamber

function core:main/clear_chat
title @s times 1 100 20
title @s subtitle {text:"Other players are choosing their characters",color:"green",type:"text"}
title @s title {text:"Please wait",color:"dark_green",type:"text"}
scoreboard players set @s showkit 1

# Loggin out prevention
scoreboard players set @s CharSelectPhase 0