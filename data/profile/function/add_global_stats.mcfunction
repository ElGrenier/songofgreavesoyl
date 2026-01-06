# Add to global stats
execute as @a run scoreboard players operation @s GlobalKills += @s StatKillsN
execute as @a run scoreboard players operation @s GlobalDeaths += @s StatDeaths
execute as @a run scoreboard players add @s GlobalGames 1
execute as @a run scoreboard players add @s[tag=winner] GlobalWins 1
execute as @a run scoreboard players operation @s GlobalNeutral += @s StatNeutralified
execute as @a run scoreboard players operation @s GlobalCaptured += @s StatCaptured
execute as @a run scoreboard players operation @s GlobalFlagCaptured += @s StatFlagCaptured
execute as @a run scoreboard players operation @s GlobalFlagReturned += @s StatFlagReturned

