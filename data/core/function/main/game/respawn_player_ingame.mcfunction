
# @s - player to be respawned

execute if entity @s[scores={Team=1}] unless score map_type settings matches 4 run tp @s @e[tag=SpawnPurple,limit=1]
execute if entity @s[scores={Team=-1}] unless score map_type settings matches 4 run tp @s @e[tag=SpawnYellow,limit=1]

#if no free spawn ffa, still spawn the player even if there is a player nearby
execute if score map_type settings matches 4 unless entity @a[tag=spawn_ffa,tag=spawnable] run tp @s @e[tag=spawn_ffa,limit=1,sort=random]
execute if score map_type settings matches 4 if entity @a[tag=spawn_ffa,tag=spawnable] run tp @s @e[tag=spawn_ffa,tag=spawnable,limit=1,sort=random]