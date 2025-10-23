# Pokazywanie statsow
#execute as @a run tellraw @s [{"text":"\n"},{"text":"> ","color":"gold","bold":true},{"text":" You got ","color":"aqua"},{"score":{"name":"@s","objective":"StatKillsN"},"color":"dark_aqua","bold":true},{"text":"\nDeaths: ","color":"gold"},{"score":{"name":"@s","objective":"StatDeaths"}},{"text":"\nNeutralizations: ","color":"gold"},{"score":{"name":"@s","objective":"StatNeutralified"}},{"text":"\nCaptures: ","color":"gold"},{"score":{"name":"@s","objective":"StatCaptured"}}]

execute as @a run tellraw @s [{text:"\n",type:"text"},{text:"> ",color:"gold",bold:1b,type:"text"},{text:" You got ",color:"aqua",type:"text"},{score:{name:"@s",objective:"StatKillsN"},color:"dark_aqua",bold:1b,type:"score"},{text:" kills",color:"aqua",type:"text"}]
execute as @a run tellraw @s [{text:"> ",color:"gold",bold:1b,type:"text"},{text:" You died ",color:"aqua",type:"text"},{score:{name:"@s",objective:"StatDeaths"},color:"dark_aqua",bold:1b,type:"score"},{text:" times",color:"aqua",type:"text"}]
execute if entity @e[tag=Settings,scores={Deathmatch=0,CTF=0}] as @a run tellraw @s [{text:"> ",color:"gold",bold:1b,type:"text"},{text:" Altars captured: ",color:"aqua",type:"text"},{score:{name:"@s",objective:"StatCaptured"},color:"dark_aqua",bold:1b,type:"score"},{text:"",color:"aqua",type:"text"}]
execute if entity @e[tag=Settings,scores={Deathmatch=0,CTF=1}] as @a run tellraw @s [{text:"> ",color:"gold",bold:1b,type:"text"},{text:" Flags captured: ",color:"aqua",type:"text"},{score:{name:"@s",objective:"StatFlagCaptured"},color:"dark_aqua",bold:1b,type:"score"},{text:"",color:"aqua",type:"text"}]

#execute as @a run tellraw @s [{"text":"> ","color":"gold","bold":true},{"text":" War crimes commited: ","color":"aqua"},{"score":{"name":"@s","objective":"StatNeutralified"},"color":"dark_aqua","bold":true},{"text":"","color":"aqua"}]



# Variables for ingame (not-global) stats
# Ingame kills - StatKills
# Ingame deaths - StatDeaths
# Altar neutralisations - StatNeutralified
# Altar captures - StatCaptured