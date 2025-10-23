item replace entity @a[scores={char=68}] hotbar.0 with minecraft:iron_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Greathammer"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:4,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}],minecraft:item_model="minecraft:mace"] 1
item replace entity @a[scores={char=68}] hotbar.1 with minecraft:open_eyeblossom[minecraft:custom_name={text:"Pulverize",color:"dark_aqua",bold:1b}] 1
item replace entity @a[scores={char=68}] hotbar.2 with minecraft:iron_boots[minecraft:custom_name={text:"Catch Up",color:"dark_aqua",bold:1b}] 1
item replace entity @s[scores={char=68}] armor.head with minecraft:player_head[minecraft:custom_name="Head",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:6.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1882506042,-1938469333,-1264120337,1864856646],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWU1MjVkN2VjNjdmYmQxM2NjZDIyNDU0ZDljYzJmODVmZmU5OGE4Nzc2NDFiMjEwYjhiNWVmYzU0N2QzMDNlMiJ9fX0="}]}] 1
item replace entity @a[scores={char=68}] armor.chest with minecraft:leather_chestplate[minecraft:trim={pattern:"shaper",material:"diamond"},minecraft:custom_name="Armor",minecraft:dyed_color=7715007,minecraft:unbreakable={}] 1
item replace entity @a[scores={char=68}] armor.legs with minecraft:leather_leggings[minecraft:trim={pattern:"silence",material:"copper"},minecraft:custom_name="Armor",minecraft:dyed_color=3547172,minecraft:unbreakable={}] 1
item replace entity @a[scores={char=68}] armor.feet with minecraft:leather_boots[minecraft:custom_name="Armor",minecraft:dyed_color=1510927,minecraft:unbreakable={}] 1
scoreboard players set @a[scores={char=68}] MaxHP 26
scoreboard players set @a[scores={char=68}] passive_enfo 0
scoreboard players set @a pulverized 0
scoreboard players set @a pulverized_knocked 0
