kill @e[tag=extinguisher_spawnpoint]
kill @e[tag=attacker_ceiling_spawnpoint]
kill @e[tag=crawlers_campfire]
kill @e[tag=crawlers_centre]
#clone 90 4 -118 86 22 -122 61 4 -151
#execute at @e[tag=crawlers_campfire] run clone 115 6 -128 103 5 -116 ~-6 ~3 ~-6
fill 15 -2 -151 11 3 -147 air

execute positioned 13 5 -149 run summon marker ~ ~ ~ {Tags:["crawlers_centre"]}

execute positioned -7 4 -149 run summon marker ~ ~ ~ {Tags:["extinguisher_spawnpoint"]}
execute positioned -7 4 -149 run summon marker ~0.3 ~ ~0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -7 4 -149 run summon marker ~-0.15 ~ ~-0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -7 4 -149 run summon marker ~0.45 ~ ~1.2 {Tags:["extinguisher_spawnpoint"]}
execute positioned -7 4 -149 run summon marker ~-0.25 ~ ~-1.2 {Tags:["extinguisher_spawnpoint"]}
execute positioned 35 4 -149 run summon marker ~ ~ ~ {Tags:["extinguisher_spawnpoint"]}
execute positioned 35 4 -149 run summon marker ~-0.15 ~ ~0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned 35 4 -149 run summon marker ~0.3 ~ ~-0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned 35 4 -149 run summon marker ~-0.25 ~ ~1.2 {Tags:["extinguisher_spawnpoint"]}
execute positioned 35 4 -149 run summon marker ~0.45 ~ ~-1.2 {Tags:["extinguisher_spawnpoint"]}


execute positioned 23 10 -143 run summon marker ~0.5 ~ ~0.5 {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned 26 10 -155 run summon marker ~0.5 ~ ~0.5 {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned 8 10 -159 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned 4 10 -154 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned 7 10 -144 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}


