
item replace entity @s[scores={char=19}] armor.head with minecraft:player_head[minecraft:custom_name="Head",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:0.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-2075967975,179061098,-1884561182,1752039427],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTRkNzRlODExZGE2ZjJiZDllNmY5NmJlZmEzZGJmMTc0MTU3ZTM2MDI5OGNiMDExNmI2NWY2MjU3MDgyNzgifX19"}]}] 1
item replace entity @s[scores={char=19}] armor.chest with minecraft:leather_chestplate[minecraft:trim={pattern:"sentry",material:"emerald"},minecraft:custom_name="Armor",minecraft:dyed_color=3648361,minecraft:unbreakable={}] 1
item replace entity @s[scores={char=19}] armor.legs with minecraft:leather_leggings[minecraft:trim={pattern:"silence",material:"amethyst"},minecraft:custom_name="Armor",minecraft:dyed_color=7388469,minecraft:unbreakable={}] 1
item replace entity @s[scores={char=19}] armor.feet with minecraft:leather_boots[minecraft:trim={pattern:"snout",material:"amethyst"},minecraft:custom_name="Armor",minecraft:dyed_color=16743918,minecraft:unbreakable={}] 1
scoreboard players set @a[scores={char=19}] MaxHP 20
scoreboard players set @a[scores={char=19}] s1_timer 0
scoreboard players set @a[scores={char=19}] s2_timer 0
scoreboard players set @a[scores={char=19}] spellCD1 0
scoreboard players set @a[scores={char=19}] spellCD2 0
scoreboard players set @a[scores={char=19}] spellCD3 0
clear @a[scores={char=19}] minecraft:barrier
item replace entity @a[scores={char=19}] hotbar.6 with minecraft:white_banner[minecraft:custom_name={text:"Surrender",color:"white",bold:1b},minecraft:lore=[{text:"Surrender vote must be unanimous",color:"gray"}]] 1
item replace entity @a[scores={char=19}] hotbar.4 with minecraft:enchanted_book[minecraft:custom_name={text:"Kit Description",color:"dark_green",bold:1b},minecraft:lore=[{text:"Drop this for detailed",color:"green"},{text:"description of with your",color:"green"},{text:"character's spells",color:"green"}]] 1
