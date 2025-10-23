summon minecraft:armor_stand 209.5 4.00 -125.5 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["Memory"]}

# this should be the same as lobby:spawn_gamestart. If its different it's not gamebreaking but still, bad practice
scoreboard players set @e[tag=Memory] memMap 1
scoreboard players set @e[tag=Memory] memScore 1000
scoreboard players set @e[tag=Memory] memUnlessDraft 1
scoreboard players set @e[tag=Memory] memTeamSelect 0
scoreboard players set @e[tag=Memory] memMaxLoading 98
scoreboard players set @e[tag=Memory] memFallenFlagCountdown 200
scoreboard players set @e[tag=Memory] memDmScore 0
scoreboard players set @e[tag=Memory] Memorize 0