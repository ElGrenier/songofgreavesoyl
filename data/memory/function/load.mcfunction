
# @e[tag=GameStart]
# @e[tag=Memory]

scoreboard players operation @e[tag=GameStart] Score = @e[tag=Memory] memScore
scoreboard players operation @e[tag=GameStart] Map = @e[tag=Memory] memMap
scoreboard players operation @e[tag=GameStart] dmScore = @e[tag=Memory] memDmScore
scoreboard players operation @e[tag=GameStart] unless_draft = @e[tag=Memory] memUnlessDraft
scoreboard players operation @e[tag=GameStart] TeamSelect = @e[tag=Memory] memTeamSelect
scoreboard players operation @e[tag=GameStart] maxLoading = @e[tag=Memory] memMaxLoading
scoreboard players operation @e[tag=GameStart] fallen_flag_max_countdown = @e[tag=Memory] memFallenFlagCountdown
scoreboard players operation @e[tag=GameStart] RequireConfirmation = @e[tag=Memory] memRequireConfirmation

execute if entity @e[tag=Memory,scores={numWavMarker=1}] run summon minecraft:marker 209 4 -118 {Tags:["wav_mode"]}
execute if entity @e[tag=Memory,scores={numWavMarker=0}] run kill @e[tag=wav_mode]