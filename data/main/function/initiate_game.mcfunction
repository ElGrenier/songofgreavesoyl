effect clear @a[distance=..4]
gamemode adventure @a
scoreboard players reset Purple
scoreboard players reset Yellow
function main:game_start
function score:setup
function battlegrounds:setup
function chars:all
scoreboard players set @s StatKills 0
scoreboard players set @a StatKillsN 0
scoreboard players set @a StatDeaths 0
scoreboard players set @a StatNeutralified 0
scoreboard players set @a StatCaptured 0
tp @a[distance=..4] 207 34 -131

