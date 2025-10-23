
# @s - player

scoreboard players set @s ReqConfirm 1
execute if entity @e[tag=GameStart,scores={RequireConfirmation=0}] run scoreboard players set @s Confirm 1
execute if entity @e[tag=GameStart,scores={RequireConfirmation=1}] run function messages:require_confirmation
