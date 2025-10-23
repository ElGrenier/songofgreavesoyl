
scoreboard players set @e[tag=GameStart] ConfirmationCounter 200
scoreboard players set @a Confirm 0
execute as @a at @s run function messages:confirmation_start