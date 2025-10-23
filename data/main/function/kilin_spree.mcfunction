# KillSpreeCounter (playerKillCount)
# KillSpree (dummy)
# KillSpreeTick (dummy)

execute as @a[tag=blacksouls,scores={KillRestriction2=1..}] run scoreboard players add @s KillRestriction2 1
execute as @a[tag=blacksouls,scores={KillRestriction2=10..}] run scoreboard players set @s KillSpreeCounter 0
execute as @a[tag=blacksouls,scores={KillRestriction2=10..}] run scoreboard players set @s KillRestriction2 0
execute as @a[tag=blacksouls,scores={KillSpreeCounter=1..,KillRestriction2=0}] run scoreboard players set @s KillRestriction2 1

execute as @a[scores={KillSpreeCounter=1..}] unless entity @s[tag=blacksouls,scores={KillRestriction2=2..}] run scoreboard players add @s KillSpree 1
execute as @a[scores={KillSpreeCounter=1..}] unless entity @s[tag=blacksouls,scores={KillRestriction2=2..}] run scoreboard players set @s KillSpreeTick 0
execute as @a[scores={KillSpreeCounter=1..}] unless entity @s[tag=blacksouls,scores={KillRestriction2=2..}] run function messages:kilin_spree
execute as @a[scores={KillSpreeCounter=1..}] unless entity @s[tag=blacksouls,scores={KillRestriction2=2..}] run scoreboard players remove @s KillSpreeCounter 1

execute as @a[scores={KillSpree=1..}] run scoreboard players add @s KillSpreeTick 1
execute as @a[scores={KillSpree=1..,KillSpreeTick=200..}] run scoreboard players set @s KillSpree 0
execute as @a[scores={KillSpreeTick=200..}] run scoreboard players set @s KillSpreeTick 0


tag @a[scores={char=0}] remove blacksouls
tag @a[scores={char=5}] add blacksouls
tag @a[scores={char=10}] add blacksouls
tag @a[scores={char=24}] add blacksouls
tag @a[scores={char=28}] add blacksouls
tag @a[scores={char=30}] add blacksouls
tag @a[scores={char=36}] add blacksouls
tag @a[scores={char=45}] add blacksouls
tag @a[scores={char=48}] add blacksouls
tag @a[scores={char=52}] add blacksouls
tag @a[scores={char=53}] add blacksouls
tag @a[scores={char=58}] add blacksouls
tag @a[scores={char=62}] add blacksouls
tag @a[scores={char=64}] add blacksouls
tag @a[scores={char=66}] add blacksouls
tag @a[scores={char=67}] add blacksouls
tag @a[scores={char=666}] add blacksouls