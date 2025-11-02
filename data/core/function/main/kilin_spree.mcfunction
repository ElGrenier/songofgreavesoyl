# KillSpreeCounter (playerKillCount)
# KillSpree (dummy)
# KillSpreeTick (dummy)

#What is KillRestriction2 ?


execute as @a[scores={KillSpreeCounter=1..}] run scoreboard players add @s KillSpree 1
execute as @a[scores={KillSpreeCounter=1..}] run scoreboard players set @s KillSpreeTick 0
execute as @a[scores={KillSpreeCounter=1..}] run function messages:kilin_spree
execute as @a[scores={KillSpreeCounter=1..}] run scoreboard players remove @s KillSpreeCounter 1

execute as @a[scores={KillSpree=1..}] run scoreboard players add @s KillSpreeTick 1
execute as @a[scores={KillSpree=1..,KillSpreeTick=200..}] run scoreboard players set @s KillSpree 0
execute as @a[scores={KillSpreeTick=200..}] run scoreboard players set @s KillSpreeTick 0

