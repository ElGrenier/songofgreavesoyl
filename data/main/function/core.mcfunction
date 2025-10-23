#chars related

team leave @a[tag=PracticeRoom,scores={universal_death=1..}]
tag @a[tag=PracticeRoom,scores={universal_death=1..}] add ExitPracticeRoom



function customhit:core
function chars:showkit
function chars:all_chars_spells
function chars:rangedcd
function chars:spellcooldowns
function chars:cc_display
function chars:cc_actual
function chars:cooldowndisplay
function chars:regen
function battlegrounds:railrestore
function chars:check_armor
function chars:team_wool
function main:picks_scoreboard

function chars:surrender

execute as @a run function main:hp_display

execute as @a[tag=!welcomemessage] run function main:welcome_message

#mc related
#effect give @a saturation 999 100 true
#advancement revoke @a everything
recipe give @a[tag=!recipe] *
tag @a[tag=!recipe] add recipe
xp set @a 0 points
xp set @a 0 levels
difficulty easy

kill @e[type=minecraft:tnt]
kill @e[type=minecraft:end_crystal]

#azeth rzeczy

function main:kilin_spree
execute as @a run function main:hpercentage
execute as @e[type=minecraft:falling_block,tag=FAKE_BLOCK] run data merge entity @s {Time:1}
function scoredisplay_api:system
function main:game_end
scoreboard players set @a[team=purple] Team 1
scoreboard players set @a[team=yellow] Team -1
execute as @a[scores={DisplayDeath=1..}] run function main:deathmessages
function main:anti_spawnkill
#function buffs:system
function altars:system
function score:system
function ctf:main
function battlegrounds:timeofday

execute as @a[scores={Ticket=100..}] if entity @e[tag=GameStart] unless score @s Ticket = @e[tag=GameStart,limit=1] Ticket run function main:spawn_outsider
execute as @a[scores={Ticket=100..}] if entity @e[tag=Settings] unless score @s Ticket = @e[tag=Settings,limit=1] Ticket run function main:spawn_outsider
execute if entity @e[tag=Settings] unless entity @e[tag=GameStart] as @a[scores={Ticket=0}] run function main:spawn_outsider
execute as @a[scores={Outsider=1}] run scoreboard players set @s Ticket 1
execute as @e[tag=GameStart,scores={Ticket=0}] as @a[scores={Outsider=1}] run function main:reset_outsider

#lobby rzeczy

#function main:practice_room
execute if entity @e[tag=GameStart] run function main:practice_room
execute if entity @e[tag=GameStart] run function main:tutorial_stuff
execute if entity @e[tag=GameStart] run function lobby:lobby_trigger
execute if entity @e[tag=GameStart] run function bans:bans_system
execute if entity @e[tag=GameStart] run function chars:char_select
execute as @e[tag=GameStart,scores={ConfirmationCounter=1..}] at @s run function lobby:confirmation_loop


function main:wavmode

#spectator
gamemode spectator @a[tag=spectator]
scoreboard players set @a[tag=spectator] char 0
team leave @a[tag=spectator]

#realms censorship

##########execute unless entity @e[tag=1984] run summon minecraft:marker ~ ~ ~ {Tags:["1984"]}


function memory:loop