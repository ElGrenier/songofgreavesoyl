
# @s - player

scoreboard players set @s ReqConfirm 1
execute if score require_confirmation lobby matches 0 run scoreboard players set @s Confirm 1
execute if score require_confirmation lobby matches 1 run function messages:require_confirmation
