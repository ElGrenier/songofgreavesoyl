
scoreboard players operation @e[tag=Memory] Memorize = @e[tag=GameStart] Memorize
#execute if entity @e[tag=GameStart,scores={Memorize=1}] run function memory:save
function memory:save
