#aaa

scoreboard players set @s HUNDRED 100
scoreboard players operation @s WinRate = @s GlobalWins
scoreboard players operation @s WinRate *= @s HUNDRED
scoreboard players operation @s WinRate /= @s GlobalGames

execute store result storage core:lobby/show_stats stat_g_kills int 1 run scoreboard players get @s GlobalKills
execute store result storage core:lobby/show_stats stat_g_deaths int 1 run scoreboard players get @s GlobalDeaths
execute store result storage core:lobby/show_stats stat_g_played int 1 run scoreboard players get @s GlobalGames
execute store result storage core:lobby/show_stats stat_g_wins int 1 run scoreboard players get @s GlobalWins
execute store result storage core:lobby/show_stats stat_winrate int 1 run scoreboard players get @s WinRate

execute store result storage core:lobby/show_stats stat_l_kills int 1 run scoreboard players get @s StatKills
execute store result storage core:lobby/show_stats stat_l_deaths int 1 run scoreboard players get @s StatDeaths
execute store result storage core:lobby/show_stats stat_l_captures int 1 run scoreboard players get @s StatCaptured
execute store result storage core:lobby/show_stats stat_l_flags int 1 run scoreboard players get @s StatFlagCaptured
execute store result storage core:lobby/show_stats stat_l_damagedealt int 1 run scoreboard players get @s StatDamageDealt
execute store result storage core:lobby/show_stats stat_l_damagetaken int 1 run scoreboard players get @s StatDamageTaken


function core:lobby/show_stats2 with storage core:lobby/show_stats