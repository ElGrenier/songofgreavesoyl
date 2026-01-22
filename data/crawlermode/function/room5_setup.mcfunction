kill @e[tag=extinguisher_spawnpoint]
kill @e[tag=attacker_ceiling_spawnpoint]
kill @e[tag=crawlers_campfire]
kill @e[tag=crawlers_centre]
#clone 90 4 -118 86 22 -122 61 4 -151
#execute at @e[tag=crawlers_campfire] run clone 115 6 -128 103 5 -116 ~-6 ~3 ~-6
fill -169 -7 -152 -173 4 -156 air

execute positioned -171 5 -154 run summon marker ~ ~ ~ {Tags:["crawlers_centre"]}

execute positioned -175 4 -133 run summon marker ~ ~ ~ {Tags:["extinguisher_spawnpoint"]}
execute positioned -175 4 -133 run summon marker ~0.3 ~ ~0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -175 4 -133 run summon marker ~-0.15 ~ ~-0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -175 4 -133 run summon marker ~0.45 ~ ~1.2 {Tags:["extinguisher_spawnpoint"]}

execute positioned -152 4 -154 run summon marker ~-0.15 ~ ~0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -152 4 -154 run summon marker ~0.3 ~ ~-0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -152 4 -154 run summon marker ~-0.25 ~ ~1.2 {Tags:["extinguisher_spawnpoint"]}
execute positioned -152 4 -154 run summon marker ~0.45 ~ ~-1.2 {Tags:["extinguisher_spawnpoint"]}


execute positioned -153 10 -150 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned -160 7 -134 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned -176 9 -138 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned -149 7 -140 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned -173 11 -149 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}


