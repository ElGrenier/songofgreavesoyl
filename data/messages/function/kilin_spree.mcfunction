# KillSpreeCounter (playerKillCount)
# KillSpree (dummy)
# KillSpreeTick (dummy)

# Called after each kill
# @s - player who killed somebody
# KillSpree - number of kills so far

execute if entity @s[scores={KillSpree=2}] run title @a times 0 100 20
execute if entity @s[scores={KillSpree=2}] run title @a subtitle {selector:"@s",color:"gray",type:"selector"}
execute if entity @s[scores={KillSpree=2}] run title @a title {text:"Double Kill",color:"green",type:"text"}

execute if entity @s[scores={KillSpree=3}] run title @a times 0 100 20
execute if entity @s[scores={KillSpree=3}] run title @a subtitle {selector:"@s",color:"gray",type:"selector"}
execute if entity @s[scores={KillSpree=3}] run title @a title {text:"Triple Kill",color:"dark_green",type:"text"}

execute if entity @s[scores={KillSpree=4}] run title @a times 0 100 20
execute if entity @s[scores={KillSpree=4}] run title @a subtitle {selector:"@s",color:"gray",type:"selector"}
execute if entity @s[scores={KillSpree=4}] run title @a title {text:"Quadra Kill",color:"red",type:"text"}

execute if entity @s[scores={KillSpree=5}] run title @a times 0 100 20
execute if entity @s[scores={KillSpree=5}] run title @a subtitle {selector:"@s",color:"red",type:"selector"}
execute if entity @s[scores={KillSpree=5}] run title @a title {text:"PENTAKILL",color:"dark_red",bold:1b,type:"text"}