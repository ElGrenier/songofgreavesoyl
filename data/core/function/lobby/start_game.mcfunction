
execute if score require_confirmation lobby matches 0 run function core:lobby/confirmation/start_game_after_confirmation
execute if score require_confirmation lobby matches 1 if score confirmation_counter lobby matches ..1 run function core:lobby/confirmation/confirmation_start

