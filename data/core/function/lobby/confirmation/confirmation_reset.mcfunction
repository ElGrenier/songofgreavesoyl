
execute as @a at @s run function messages:confirmation_expired
scoreboard players set @a Confirm 0
scoreboard players set confirmation_counter lobby 0
