item replace entity @a[scores={char=50}] hotbar.0 with minecraft:golden_hoe[minecraft:custom_name={bold:1b,color:"gray",text:"Scepter"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"},{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"}]] 1
item replace entity @a[scores={char=50}] hotbar.1 with minecraft:music_disc_5[minecraft:custom_name={text:"Bout of Madness",color:"dark_aqua",bold:1b}] 1
item replace entity @a[scores={char=50}] hotbar.2 with minecraft:raw_gold[minecraft:custom_name={text:"Powerslaves",color:"dark_aqua",bold:1b}] 1
item replace entity @a[scores={char=50}] armor.head with minecraft:player_head[minecraft:custom_name="Mask",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:profile={id:[I;-1900689272,-6733217,-1787221462,-2041823133],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWM0ZGU0NmIzNWJmYjc5NDE4ZTk2NjMzZjRhMWE5YmI1NTQ3YzhlYWQ2YmI4NGQ4MWIyZGUzYjFjZDFiZWMifX19"}]}] 1
item replace entity @s[scores={char=50}] armor.chest with minecraft:leather_chestplate[minecraft:trim={pattern:"rib",material:"amethyst"},minecraft:custom_name="Armor",minecraft:dyed_color=2168856,minecraft:unbreakable={}] 1
item replace entity @s[scores={char=50}] armor.legs with minecraft:leather_leggings[minecraft:trim={pattern:"silence",material:"gold"},minecraft:custom_name="Armor",minecraft:dyed_color=16765501,minecraft:unbreakable={}] 1
item replace entity @s[scores={char=50}] armor.feet with minecraft:leather_boots[minecraft:custom_name="Armor",minecraft:dyed_color=16750369,minecraft:unbreakable={}] 1
scoreboard players set @a[scores={char=50}] form_cooldown 160
scoreboard players set @a[scores={char=50}] MaxHP 20
tag @a[scores={char=50}] add pharaoh
scoreboard players enable @a[scores={char=50}] chaos_forms
