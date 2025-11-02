
execute as @a[scores={ConfirmTrigger=1}] run scoreboard players set @s Confirm 1
execute as @a[scores={ConfirmTrigger=2}] run scoreboard players set @s Confirm 2
execute as @a[scores={ConfirmTrigger=1}] at @s run function messages:playing_confirmation_click
execute as @a[scores={ConfirmTrigger=2}] at @s run function messages:spectating_confirmation_click

execute as @a[scores={ConfirmTrigger=1..}] run scoreboard players set @s ConfirmTrigger 0

execute unless entity @a[scores={Confirm=0}] run function core:lobby/confirmation/start_game_after_confirmation
scoreboard players remove confirmation_counter lobby 1
execute if score confirmation_counter lobby matches 1 run function core:lobby/confirmation/confirmation_reset
