execute as @e[tag=crawlers_random1,limit=1,sort=random] run tag @s add crawlers_chosen
function crawlermode:clear_markers

execute if score -floor crawlers_floor matches 1..3 run execute as @e[tag=crawlers_f1_r1,tag=crawlers_chosen] run function crawlermode:room1_setup
execute if score -floor crawlers_floor matches 1..3 run execute as @e[tag=crawlers_f1_r2,tag=crawlers_chosen] run function crawlermode:room2_setup
execute if score -floor crawlers_floor matches 1..3 run execute as @e[tag=crawlers_f1_r3,tag=crawlers_chosen] run function crawlermode:room3_setup
execute if score -floor crawlers_floor matches 1..3 run execute as @e[tag=crawlers_f1_r4,tag=crawlers_chosen] run function crawlermode:room4_setup
execute if score -floor crawlers_floor matches 1..3 run execute as @e[tag=crawlers_f1_r5,tag=crawlers_chosen] run function crawlermode:room5_setup

kill @e[tag=crawlers_chosen]

execute if score -floor crawlers_floor matches 4 run function crawlermode:room6_setup
execute if score -floor crawlers_floor matches 5 run function crawlermode:room7_setup
execute if score -floor crawlers_floor matches 6 run function crawlermode:room8_setup

scoreboard players add -floor crawlers_floor 1

scoreboard players set -wave crawlers_wave -211
