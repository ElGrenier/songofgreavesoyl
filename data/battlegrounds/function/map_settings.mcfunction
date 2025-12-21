# Function to get map_type depending on map. It's stored in settings(ingame) or lobby
#map type range :
# 0 : None (is set when there are no map)
# 1 : Altar
# 2 : Deathmatch
# 3 : CTF
# 4 : FFA

#The all random type is removed, to be an option in game settings instead

# In-game
execute if score map settings matches 0 run scoreboard players set map_type settings 0

execute if score map settings matches 1 run scoreboard players set map_type settings 1

execute if score map settings matches 2 run scoreboard players set map_type settings 0

execute if score map settings matches 3 run scoreboard players set map_type settings 2

execute if score map settings matches 4 run scoreboard players set map_type settings 2

execute if score map settings matches 5 run scoreboard players set map_type settings 2

execute if score map settings matches 6 run scoreboard players set map_type settings 1

execute if score map settings matches 7 run scoreboard players set map_type settings 1

execute if score map settings matches 8 run scoreboard players set map_type settings 2

execute if score map settings matches 9 run scoreboard players set map_type settings 2

execute if score map settings matches 10 run scoreboard players set map_type settings 1

execute if score map settings matches 11 run scoreboard players set map_type settings 2

execute if score map settings matches 12 run scoreboard players set map_type settings 1

execute if score map settings matches 13 run scoreboard players set map_type settings 2

execute if score map settings matches 14 run scoreboard players set map_type settings 3

execute if score map settings matches 15 run scoreboard players set map_type settings 2

execute if score map settings matches 16 run scoreboard players set map_type settings 2

execute if score map settings matches 17 run scoreboard players set map_type settings 1

execute if score map settings matches 18 run scoreboard players set map_type settings 3

execute if score map settings matches 19 run scoreboard players set map_type settings 1

execute if score map settings matches 20 run scoreboard players set map_type settings 2

execute if score map settings matches 21 run scoreboard players set map_type settings 2

execute if score map settings matches 22 run scoreboard players set map_type settings 1

# In-lobby
execute if score map lobby matches 1 run scoreboard players set map_type lobby 1

execute if score map lobby matches 2 run scoreboard players set map_type lobby 0

execute if score map lobby matches 3 run scoreboard players set map_type lobby 2

execute if score map lobby matches 4 run scoreboard players set map_type lobby 2

execute if score map lobby matches 5 run scoreboard players set map_type lobby 2

execute if score map lobby matches 6 run scoreboard players set map_type lobby 1

execute if score map lobby matches 7 run scoreboard players set map_type lobby 1

execute if score map lobby matches 8 run scoreboard players set map_type lobby 2

execute if score map lobby matches 9 run scoreboard players set map_type lobby 2

execute if score map lobby matches 10 run scoreboard players set map_type lobby 1

execute if score map lobby matches 11 run scoreboard players set map_type lobby 2

execute if score map lobby matches 12 run scoreboard players set map_type lobby 1

execute if score map lobby matches 13 run scoreboard players set map_type lobby 2

execute if score map lobby matches 14 run scoreboard players set map_type lobby 3

execute if score map lobby matches 15 run scoreboard players set map_type lobby 2

execute if score map lobby matches 16 run scoreboard players set map_type lobby 2

execute if score map lobby matches 17 run scoreboard players set map_type lobby 1

execute if score map lobby matches 18 run scoreboard players set map_type lobby 3

execute if score map lobby matches 19 run scoreboard players set map_type lobby 1

execute if score map lobby matches 20 run scoreboard players set map_type lobby 2

execute if score map lobby matches 21 run scoreboard players set map_type lobby 2

execute if score map lobby matches 22 run scoreboard players set map_type lobby 1
