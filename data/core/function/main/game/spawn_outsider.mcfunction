
# @s - player

title @s clear
clear @s
team leave @s
scoreboard players set @s char 0
tag @s add outsider
function core:main/clear_chat
tp @s 174.5 4 20.5