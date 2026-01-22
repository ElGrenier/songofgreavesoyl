kill @e[tag=crawlers_enemy]
kill @e[type=spider]
kill @e[type=cave_spider]
kill @e[tag=crawlers_campfire]
kill @e[tag=crawlers_descent]
kill @e[tag=crawlers_downward]
kill @e[tag=crawlers_random1]
kill @e[tag=extinguisher_spawnpoint]
kill @e[tag=attacker_ceiling_spawnpoint]

bossbar set broodmother visible false
bossbar set broodmother2 visible false
bossbar set broodmother3 visible false
bossbar set campfire visible false

scoreboard players reset -wave crawlers_wave
scoreboard players reset -floor crawlers_floor
scoreboard players reset -HP campfire_hp

scoreboard players reset -attacker_small_slow crawler_spawns
scoreboard players reset -attacker_small crawler_spawns
scoreboard players reset -attacker_small_fast crawler_spawns
scoreboard players reset -attacker_large_slow crawler_spawns
scoreboard players reset -attacker_large crawler_spawns
scoreboard players reset -attacker_large_fast crawler_spawns
scoreboard players reset -attacker_jockey crawler_spawns
scoreboard players reset -attacker_hatcher crawler_spawns
