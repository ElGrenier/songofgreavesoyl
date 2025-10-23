
# @s - @e[tag=GameStart]

scoreboard players operation @e[tag=GameStart] Memorize = @e[tag=Memory] Memorize
execute if entity @e[tag=GameStart,scores={Memorize=1}] run function memory:load
execute if entity @e[tag=GameStart,scores={Memorize=1}] run function lobby:map_synchronize