kill @e[tag=extinguisher_spawnpoint]
kill @e[tag=attacker_ceiling_spawnpoint]
kill @e[tag=crawlers_campfire]
kill @e[tag=crawlers_centre]
#clone 90 4 -118 86 22 -122 61 4 -151
#execute at @e[tag=crawlers_campfire] run clone 115 6 -128 103 5 -116 ~-6 ~3 ~-6
fill -129 4 -156 -125 -7 -152 air

execute positioned -127 5 -154 run summon marker ~ ~ ~ {Tags:["crawlers_centre"]}

execute positioned -100 4 -156 run summon marker ~ ~ ~ {Tags:["extinguisher_spawnpoint"]}
execute positioned -101 4 -155 run summon marker ~0.3 ~ ~0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -102 4 -155 run summon marker ~-0.15 ~ ~-0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -100 4 -154 run summon marker ~0.45 ~ ~1.2 {Tags:["extinguisher_spawnpoint"]}

execute positioned -130 4 -128 run summon marker ~-0.15 ~ ~0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -129 4 -128 run summon marker ~0.3 ~ ~-0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -129 4 -127 run summon marker ~-0.25 ~ ~1.2 {Tags:["extinguisher_spawnpoint"]}
execute positioned -128 4 -129 run summon marker ~0.45 ~ ~-1.2 {Tags:["extinguisher_spawnpoint"]}


execute positioned -129 12 -133 run summon marker ~0.5 ~ ~0.5 {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned -120 12 -152 run summon marker ~0.5 ~ ~0.5 {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned -108 12 -155 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned -114 12 -141 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned -118 12 -156 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}


