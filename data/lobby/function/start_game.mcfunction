
execute if entity @e[tag=GameStart,scores={RequireConfirmation=0}] run function lobby:start_game_after_confirmation
execute if entity @e[tag=GameStart,scores={RequireConfirmation=1,ConfirmationCounter=..0}] run function core:lobby/confirmation_start

