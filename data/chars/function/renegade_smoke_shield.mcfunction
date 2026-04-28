
execute if entity @a[scores={char=26,s2_timer=1..20}] as @e[distance=..2,tag=projectile] unless score @s Team = @p[scores={char=26}] Team run tag @s add 360_windwall

execute at @e[tag=360_windwall] run particle dust{color:[0.67,0.0,0.0],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.1 5
execute at @e[tag=360_windwall] run particle dust{color:[0.37,0.0,0.0],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.1 5
execute at @e[tag=360_windwall] run playsound entity.breeze.deflect master @a[distance=..15] ~ ~ ~ 0.4 0.4 1
execute at @e[tag=360_windwall] run playsound entity.phantom.death master @a[distance=..15] ~ ~ ~ 0.4 1.6 1
kill @e[tag=360_windwall]

execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^1 ^0.6 ^0.6 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^0.8 ^0.6 ^0.6 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^0.6 ^0.6 ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^0.4 ^0.6 ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^0.2 ^0.6 ^1 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^ ^0.6 ^1 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^-0.2 ^0.6 ^1 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^-0.4 ^0.6 ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^-0.6 ^0.6 ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^-0.8 ^0.6 ^0.6 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^-1 ^0.6 ^0.6 0 0 0 0 1

execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^1 ^0.3 ^0.6 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^0.8 ^0.3 ^0.6 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^0.6 ^0.3 ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^0.4 ^0.3 ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^0.2 ^0.3 ^1 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^ ^0.3 ^1 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^-0.2 ^0.3 ^1 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^-0.4 ^0.3 ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^-0.6 ^0.3 ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^-0.8 ^0.3 ^0.6 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^-1 ^0.3 ^0.6 0 0 0 0 1

execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^1 ^ ^0.6 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^0.8 ^ ^0.6 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^0.6 ^ ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^0.4 ^ ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^0.2 ^ ^1 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^ ^ ^1 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^-0.2 ^ ^1 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^-0.4 ^ ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^-0.6 ^ ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^-0.8 ^ ^0.6 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^-1 ^ ^0.6 0 0 0 0 1

execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^1 ^-0.3 ^0.6 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^0.8 ^-0.3 ^0.6 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^0.6 ^-0.3 ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^0.4 ^-0.3 ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^0.2 ^-0.3 ^1 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^ ^-0.3 ^1 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^-0.2 ^-0.3 ^1 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^-0.4 ^-0.3 ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^-0.6 ^-0.3 ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^-0.8 ^-0.3 ^0.6 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.37,0.0,0.0],scale:1} ^-1 ^-0.3 ^0.6 0 0 0 0 1

execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^1 ^-0.6 ^0.6 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^0.8 ^-0.6 ^0.6 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^0.6 ^-0.6 ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^0.4 ^-0.6 ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^0.2 ^-0.6 ^1 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^ ^-0.6 ^1 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^-0.2 ^-0.6 ^1 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^-0.4 ^-0.6 ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^-0.6 ^-0.6 ^0.8 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^-0.8 ^-0.6 ^0.6 0 0 0 0 1
execute if entity @a[scores={char=26,s2_timer=1..14}] rotated as @p[scores={char=26}] run particle dust{color:[0.67,0.0,0.0],scale:1} ^-1 ^-0.6 ^0.6 0 0 0 0 1



