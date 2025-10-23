item replace entity @a[scores={char=53}] hotbar.0 with minecraft:iron_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Scalpel"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.5d,operation:"add_multiplied_base",slot:"mainhand"}]] 1
item replace entity @a[scores={char=53}] hotbar.1 with minecraft:dead_tube_coral_fan[minecraft:custom_name={text:"Botched Surgery",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:aqua_affinity":1}] 1
item replace entity @a[scores={char=53}] hotbar.2 with minecraft:nether_sprouts[minecraft:custom_name={text:"Stitch Up",color:"dark_aqua",bold:1b}] 1
item replace entity @a[scores={char=53}] armor.head with minecraft:player_head[minecraft:custom_name="Head",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:4.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1726352530,-659011351,-1762401738,-1736383091],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGUxOTFkZTIwNWQzNmRmMGYzYWUyNzFlYWE0MGNlNDk0NTk3NjI0ZmQwYzJmZTU5MDQzMjFjYmQ0YWExMDJlZSJ9fX0="}]}] 1
item replace entity @a[scores={char=53}] armor.chest with minecraft:leather_chestplate[minecraft:trim={pattern:"rib",material:"amethyst"},minecraft:custom_name="Armor",minecraft:dyed_color=7981800,minecraft:unbreakable={}] 1
item replace entity @a[scores={char=53}] armor.legs with minecraft:leather_leggings[minecraft:trim={pattern:"silence",material:"amethyst"},minecraft:custom_name="Armor",minecraft:dyed_color=6895435,minecraft:unbreakable={}] 1
item replace entity @a[scores={char=53}] armor.feet with minecraft:leather_boots[minecraft:custom_name="Armor",minecraft:dyed_color=6898788,minecraft:unbreakable={}] 1
scoreboard players set @a[scores={char=53}] MaxHP 24
tag @a[scores={char=53}] add form_stitched
scoreboard players set @a[scores={char=53}] stitches 99
scoreboard players set @a[scores={char=53}] stitches_timer 1

