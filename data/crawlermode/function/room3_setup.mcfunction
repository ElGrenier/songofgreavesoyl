kill @e[tag=extinguisher_spawnpoint]
kill @e[tag=attacker_ceiling_spawnpoint]
kill @e[tag=crawlers_campfire]
kill @e[tag=crawlers_centre]
#clone 90 4 -118 86 22 -122 61 4 -151
#execute at @e[tag=crawlers_campfire] run clone 115 6 -128 103 5 -116 ~-6 ~3 ~-6
fill -29 4 -152 -25 -3 -148 air

execute positioned -27 5 -150 run summon marker ~ ~ ~ {Tags:["crawlers_centre"]}

execute positioned -37 4 -162 run summon marker ~ ~ ~ {Tags:["extinguisher_spawnpoint"]}
execute positioned -35 4 -161 run summon marker ~0.3 ~ ~0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -17 4 -142 run summon marker ~-0.15 ~ ~-0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -17 4 -141 run summon marker ~0.45 ~ ~1.2 {Tags:["extinguisher_spawnpoint"]}

execute positioned -43 4 -148 run summon marker ~-0.15 ~ ~0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -42 4 -149 run summon marker ~0.3 ~ ~-0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -27 4 -134 run summon marker ~-0.25 ~ ~1.2 {Tags:["extinguisher_spawnpoint"]}
execute positioned -29 4 -135 run summon marker ~0.45 ~ ~-1.2 {Tags:["extinguisher_spawnpoint"]}


execute positioned -35 13 -146 run summon marker ~0.5 ~ ~0.5 {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned -34 13 -142 run summon marker ~0.5 ~ ~0.5 {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned -30 13 -144 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned -45 11 -144 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned -33 9 -133 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}


