kill @e[tag=extinguisher_spawnpoint]
kill @e[tag=attacker_ceiling_spawnpoint]
kill @e[tag=crawlers_campfire]
kill @e[tag=crawlers_centre]
#clone 90 4 -118 86 22 -122 61 4 -151
#execute at @e[tag=crawlers_campfire] run clone 115 6 -128 103 5 -116 ~-6 ~3 ~-6
fill 65 3 -147 61 -2 -151 air

execute positioned 63 5 -149 run summon marker ~ ~ ~ {Tags:["crawlers_centre"]}

execute positioned 40 4 -149 run summon marker ~ ~ ~ {Tags:["extinguisher_spawnpoint"]}
execute positioned 40 4 -149 run summon marker ~0.4 ~ ~0.7 {Tags:["extinguisher_spawnpoint"]}
execute positioned 40 4 -149 run summon marker ~-0.2 ~ ~-0.7 {Tags:["extinguisher_spawnpoint"]}
execute positioned 86 4 -149 run summon marker ~ ~ ~ {Tags:["extinguisher_spawnpoint"]}
execute positioned 86 4 -149 run summon marker ~-0.2 ~ ~0.7 {Tags:["extinguisher_spawnpoint"]}
execute positioned 86 4 -149 run summon marker ~0.4 ~ ~-0.7 {Tags:["extinguisher_spawnpoint"]}

execute positioned 83 4 -170 run summon marker ~ ~ ~ {Tags:["extinguisher_spawnpoint"]}
execute positioned 43 4 -129 run summon marker ~ ~ ~ {Tags:["extinguisher_spawnpoint"]}

execute positioned 72 11 -151 run summon marker ~0.5 ~ ~0.5 {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned 64 11 -141 run summon marker ~0.5 ~ ~0.5 {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned 54 11 -152 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned 66 12 -154 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}



