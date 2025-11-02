execute if score game_state settings matches 6.. run bossbar set minecraft:purple players @a
execute if score game_state settings matches 6.. run bossbar set minecraft:yellow players @a

execute if score game_state settings matches 6.. if score Yellow score > Purple score run bossbar set minecraft:purple visible false
execute if score game_state settings matches 6.. if score Yellow score > Purple score run bossbar set minecraft:yellow visible true

execute if score game_state settings matches 6.. if score Purple score > Yellow score run bossbar set minecraft:purple visible true
execute if score game_state settings matches 6.. if score Purple score > Yellow score run bossbar set minecraft:yellow visible false

execute if score game_state settings matches 6.. run bossbar set minecraft:purple visible true
execute if score game_state settings matches 6.. run bossbar set minecraft:yellow visible true


execute if score game_state settings matches ..1 run bossbar set minecraft:purple visible false
execute if score game_state settings matches ..1 run bossbar set minecraft:yellow visible false