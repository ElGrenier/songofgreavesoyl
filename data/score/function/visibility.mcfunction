execute if entity @e[tag=Settings] run bossbar set minecraft:purple players @a
execute if entity @e[tag=Settings] run bossbar set minecraft:yellow players @a

execute if entity @e[tag=Settings] if score Yellow ScoreDisplay > Purple ScoreDisplay run bossbar set minecraft:purple visible false
execute if entity @e[tag=Settings] if score Yellow ScoreDisplay > Purple ScoreDisplay run bossbar set minecraft:yellow visible true

execute if entity @e[tag=Settings] if score Purple ScoreDisplay > Yellow ScoreDisplay run bossbar set minecraft:purple visible true
execute if entity @e[tag=Settings] if score Purple ScoreDisplay > Yellow ScoreDisplay run bossbar set minecraft:yellow visible false

execute if entity @e[tag=Settings] run bossbar set minecraft:purple visible true
execute if entity @e[tag=Settings] run bossbar set minecraft:yellow visible true


execute unless entity @e[tag=Settings] run bossbar set minecraft:purple visible false
execute unless entity @e[tag=Settings] run bossbar set minecraft:yellow visible false