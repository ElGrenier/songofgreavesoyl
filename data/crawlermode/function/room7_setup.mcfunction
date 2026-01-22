kill @e[tag=extinguisher_spawnpoint]
kill @e[tag=attacker_ceiling_spawnpoint]
kill @e[tag=crawlers_campfire]
kill @e[tag=crawlers_centre]
#clone 90 4 -118 86 22 -122 61 4 -151
#execute at @e[tag=crawlers_campfire] run clone 115 6 -128 103 5 -116 ~-6 ~3 ~-6
fill -140 4 -226 -136 -7 -230 air

execute positioned -138 5 -228 run summon marker ~ ~ ~ {Tags:["crawlers_centre"]}

execute positioned -120 7 -199 run summon marker ~ ~ ~ {Tags:["extinguisher_spawnpoint"]}
execute positioned -120 7 -199 run summon marker ~0.3 ~ ~0.2 {Tags:["extinguisher_spawnpoint"]}

execute positioned -107 4 -227 run summon marker ~-0.15 ~ ~-0.1 {Tags:["extinguisher_spawnpoint"]}
execute positioned -107 4 -227 run summon marker ~0.45 ~ ~0.2 {Tags:["extinguisher_spawnpoint"]}

execute positioned -134 4 -250 run summon marker ~-0.15 ~ ~0.6 {Tags:["extinguisher_spawnpoint"]}
execute positioned -134 4 -250 run summon marker ~0.3 ~ ~-0.6 {Tags:["extinguisher_spawnpoint"]}

execute positioned -158 6 -226 run summon marker ~-0.25 ~ ~0.2 {Tags:["extinguisher_spawnpoint"]}
execute positioned -158 6 -226 run summon marker ~0.45 ~ ~-0.2 {Tags:["extinguisher_spawnpoint"]}

execute positioned -141 4 -196 run summon marker ~-0.25 ~ ~0.2 {Tags:["extinguisher_spawnpoint"]}
execute positioned -141 4 -196 run summon marker ~0.45 ~ ~-0.2 {Tags:["extinguisher_spawnpoint"]}

execute positioned -143 19 -218 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned -122 20 -219 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned -129 20 -244 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned -148 20 -236 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}
execute positioned -153 20 -222 run summon marker ~ ~ ~ {Tags:["attacker_ceiling_spawnpoint"]}

