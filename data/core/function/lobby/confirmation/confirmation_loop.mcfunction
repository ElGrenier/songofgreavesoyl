
# @s - GameStart ???

execute as @a[scores={ConfirmTrigger=1}] run scoreboard players set @s Confirm 1
execute as @a[scores={ConfirmTrigger=2}] run scoreboard players set @s Confirm 2
execute as @a[scores={ConfirmTrigger=1}] at @s run function messages:playing_confirmation_click
execute as @a[scores={ConfirmTrigger=2}] at @s run function messages:spectating_confirmation_click

execute as @a[scores={ConfirmTrigger=1..}] run scoreboard players set @s ConfirmTrigger 0

execute unless entity @a[scores={Confirm=0}] run function lobby:start_game_after_confirmation
scoreboard players remove @s ConfirmationCounter 1
execute if entity @s[scores={ConfirmationCounter=1}] run function lobby:confirmation_reset
