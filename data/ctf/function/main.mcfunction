
# Okay so i goofed naming because I'm polish speaker who doesn't play a lot of CTF
# "Capture" refers to player PICKING UP the flag
# "Carrying" is, well, carrying flag by player
# "Fallen" refers to flag dropped by player, which can again be "captured" or "returned"
# "Return" when player of the same team picks the flag (returns it to his base)
# "Scoring" is when player delivers enemy flag to his base (which is usually called capturing, but i'm dumb)
# This naming convention is mostly valid for code. But it isn't consistent

# Summoning flag (if none)
execute unless entity @e[tag=flag,team=yellow] as @e[tag=yellowflagspawn] at @s run function ctf:summon_yellow_flag
execute unless entity @e[tag=flag,team=purple] as @e[tag=purpleflagspawn] at @s run function ctf:summon_purple_flag

# Flag falling
execute if entity @a[scores={purple_flag_captured=2,flag_carrier_death=1..},team=yellow] run function ctf:drop_purple_flag
execute if entity @a[scores={yellow_flag_captured=2,flag_carrier_death=1..},team=purple] run function ctf:drop_yellow_flag
scoreboard players set @a[scores={flag_carrier_death=1..}] flag_carrier_death 0

# SPIIIIIIIN
execute as @e[tag=flag] at @s run tp @s ~ ~ ~ ~2 ~

# Capturing flag
execute as @a[scores={CC_noflag=0,yellow_flag_captured=0},team=purple] at @s if entity @e[distance=..2,tag=flag,scores={flag_pick_restriction=0,yellow_flag_captured=0},team=yellow] run scoreboard players set @s yellow_flag_captured 1
execute as @a[scores={yellow_flag_captured=1}] at @s run scoreboard players set @e[tag=flag,team=yellow] yellow_flag_captured 1
execute as @e[tag=flag,scores={yellow_flag_captured=1},team=yellow] run function messages:yellow_flag_pickup
execute as @e[scores={yellow_flag_captured=1}] run scoreboard players set @s yellow_flag_captured 2
execute as @a[scores={CC_noflag=0,purple_flag_captured=0},team=yellow] at @s if entity @e[distance=..2,tag=flag,scores={flag_pick_restriction=0,purple_flag_captured=0},team=purple] run scoreboard players set @s purple_flag_captured 1
execute as @a[scores={purple_flag_captured=1}] at @s run scoreboard players set @e[tag=flag,team=purple] purple_flag_captured 1
execute as @e[tag=flag,scores={purple_flag_captured=1},team=purple] run function messages:purple_flag_pickup
execute as @e[scores={purple_flag_captured=1}] run scoreboard players set @s purple_flag_captured 2

# Flag picking restriction
scoreboard players add @e[tag=flag,scores={flag_pick_restriction=1..}] flag_pick_restriction 1
scoreboard players set @e[tag=flag,scores={flag_pick_restriction=21}] flag_pick_restriction 0

# CC_noflag
execute as @a[scores={CC_noflag=1..}] at @s run function ctf:drop_flag_player

# Carrying flag
execute as @a[scores={yellow_flag_captured=2,flag_carrier_death=0}] run scoreboard players set @s CC_flag 10
execute as @a[scores={purple_flag_captured=2,flag_carrier_death=0}] run scoreboard players set @s CC_flag 10
tp @e[tag=flag,scores={yellow_flag_captured=2}] @p[scores={yellow_flag_captured=2,flag_carrier_death=0}]
tp @e[tag=flag,scores={purple_flag_captured=2}] @p[scores={purple_flag_captured=2,flag_carrier_death=0}]

# Killing fallen flags
scoreboard players set @e[tag=flag,scores={purple_flag_captured=2}] flag_fallen_countdown 0
scoreboard players set @e[tag=flag,scores={yellow_flag_captured=2}] flag_fallen_countdown 0
execute as @e[tag=flag,scores={flag_fallen_countdown=1}] run function messages:fallen_flag_killed
kill @e[tag=flag,scores={flag_fallen_countdown=1}]
scoreboard players remove @e[tag=flag,scores={flag_fallen_countdown=1..}] flag_fallen_countdown 1

# Returning flag - doesn't work but Kisiel doesn't want this to exist anyway
#execute as @a[team=yellow] at @s if entity @e[distance=..2,tag=flag,team=yellow,scores={yellow_flag_captured=0,flag_fallen_cooldown=1..}] run scoreboard players add @s StatFlagReturned 1
#execute as @e[tag=flag,team=yellow,scores={yellow_flag_captured=0,flag_fallen_cooldown=1..}] at @s if entity @p[distance=..2,team=yellow] run function messages:flag_returning
#execute as @e[tag=flag,team=yellow,scores={yellow_flag_captured=0,flag_fallen_cooldown=1..}] at @s if entity @p[distance=..2,team=yellow] run kill @s
#execute as @a[team=purple] at @s if entity @e[distance=..2,tag=flag,team=purple,scores={purple_flag_captured=0,flag_fallen_cooldown=1..}] run scoreboard players add @s StatFlagReturned 1
#execute as @e[tag=flag,team=purple,scores={purple_flag_captured=0,flag_fallen_cooldown=1..}] at @s if entity @p[distance=..2,team=purple] run function messages:flag_returning
#execute as @e[tag=flag,team=purple,scores={purple_flag_captured=0,flag_fallen_cooldown=1..}] at @s if entity @p[distance=..2,team=purple] run kill @s

# Scoring
execute as @e[tag=flag,team=purple] at @s if entity @e[distance=..2,tag=yellowflagspawn] run function ctf:purple_flag_carried
execute as @e[tag=flag,team=yellow] at @s if entity @e[distance=..2,tag=purpleflagspawn] run function ctf:yellow_flag_carried

# dropping flag if there's no carrier
execute if entity @e[tag=flag,scores={yellow_flag_captured=2},team=yellow] unless entity @a[scores={yellow_flag_captured=2},team=purple] run function ctf:drop_yellow_flag
execute if entity @e[tag=flag,scores={purple_flag_captured=2},team=purple] unless entity @a[scores={purple_flag_captured=2},team=yellow] run function ctf:drop_purple_flag

# Purge data in returning player
execute as @a[scores={CtfLeft=1..}] run scoreboard players set @s yellow_flag_captured 0
execute as @a[scores={CtfLeft=1..}] run scoreboard players set @s purple_flag_captured 0
execute as @a[scores={CtfLeft=1..}] run scoreboard players remove @s CtfLeft 1

