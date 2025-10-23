
# execute as @e[tag=Altars] at @s
# @s - altar
#
# Loading [-100, 0, 100]

###############################################################

# YELLOW

execute if entity @s[scores={Loading=-6..-1}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.2 1
execute if entity @s[scores={Loading=-6..-1}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run scoreboard players set @s SoundProof 1

execute if entity @s[scores={Loading=-25..-20}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.4 1
execute if entity @s[scores={Loading=-25..-20}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run scoreboard players set @s SoundProof 1

execute if entity @s[scores={Loading=-45..-40}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.6 1
execute if entity @s[scores={Loading=-45..-40}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run scoreboard players set @s SoundProof 1

execute if entity @s[scores={Loading=-65..-60}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.8 1
execute if entity @s[scores={Loading=-65..-60}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run scoreboard players set @s SoundProof 1

execute if entity @s[scores={Loading=-85..-80}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1 1
execute if entity @s[scores={Loading=-85..-80}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run scoreboard players set @s SoundProof 1

###############################################################

# PURPLE

execute if entity @s[scores={Loading=1..6}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.2 1
execute if entity @s[scores={Loading=1..6}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run scoreboard players set @s SoundProof 1

execute if entity @s[scores={Loading=20..25}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.4 1
execute if entity @s[scores={Loading=20..25}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run scoreboard players set @s SoundProof 1

execute if entity @s[scores={Loading=40..45}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.6 1
execute if entity @s[scores={Loading=40..45}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run scoreboard players set @s SoundProof 1

execute if entity @s[scores={Loading=60..65}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.8 1
execute if entity @s[scores={Loading=60..65}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run scoreboard players set @s SoundProof 1

execute if entity @s[scores={Loading=80..85}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1 1
execute if entity @s[scores={Loading=80..85}] as @a[distance=..3] if entity @s[scores={SoundProof=0}] run scoreboard players set @s SoundProof 1