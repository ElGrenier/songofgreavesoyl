tag @s add aber_stack
execute if entity @a[scores={char=49},predicate=chars:aberration_looking_at] run scoreboard players set @a[scores={passive_aber_display=1}] passive_aber_display 0
execute if entity @a[scores={char=49},predicate=chars:aberration_looking_at] run scoreboard players set @s passive_aber_display 1
execute if entity @a[scores={char=49},predicate=chars:aberration_looking_at] run scoreboard players set @s passive_aber_display_timer 80
execute if entity @a[scores={char=49},predicate=chars:aberration_looking_at] run scoreboard players operation @a[scores={char=49}] passive_aber = @s passive_aber_stack
tag @s remove aber_stack