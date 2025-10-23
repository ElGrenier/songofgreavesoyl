
# @e[tag=GameStart] to be saved
# @e[tag=Memory] to store

scoreboard players operation @e[tag=Memory] memScore = @e[tag=GameStart] Score
scoreboard players operation @e[tag=Memory] memMap = @e[tag=GameStart] Map
scoreboard players operation @e[tag=Memory] memDmScore = @e[tag=GameStart] dmScore
scoreboard players operation @e[tag=Memory] memUnlessDraft = @e[tag=GameStart] unless_draft
scoreboard players operation @e[tag=Memory] memTeamSelect = @e[tag=GameStart] TeamSelect
scoreboard players operation @e[tag=Memory] memMaxLoading = @e[tag=GameStart] maxLoading
scoreboard players operation @e[tag=Memory] memFallenFlagCountdown = @e[tag=GameStart] fallen_flag_max_countdown
scoreboard players operation @e[tag=Memory] memRequireConfirmation = @e[tag=GameStart] RequireConfirmation

execute store result score @e[tag=Memory] numWavMarker if entity @e[tag=wav_mode]