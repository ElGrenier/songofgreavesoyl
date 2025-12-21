execute if score game_state settings matches 6.. unless score map_type settings matches 4 run bossbar set minecraft:purple players @a
execute if score game_state settings matches 6.. unless score map_type settings matches 4 run bossbar set minecraft:yellow players @a

execute if score game_state settings matches 6.. unless score map_type settings matches 4 if score .purple score > .purple score run bossbar set minecraft:purple visible false
execute if score game_state settings matches 6.. unless score map_type settings matches 4 if score .yellow score > .purple score run bossbar set minecraft:yellow visible true

execute if score game_state settings matches 6.. unless score map_type settings matches 4 if score .purple score > .yellow score run bossbar set minecraft:purple visible true
execute if score game_state settings matches 6.. unless score map_type settings matches 4 if score .purple score > .yellow score run bossbar set minecraft:yellow visible false

execute if score game_state settings matches 6.. unless score map_type settings matches 4 run bossbar set minecraft:purple visible true
execute if score game_state settings matches 6.. unless score map_type settings matches 4 run bossbar set minecraft:yellow visible true


execute if score game_state settings matches ..1 run bossbar set minecraft:purple visible false
execute if score game_state settings matches ..1 run bossbar set minecraft:yellow visible false