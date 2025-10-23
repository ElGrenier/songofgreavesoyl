# Variables.
# (playerKillCount) DisplayKill = 1 means killer
# (deathCount) DisplayDeath = 1 means loser

# Messages
execute if entity @a[scores={DisplayDeath=1..}] if entity @a[scores={DisplayKill=1..}] run tellraw @a [{text:"",type:"text"},{selector:"@p[scores={DisplayKill=1..}]",type:"selector"},{text:" > ",color:"dark_red",bold:1b,type:"text"},{text:"killed",color:"red",type:"text"},{text:" > ",color:"dark_red",bold:1b,type:"text"},{selector:"@p[scores={DisplayDeath=1..}]",type:"selector"}]
execute if entity @a[scores={DisplayDeath=1..}] unless entity @a[scores={DisplayKill=1..}] run tellraw @a [{text:"",type:"text"},{selector:"@p[scores={DisplayDeath=1..}]",type:"selector"},{text:" ",italic:1b,type:"text"},{text:"has died",italic:1b,color:"red",type:"text"}]



