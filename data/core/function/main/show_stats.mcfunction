# Pokazywanie statsow
execute as @a run tellraw @s [{text:"===== STATS =====",color:"green",type:"text"},{text:"\n",type:"text"},{text:"Kills: ",color:"gold",type:"text"},{score:{name:"@s",objective:"StatKills"},type:"score"},{text:"\nDeaths: ",color:"gold",type:"text"},{score:{name:"@s",objective:"StatDeaths"},type:"score"},{text:"\nNeutralizations: ",color:"gold",type:"text"},{score:{name:"@s",objective:"StatNeutralified"},type:"score"},{text:"\nCaptures: ",color:"gold",type:"text"},{score:{name:"@s",objective:"StatCaptured"},type:"score"}]

# Przepisywanie statsow do profilu
execute as @a run scoreboard players operation @s GlobalKills += @s StatKills
execute as @a run scoreboard players operation @s GlobalDeaths += @s StatDeaths
execute as @a run scoreboard players add @s GlobalGames 1
execute as @a run scoreboard players add @s[scores={Winner=1}] GlobalWins 1
execute as @a run scoreboard players operation @s GlobalNeutral += @s StatNeutralified
execute as @a run scoreboard players operation @s GlobalCaptured += @s StatCaptured

# Statsy dla klas postaci

# Setup armor standow - po chuj to?
execute unless entity @e[tag=1] run summon minecraft:armor_stand 208.36 5.00 -117.40 {CustomName:"Las",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","1"]}
execute unless entity @e[tag=3] run summon minecraft:armor_stand 209.39 5.00 -117.38 {CustomName:"Las",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","3"]}
execute unless entity @e[tag=4] run summon minecraft:armor_stand 210.66 5.00 -117.42 {CustomName:"Las",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","4"]}
scoreboard players set @e[tag=1] Temp 1
scoreboard players set @e[tag=3] Temp 3
scoreboard players set @e[tag=4] Temp 4
