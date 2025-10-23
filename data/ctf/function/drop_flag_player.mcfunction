
# @s - player, which you want to drop the flag
# called on player without flag, shouldn't do anything

execute if entity @s[scores={purple_flag_captured=2},team=yellow] run function ctf:drop_purple_flag
execute if entity @s[scores={yellow_flag_captured=2},team=purple] run function ctf:drop_yellow_flag
