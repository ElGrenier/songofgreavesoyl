# Draft
execute if entity @a[distance=..15,scores={char=0}] if entity @e[tag=GameStart,scores={AllRandom=0}] if entity @e[tag=GameStart,scores={unless_draft=0}] unless entity @a[scores={Queue=1..}] run function main:queue_loss
# Normal
execute if entity @a[distance=..15,scores={char=0}] if entity @e[tag=GameStart,scores={AllRandom=0}] if entity @e[tag=GameStart,scores={unless_draft=1}] as @a[distance=..15,scores={char=0}] run function messages:lobby_char_select
execute if entity @a[distance=..15,scores={char=0}] if entity @e[tag=GameStart,scores={AllRandom=0}] if entity @e[tag=GameStart,scores={unless_draft=1}] as @a[distance=..15,scores={char=0}] run trigger ClassPickTrigger set 8
execute if entity @a[distance=..15,scores={char=0}] if entity @e[tag=GameStart,scores={AllRandom=0}] if entity @e[tag=GameStart,scores={unless_draft=1}] as @a[distance=..15,scores={char=0}] run tp @s 242.48 14.00 -125.51
# AllRandom
execute unless entity @a[distance=15..,scores={char=0}] if entity @a[distance=..15,scores={char=0}] if entity @e[tag=GameStart,scores={AllRandom=1}] if entity @a[scores={char=0}] unless entity @a[scores={Queue=1..}] run function lobby:loss_characters