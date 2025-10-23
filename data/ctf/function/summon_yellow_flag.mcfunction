function ctf:spawn_flag
team join yellow @e[distance=..2,tag=flag]
execute as @e[distance=..2,tag=flag] run function ctf:initiate_flag
data merge entity @e[distance=..2,tag=flag,limit=1] {equipment:{head:{id:"minecraft:yellow_banner",count:1}}}