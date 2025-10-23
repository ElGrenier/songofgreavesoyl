#execute as @a[tag=boomTag,scores={killedByDragon=1..}] run say tu komenda po wykryciu zdechniecia od aoe
execute as @a[tag=boomTag,scores={killedByDragon=1..}] run scoreboard players add @s DisplayDeath 1
execute as @a[tag=boomTag,scores={killedByDragon=1..}] run scoreboard players add @a[scores={char=7}] DisplayKill 1
scoreboard players set @a[scores={killedByDragon=1..}] killedByDragon 0
execute as @a[tag=boomTag] run tag @s remove boomTag
tag @e[nbt={CustomName:"Licznik"}] remove licz