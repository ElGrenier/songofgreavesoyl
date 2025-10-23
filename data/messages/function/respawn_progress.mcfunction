# @s - respawning player, status stored in Loading
# @e[limit=1, tag=Settings] - entity with game settings, stores number of ticks for respawn in maxLoading variable
# Loading goes from maximum (for example 100) to 1 (at 1 respawn happens)

scoreboard players operation @s tmp_respawn_time_left = @s Loading
scoreboard players set @s tmp_20 20
scoreboard players operation @s tmp_respawn_time_left /= @s tmp_20
scoreboard players add @s tmp_respawn_time_left 1

execute if entity @s[scores={Loading=2..}] run title @s times 0 50 0
execute if entity @s[scores={Loading=2..}] run title @s title {text:" ",type:"text"}
execute if entity @s[scores={Loading=2..}] run title @s subtitle [{text:"Respawning in",color:"gray",type:"text"},{text:" ",type:"text"},{score:{name:"@s",objective:"tmp_respawn_time_left"},color:"blue",type:"score"}]

# Clearing at the end
execute if entity @s[scores={Loading=1}] run title @s times 0 40 10
execute if entity @s[scores={Loading=1}] run title @s title {text:" ",type:"text"}
execute if entity @s[scores={Loading=1}] run title @s subtitle {text:" ",type:"text"}

#[{"text":"Respawning in ","color":"white"},{"text":"1","color":"white"}]