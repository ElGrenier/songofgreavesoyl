summon minecraft:armor_stand 209.43 4.00 -125.52 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["GameStart"]}
# generic
scoreboard players set @e[tag=GameStart] maxLoading 98
scoreboard players set @e[tag=GameStart] Score 1000
scoreboard players set @e[tag=GameStart] Ticket 0
scoreboard players set @e[tag=GameStart] Map 1
scoreboard players set @e[tag=GameStart] Bans 0
scoreboard players set @e[tag=GameStart] unless_draft 1
scoreboard players set @e[tag=GameStart] LobbyModeSign 1
scoreboard players set @e[tag=GameStart] fallen_flag_max_countdown 200
# Team select mode
scoreboard players set @e[tag=GameStart] TeamSelect 0
scoreboard players set @e[tag=GameStart] LobbyTeamYellow 0
scoreboard players set @e[tag=GameStart] LobbyTeamPurple 0
scoreboard players set @e[tag=GameStart] LobbyTeamNone 1
scoreboard players set @e[tag=GameStart] Temp 0
# /scoreboard objectives add ScoreTemp dummy {"text":"ScoreToWin","color":""}
# Memory & confirmation
scoreboard players set @e[tag=GameStart] Memorize 0
scoreboard players set @e[tag=GameStart] RequireConfirmation 1
scoreboard players set @e[tag=GameStart] ConfirmationCounter 0

# Memory
execute as @e[tag=GameStart] run function memory:on_spawn_gamestart