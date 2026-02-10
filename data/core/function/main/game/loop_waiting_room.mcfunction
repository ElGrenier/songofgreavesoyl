
effect give @a[distance=..25] instant_health 1 1 true
scoreboard players set @a[distance=..25,scores={char=10}] passive_krak 0

scoreboard players set @a[distance=..25] CC_silence 3

tag @a[distance=..25] add waiting_room
tag @a[distance=26..] remove waiting_room

