
item replace entity @a[scores={char=666}] armor.head with minecraft:player_head[minecraft:custom_name="Head",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:12.0d,operation:"add_value",slot:"head"}],minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE3YTY0ZjY5MjM0YjE5MzBhNDA5Yzk1Y2I1YTM5NzBjYzE5ZWNlMWYxMTlmM2JjZjZiZGIwZTMwN2EyMmY2MyJ9fX0="}]}] 1
item replace entity @s[scores={char=666}] armor.chest with minecraft:leather_chestplate[minecraft:trim={pattern:"silence",material:"emerald"},minecraft:custom_name="Armor",minecraft:dyed_color=8753460,minecraft:unbreakable={}] 1
item replace entity @a[scores={char=666}] armor.legs with minecraft:leather_leggings[minecraft:custom_name="Armor",minecraft:dyed_color=8753460,minecraft:unbreakable={}] 1
item replace entity @a[scores={char=666}] armor.feet with minecraft:leather_boots[minecraft:custom_name="Armor",minecraft:dyed_color=8753460,minecraft:unbreakable={}] 1


#item replace entity @a[scores={char=666}] hotbar.3 with player_head{display:{Name:'{"text":"My Mortal Host","color":"dark_aqua","bold":true}'},SkullOwner:{Id:[I;-2075967975,179061098,-1884561182,1752039427],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTRkNzRlODExZGE2ZjJiZDllNmY5NmJlZmEzZGJmMTc0MTU3ZTM2MDI5OGNiMDExNmI2NWY2MjU3MDgyNzgifX19"}]}}} 1

scoreboard players set @a[scores={char=666}] s1_timer 0
scoreboard players set @a[scores={char=666}] s2_timer 0
scoreboard players set @a[scores={char=666}] spellCD1 0
scoreboard players set @a[scores={char=666}] spellCD2 0
scoreboard players set @a[scores={char=666}] spellCD3 0
clear @a[scores={char=666}] minecraft:barrier
item replace entity @a[scores={char=666}] hotbar.6 with minecraft:white_banner[minecraft:custom_name={text:"Surrender",color:"white",bold:1b},minecraft:lore=[{text:"Surrender vote must be unanimous",color:"gray"}]] 1
item replace entity @a[scores={char=666}] hotbar.4 with minecraft:enchanted_book[minecraft:custom_name={text:"Kit Description",color:"dark_green",bold:1b},minecraft:lore=[{text:"Drop this for detailed",color:"green"},{text:"description of with your",color:"green"},{text:"character's spells",color:"green"}]] 1
