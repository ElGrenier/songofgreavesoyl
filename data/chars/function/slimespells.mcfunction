kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:slime_ball"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:kelp"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_axe"}}]


#p respawn

execute unless entity @e[tag=slimerespawn] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","slimerespawn","entities_slimecore"]}

execute if entity @p[scores={char=12,universal_death=1..}] as @e[tag=slimerespawn] at @s run summon husk ~ ~2 ~ {Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:16.0f,Tags:["returntoslime","entities_slimecore"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:19980}],equipment:{legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":2091776},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":2091776},count:1},head:{id:"minecraft:slime_block",count:1}},attributes:[{id:"minecraft:max_health",base:16.0d}]}
execute at @p[scores={char=12}] run tp @e[tag=slimerespawn] ~ ~-2 ~

scoreboard players add @e[tag=returntoslime] returningtoslime 1
tp @a[scores={char=12}] @e[tag=returntoslime,scores={returningtoslime=101},limit=1]
execute at @e[tag=returntoslime,scores={returningtoslime=90..}] run playsound entity.slime.squish master @a[distance=..10] ~ ~ ~ 1 0.1 1
execute at @e[tag=returntoslime,scores={returningtoslime=101}] run particle item_slime ~ ~ ~ 2 2 2 0.001 400 force
tp @e[tag=returntoslime,scores={returningtoslime=102..}] ~ ~-200 ~

execute at @e[tag=returntoslime] run tp @e[tag=returntoslime] ~ ~ ~ facing entity @p
execute at @e[tag=returntoslime] run particle item_slime ~ ~ ~ 0.3 1 0.3 0.001 30 force
execute at @e[tag=returntoslime] run particle item_slime ~ ~ ~ 0.5 0.5 0.5 0.001 40 force

#bonushp
scoreboard players set @a[scores={char=12}] matematyka 2
scoreboard players set @a[scores={char=12,passive_slim=..-1}] passive_slim 0
scoreboard players set @a[scores={char=12,passive_slim=21..}] passive_slim 20
scoreboard players operation @a[scores={universal_death=1..,char=12}] passive_slim /= @a[scores={char=12}] matematyka


execute at @a[scores={slime_feed=1},team=purple] run scoreboard players add @a[distance=..8,scores={char=12},team=purple] passive_slim 2
execute at @a[scores={slime_feed=1},team=yellow] run scoreboard players add @a[distance=..8,scores={char=12},team=yellow] passive_slim 2
scoreboard players set @a[scores={slime_feed=1..}] slime_feed 0

item replace entity @a[scores={char=12,passive_slim=0}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:0.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=1}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:2.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=2}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:4.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=3}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:6.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=4}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:8.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=5}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:10.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=6}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:12.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=7}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:14.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=8}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:16.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=9}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:18.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=10}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:20.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=11}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:22.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=12}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:24.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=13}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:26.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=14}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:28.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=15}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:30.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=16}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:32.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=17}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:34.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=18}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:36.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=19}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:38.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1
item replace entity @a[scores={char=12,passive_slim=20}] armor.head with minecraft:player_head[minecraft:custom_name="Slime",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:40.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1660764032,-1386656399,-1158577532,878973234],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIxZTc5NTdmZWI4NTUxMjQxZmExZTkxODEzNTZiYzBkZjU2YTIzMzIzNjE0YTg4Y2E1ZmVkNGRjYmY2YzJlIn19fQ=="}]}] 1

scoreboard players set @a[scores={char=12,passive_slim=0}] MaxHP 20
scoreboard players set @a[scores={char=12,passive_slim=1}] MaxHP 22
scoreboard players set @a[scores={char=12,passive_slim=2}] MaxHP 24
scoreboard players set @a[scores={char=12,passive_slim=3}] MaxHP 26
scoreboard players set @a[scores={char=12,passive_slim=4}] MaxHP 28
scoreboard players set @a[scores={char=12,passive_slim=5}] MaxHP 30
scoreboard players set @a[scores={char=12,passive_slim=6}] MaxHP 32
scoreboard players set @a[scores={char=12,passive_slim=7}] MaxHP 34
scoreboard players set @a[scores={char=12,passive_slim=8}] MaxHP 36
scoreboard players set @a[scores={char=12,passive_slim=9}] MaxHP 38
scoreboard players set @a[scores={char=12,passive_slim=10}] MaxHP 40
scoreboard players set @a[scores={char=12,passive_slim=11}] MaxHP 42
scoreboard players set @a[scores={char=12,passive_slim=12}] MaxHP 44
scoreboard players set @a[scores={char=12,passive_slim=13}] MaxHP 46
scoreboard players set @a[scores={char=12,passive_slim=14}] MaxHP 48
scoreboard players set @a[scores={char=12,passive_slim=15}] MaxHP 50
scoreboard players set @a[scores={char=12,passive_slim=16}] MaxHP 52
scoreboard players set @a[scores={char=12,passive_slim=17}] MaxHP 54
scoreboard players set @a[scores={char=12,passive_slim=18}] MaxHP 56
scoreboard players set @a[scores={char=12,passive_slim=19}] MaxHP 58
scoreboard players set @a[scores={char=12,passive_slim=20}] MaxHP 60

#caustic hunger

scoreboard players set @a[scores={char=12,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=12,s1_timer=1,CC_silence=1..}] s1_timer 300

effect give @a[scores={char=12,s1_timer=1,CC_silence=0}] speed 1 5
effect clear @a[scores={char=12,s1_timer=10,CC_silence=0}] speed
execute at @a[scores={char=12,s1_timer=10,CC_silence=0}] run playsound entity.slime.death master @a[distance=..10] ~ ~ ~ 1.0 0.5 1.0
execute at @a[scores={char=12,s1_timer=10,CC_silence=0}] run particle item_slime ~ ~ ~ 3 1.5 3 0.001 600 force
execute at @a[scores={char=12,s1_timer=10,CC_silence=0}] run particle falling_nectar ~ ~ ~ 3 1.5 3 0.001 200 force

execute at @a[scores={char=12,s1_timer=10,CC_silence=0}] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=12}] Team run tag @s add slime_sludged

scoreboard players set @e[tag=slime_sludged] vis_sludged 80
scoreboard players set @e[tag=slime_sludged] CC_exhaust 80
effect give @e[tag=slime_sludged] mining_fatigue 4 5
effect give @e[tag=slime_sludged] slowness 4 3
effect give @e[tag=slime_sludged] poison 2 2
tag @e remove slime_sludged

execute at @a[scores={vis_sludged=1..}] run particle item_slime ~ ~ ~ 0.4 1.2 0.4 0.1 5
execute at @a[scores={vis_sludged=1..}] run particle sneeze ~ ~ ~ 0.3 1.0 0.3 0.001 1
scoreboard players remove @a[scores={vis_sludged=1..}] vis_sludged 1

#endless growth

scoreboard players set @a[scores={char=12,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=12,s2_timer=1,CC_silence=1..}] s2_timer 80

execute at @a[scores={char=12,s2_timer=1,CC_silence=0}] run playsound entity.slime.attack master @a[distance=..10] ~ ~ ~ 1.0 0.5 1.0
execute at @a[scores={char=12,s2_timer=1,CC_silence=0}] run particle item_slime ~ ~ ~ 0.5 1 0.5 0.00001 200 force
effect give @a[scores={char=12,s2_timer=2,CC_defiled=0,CC_silence=0}] instant_health 1 0
effect give @a[scores={char=12,s2_timer=1,passive_slim=1..,CC_defiled=0,CC_silence=0}] instant_health 1 0
scoreboard players remove @a[scores={char=12,s2_timer=1,CC_silence=0}] passive_slim 1



# slime core

scoreboard players set @a[scores={s1_timer=1,char=12}] spellCD1 320
scoreboard players add @a[scores={s1_timer=1..,char=12}] s1_timer 1
scoreboard players set @a[scores={s1_timer=321..,char=12}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=12}] spellCD2 100
scoreboard players add @a[scores={s2_timer=1..,char=12}] s2_timer 1
scoreboard players set @a[scores={s2_timer=101..,char=12}] s2_timer 0

execute as @a[scores={char=12}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_axe",Slot:0b}]}] run clear @a[scores={char=12}] minecraft:diamond_axe
item replace entity @a[scores={char=12}] hotbar.0 with minecraft:diamond_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Slime mass"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=12,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=12}] minecraft:carrot_on_a_stick
item replace entity @a[scores={char=12,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:slime_ball",minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Caustic Hunger"}] 1

execute as @a[scores={char=12,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=12}] minecraft:warped_fungus_on_a_stick
item replace entity @a[scores={char=12,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:kelp",minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Endless Growth"}] 1
