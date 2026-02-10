function crawlermode:respawn
#execute if score -dif crawlers_dif matches 1 if score -floor crawlers_floor matches 4.. run say win
execute if score -dif crawlers_dif matches 1 if score -floor crawlers_floor matches 1 run function crawlermode:game_setup
execute if score -dif crawlers_dif matches 1 if score -floor crawlers_floor matches 5.. run scoreboard players set -floor crawlers_floor -1
execute if score -dif crawlers_dif matches 1 unless score -floor crawlers_floor matches 5.. run function crawlermode:randomise
execute if score -dif crawlers_dif matches 1 if score -floor crawlers_floor matches -1 run scoreboard players set -floor crawlers_floor 0

#execute if score -dif crawlers_dif matches 2 if score -floor crawlers_floor matches 6.. run say win
execute if score -dif crawlers_dif matches 2 if score -floor crawlers_floor matches 1 run function crawlermode:game_setup
execute if score -dif crawlers_dif matches 2 if score -floor crawlers_floor matches 7.. run scoreboard players set -floor crawlers_floor -1
execute if score -dif crawlers_dif matches 2 unless score -floor crawlers_floor matches 7.. run function crawlermode:randomise
execute if score -dif crawlers_dif matches 2 if score -floor crawlers_floor matches -1 run scoreboard players set -floor crawlers_floor 0

execute if score -floor crawlers_floor matches ..-2 run function crawlermode:tutorial_setup
execute if score -floor crawlers_floor matches ..-2 run scoreboard players set -wave crawlers_wave -211
execute if score -floor crawlers_floor matches ..-2 run scoreboard players set -floor crawlers_floor 0

scoreboard players set game_state settings 8
