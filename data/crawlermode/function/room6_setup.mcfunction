kill @e[tag=extinguisher_spawnpoint]
kill @e[tag=attacker_ceiling_spawnpoint]
kill @e[tag=crawlers_campfire]
kill @e[tag=crawlers_centre]
#clone 90 4 -118 86 22 -122 61 4 -151
#execute at @e[tag=crawlers_campfire] run clone 115 6 -128 103 5 -116 ~-6 ~3 ~-6
fill -220 4 -170 -216 -7 -174 air

execute positioned -218 5 -172 run summon marker ~ ~ ~ {Tags:["crawlers_centre"]}

execute positioned -235 4 -154 run summon marker ~ ~ ~ {Tags:["extinguisher_spawnpoint"]}
execute positioned -235 4 -154 run summon marker ~0.3 ~ ~0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -235 4 -154 run summon marker ~-0.15 ~ ~-0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -235 4 -154 run summon marker ~0.45 ~ ~1.2 {Tags:["extinguisher_spawnpoint"]}

execute positioned -198 4 -147 run summon marker ~-0.15 ~ ~0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -198 4 -147 run summon marker ~0.3 ~ ~-0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -198 4 -147 run summon marker ~-0.25 ~ ~1.2 {Tags:["extinguisher_spawnpoint"]}
execute positioned -198 4 -147 run summon marker ~0.45 ~ ~-1.2 {Tags:["extinguisher_spawnpoint"]}



