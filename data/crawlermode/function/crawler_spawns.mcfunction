execute if score -wave crawlers_wave matches ..-210 run scoreboard players set -attacker_small crawler_spawns 0
execute if score -wave crawlers_wave matches ..-210 run scoreboard players set -attacker_large crawler_spawns 0
execute if score -wave crawlers_wave matches ..-210 run scoreboard players set -attacker_large_slow crawler_spawns 0
execute if score -wave crawlers_wave matches ..-210 run scoreboard players set -attacker_large_fast crawler_spawns 0
execute if score -wave crawlers_wave matches ..-210 run scoreboard players set -attacker_small_fast crawler_spawns 0
execute if score -wave crawlers_wave matches ..-210 run scoreboard players set -attacker_small_slow crawler_spawns 0

#attacker
execute if score -attacker_small crawler_spawns matches 1.. run execute if score -attacker_small_1 crawler_spawns matches 1.. run scoreboard players remove -attacker_small_1 crawler_spawns 1
execute if score -attacker_small crawler_spawns matches 1.. run execute unless score -attacker_small_1 crawler_spawns matches 1.. run execute at @e[tag=extinguisher_spawnpoint,limit=1,sort=random] run summon spider ~ ~ ~ {Health:10,PersistenceRequired:1b,Tags:["crawlers_crawlerattacker","crawlers_enemy","valid_spell_target"],attributes:[{id:scale,base:0.8f},{id:max_health,base:10f}],NoAI:1b}
execute unless score -attacker_small_1 crawler_spawns matches 1.. run scoreboard players set -attacker_small_1 crawler_spawns 90

execute if score -attacker_small_fast crawler_spawns matches 1.. run execute if score -attacker_small_fast_1 crawler_spawns matches 1.. run scoreboard players remove -attacker_small_fast_1 crawler_spawns 1
execute if score -attacker_small_fast crawler_spawns matches 1.. run execute unless score -attacker_small_fast_1 crawler_spawns matches 1.. run execute at @e[tag=extinguisher_spawnpoint,limit=1,sort=random] run summon spider ~ ~ ~ {Health:8,PersistenceRequired:1b,Tags:["crawlers_crawlerattacker","crawlers_enemy","valid_spell_target"],attributes:[{id:scale,base:0.8f},{id:max_health,base:8f}],NoAI:1b}
execute unless score -attacker_small_fast_1 crawler_spawns matches 1.. run scoreboard players set -attacker_small_fast_1 crawler_spawns 44

execute if score -attacker_small_slow crawler_spawns matches 1.. run execute if score -attacker_small_slow_1 crawler_spawns matches 1.. run scoreboard players remove -attacker_small_slow_1 crawler_spawns 1
execute if score -attacker_small_slow crawler_spawns matches 1.. run execute unless score -attacker_small_slow_1 crawler_spawns matches 1.. run execute at @e[tag=extinguisher_spawnpoint,limit=1,sort=random] run summon spider ~ ~ ~ {Health:8,PersistenceRequired:1b,Tags:["crawlers_crawlerattacker","crawlers_enemy","valid_spell_target"],attributes:[{id:scale,base:0.8f},{id:max_health,base:8f}],NoAI:1b}
execute unless score -attacker_small_slow_1 crawler_spawns matches 1.. run scoreboard players set -attacker_small_slow_1 crawler_spawns 127


#large attacker
execute if score -attacker_large crawler_spawns matches 1.. run execute if score -attacker_large_1 crawler_spawns matches 1.. run scoreboard players remove -attacker_large_1 crawler_spawns 1
execute if score -attacker_large crawler_spawns matches 1.. run execute unless score -attacker_large_1 crawler_spawns matches 1.. run execute at @e[tag=extinguisher_spawnpoint,limit=1,sort=random] run summon spider ~ ~ ~ {Health:17,PersistenceRequired:1b,Tags:["crawlers_crawlerattacker","crawlers_enemy","valid_spell_target","crawlers_large"],attributes:[{id:scale,base:1.2f},{id:max_health,base:17f}],NoAI:1b}
execute unless score -attacker_large_1 crawler_spawns matches 1.. run scoreboard players set -attacker_large_1 crawler_spawns 120

execute if score -attacker_large_fast crawler_spawns matches 1.. run execute if score -attacker_large_fast_1 crawler_spawns matches 1.. run scoreboard players remove -attacker_large_fast_1 crawler_spawns 1
execute if score -attacker_large_fast crawler_spawns matches 1.. run execute unless score -attacker_large_fast_1 crawler_spawns matches 1.. run execute at @e[tag=extinguisher_spawnpoint,limit=1,sort=random] run summon spider ~ ~ ~ {Health:17,PersistenceRequired:1b,Tags:["crawlers_crawlerattacker","crawlers_enemy","valid_spell_target","crawlers_large"],attributes:[{id:scale,base:1.2f},{id:max_health,base:17f}],NoAI:1b}
execute unless score -attacker_large_fast_1 crawler_spawns matches 1.. run scoreboard players set -attacker_large_fast_1 crawler_spawns 63

execute if score -attacker_large_slow crawler_spawns matches 1.. run execute if score -attacker_large_slow_1 crawler_spawns matches 1.. run scoreboard players remove -attacker_large_slow_1 crawler_spawns 1
execute if score -attacker_large_slow crawler_spawns matches 1.. run execute unless score -attacker_large_slow_1 crawler_spawns matches 1.. run execute at @e[tag=extinguisher_spawnpoint,limit=1,sort=random] run summon spider ~ ~ ~ {Health:17,PersistenceRequired:1b,Tags:["crawlers_crawlerattacker","crawlers_enemy","valid_spell_target","crawlers_large"],attributes:[{id:scale,base:1.2f},{id:max_health,base:17f}],NoAI:1b}
execute unless score -attacker_large_slow_1 crawler_spawns matches 1.. run scoreboard players set -attacker_large_slow_1 crawler_spawns 171

#hatchers
execute if score -attacker_hatcher crawler_spawns matches 1.. run execute if score -attacker_hatcher_1 crawler_spawns matches 1.. run scoreboard players remove -attacker_hatcher_1 crawler_spawns 1
execute if score -attacker_hatcher crawler_spawns matches 1.. run execute unless score -attacker_hatcher_1 crawler_spawns matches 1.. run execute at @e[tag=extinguisher_spawnpoint,limit=1,sort=random] run summon spider ~ ~ ~ {Health:25,PersistenceRequired:1b,Tags:["crawlers_crawlerhatcher","crawlers_enemy","valid_spell_target","crawlers_large"],attributes:[{id:scale,base:1.4f},{id:max_health,base:25f}],NoAI:1b}
execute unless score -attacker_hatcher_1 crawler_spawns matches 1.. run scoreboard players set -attacker_hatcher_1 crawler_spawns 283

#jockeys
execute if score -attacker_jockey crawler_spawns matches 1.. run execute if score -attacker_jockey_1 crawler_spawns matches 1.. run scoreboard players remove -attacker_jockey_1 crawler_spawns 1
execute if score -attacker_jockey crawler_spawns matches 1.. run execute unless score -attacker_jockey_1 crawler_spawns matches 1.. run execute at @e[tag=extinguisher_spawnpoint,limit=1,sort=random] run summon spider ~ ~ ~ {Health:30,NoAI:1b,PersistenceRequired:1b,Tags:["crawlers_crawlerattacker","crawlers_enemy","valid_spell_target","crawlers_crawler_mount"],attributes:[{id:max_health,base:30f},{id:scale,base:2f}],Passengers:[{id:cave_spider,Health:15,NoAI:1b,PersistenceRequired:1b,Tags:["crawlers_crawlerboi","crawlers_enemy","valid_spell_target","crawlers_crawler_rider"],attributes:[{id:scale,base:1f},{id:max_health,base:15f}]}]}
execute unless score -attacker_jockey_1 crawler_spawns matches 1.. run scoreboard players set -attacker_jockey_1 crawler_spawns 163
