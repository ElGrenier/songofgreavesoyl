item replace entity @a[scores={char=51}] hotbar.0 with minecraft:iron_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Shiv"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:1.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.4d,operation:"add_multiplied_base",slot:"mainhand"}]] 1
item replace entity @a[scores={char=51}] hotbar.1 with minecraft:red_stained_glass[minecraft:custom_name={text:"SURPRISE!",color:"dark_aqua",bold:1b}] 1
item replace entity @a[scores={char=51}] hotbar.2 with minecraft:red_glazed_terracotta[minecraft:custom_name={text:"Dazzle Orb",color:"dark_aqua",bold:1b}] 1
item replace entity @s[scores={char=51}] armor.head with minecraft:player_head[minecraft:custom_name="Head",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:-2.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;780759048,-1431482799,-1743510576,-2015010110],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmIzNDQwYWI5MGE2OTBkNzNkZmEwNjhlYmJiNmM3ZWZhODhlODg5OGUzZDY0NjBlMmMwODg2ZWVhNjU4MzUyZCJ9fX0="}]}] 1
item replace entity @s[scores={char=51}] armor.chest with minecraft:leather_chestplate[minecraft:custom_name="Armor",minecraft:dyed_color=12065820,minecraft:unbreakable={}] 1
item replace entity @s[scores={char=51}] armor.legs with minecraft:leather_leggings[minecraft:trim={pattern:"ward",material:"iron"},minecraft:custom_name="Armor",minecraft:dyed_color=12065820,minecraft:unbreakable={}] 1
item replace entity @s[scores={char=51}] armor.feet with minecraft:leather_boots[minecraft:trim={pattern:"flow",material:"iron"},minecraft:custom_name="Armor",minecraft:dyed_color=14415871,minecraft:unbreakable={}] 1
scoreboard players set @a[scores={char=51}] MaxHP 18
tag @a[scores={char=51}] remove laugh
tag @a[scores={char=51}] add dazzle
scoreboard players set @a[scores={char=51}] juggle_animation 0
scoreboard players set @a[scores={char=51}] juggle 0
