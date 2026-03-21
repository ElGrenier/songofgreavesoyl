execute as @a[scores={BansTrigger=1..999}] store result storage bans:ban_number char int 1 run scoreboard players get @s BansTrigger
execute if entity @a[scores={BansTrigger=1..999}] run return run function bans:add_bans_stand with storage bans:ban_number

execute as @a[scores={BansTrigger=9999}] run return run function bans:unban_all

execute as @a[scores={BansTrigger=9011}] run function bans:ban_class/fighter
execute as @a[scores={BansTrigger=9021}] run function bans:unban_class/fighter
execute as @a[scores={BansTrigger=9012}] run function bans:ban_class/marksman
execute as @a[scores={BansTrigger=9022}] run function bans:unban_class/marksman
execute as @a[scores={BansTrigger=9013}] run function bans:ban_class/mage
execute as @a[scores={BansTrigger=9023}] run function bans:unban_class/mage
execute as @a[scores={BansTrigger=9014}] run function bans:ban_class/assassin
execute as @a[scores={BansTrigger=9024}] run function bans:unban_class/assassin
execute as @a[scores={BansTrigger=9015}] run function bans:ban_class/tank
execute as @a[scores={BansTrigger=9025}] run function bans:unban_class/tank
execute as @a[scores={BansTrigger=9016}] run function bans:ban_class/support
execute as @a[scores={BansTrigger=9026}] run function bans:unban_class/support
execute as @a[scores={BansTrigger=9017}] run function bans:ban_class/specialist
execute as @a[scores={BansTrigger=9027}] run function bans:unban_class/specialist

function bans:dialog with storage bans:ban_number colour
scoreboard players enable @a BansTrigger
scoreboard players enable @a Bans_Select_Trigger
scoreboard players set @a BansTrigger 0
scoreboard players set @a Bans_Select_Trigger 0


