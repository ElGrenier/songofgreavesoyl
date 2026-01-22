kill @e[tag=extinguisher_spawnpoint]
kill @e[tag=attacker_ceiling_spawnpoint]
kill @e[tag=crawlers_campfire]
kill @e[tag=crawlers_centre]
#clone 90 4 -118 86 22 -122 61 4 -151
#execute at @e[tag=crawlers_campfire] run clone 115 6 -128 103 5 -116 ~-6 ~3 ~-6
fill -114 12 -83 -118 22 -87 air

execute positioned -116 24 -85 run summon marker ~ ~ ~ {Tags:["crawlers_centre"]}




