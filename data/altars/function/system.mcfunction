# Do tworzenia armorstandov:
# summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
# summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Las\"}"}
# summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Las\"}",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
# Nogi musza znajdowac sie wewnatrz beacona. Najedz myszka na srodkowe szklo, wybierz jego koordynaty i ODEJMIJ 2 od koordu Y

# WHY DIDN'T I JUST DO execute as @e[tag=Altars] run ...????

# opis zmiennych:
# Loading - [-100, 0, 100], określa stan przejmowania. 0 neutralny, -100 żółty, 100 fioletowy
# Assault - czy altar jest aktualnie przejmowany (1) tak (0) nie
# Assault2 - czy altar jest aktualnie przejmowany (1) tak (0) nie, OPÓŹNIONE względem Assault dzięki czemu można wygenerować pojedyńczy "sygnał" (powiadomienie o przejmowaniu altara)
# Typo - aktualny typ ołtarza, (-1) żółty, (0) neutralny, (1) fioletowy
# Team - zmienna określająca drużyne gracza, bo jestem upośledzony i nie wiedziałem jak używać team=purple
# SoundProof - zmienna używana do sound_feedback

# Przemijanie SoundProof
execute as @a[scores={SoundProof=1..}] run scoreboard players add @s SoundProof 1
execute as @a[scores={SoundProof=10..}] run scoreboard players set @s SoundProof 0

# Obleganie - druzyna fioletowa
#execute as @e[tag=Altars,scores={Loading=..101}] at @s if entity @a[distance=..3,scores={Team=1,tag=!the_mold}] run scoreboard players add @s Loading 1
execute as @e[tag=Altars,scores={Loading=..101}] at @s store result score @s Besiegers if entity @a[distance=..3,tag=!the_mold,scores={Team=1}]
execute as @e[tag=Altars,scores={Loading=..101}] at @s run scoreboard players operation @s Loading += @s Besiegers
execute as @e[tag=Altars,scores={Assault=1,Team=-1,Loading=..101}] at @s if entity @a[distance=..3,tag=!the_mold,scores={Team=1}] run scoreboard players set @s Assault2 1
execute as @e[tag=Altars,scores={Team=-1,Loading=..101}] at @s if entity @a[distance=..3,tag=!the_mold,scores={Team=1}] run scoreboard players set @s Assault 1

# Obleganie - druzyna zolta
#execute as @e[tag=Altars,scores={Loading=-101..}] at @s if entity @a[distance=..3,scores={Team=-1},tag=!the_mold] run scoreboard players remove @s Loading 1
execute as @e[tag=Altars,scores={Loading=-101..}] at @s store result score @s Besiegers if entity @a[distance=..3,tag=!the_mold,scores={Team=-1}]
execute as @e[tag=Altars,scores={Loading=-101..}] at @s run scoreboard players operation @s Loading -= @s Besiegers
execute as @e[tag=Altars,scores={Assault=1,Team=1,Loading=-101..}] at @s if entity @a[distance=..3,tag=!the_mold,scores={Team=-1}] run scoreboard players set @s Assault2 1
execute as @e[tag=Altars,scores={Team=1,Loading=-101..}] at @s if entity @a[distance=..3,tag=!the_mold,scores={Team=-1}] run scoreboard players set @s Assault 1

# Reset po nieudanym oblezeniu - zolci
execute as @e[tag=Altars,scores={Team=1}] at @s unless entity @a[distance=..3,tag=!the_mold,scores={Team=-1}] run scoreboard players set @s Loading 101
execute as @e[tag=Altars,scores={Team=1}] at @s unless entity @a[distance=..3,tag=!the_mold,scores={Team=-1}] run scoreboard players set @s Assault 0

# Reset po nieudanym oblezeniu - fioletowi
execute as @e[tag=Altars,scores={Team=-1}] at @s unless entity @a[distance=..3,tag=!the_mold,scores={Team=1}] run scoreboard players set @s Loading -101
execute as @e[tag=Altars,scores={Team=-1}] at @s unless entity @a[distance=..3,tag=!the_mold,scores={Team=1}] run scoreboard players set @s Assault 0

# Powiadomienia
execute as @e[tag=Altars,scores={Assault2=0,Assault=1}] at @s run function messages:altars_siege

# Snd effect
execute as @e[tag=Altars] at @s run function altars:sound_feedback

# Zerowanie loadingu dla neutralnych
execute as @e[tag=Altars,scores={Team=0}] at @s unless entity @a[distance=..3,tag=!the_mold] run scoreboard players set @s Loading 0

# Wywolania funkcji odpowiadajacych za zmiane kolorkow itd.
execute as @e[tag=Altars] at @s if entity @s[scores={Team=0..,Loading=..-101}] run function altars:yellowtakeover
execute as @e[tag=Altars] at @s if entity @s[scores={Team=..0,Loading=101..}] run function altars:purpletakeover

# Reset gdy oltarz neutralny
execute as @e[tag=Altars] at @s if entity @s[scores={Typo=-1,Loading=-3..3}] run function altars:neutralify
execute as @e[tag=Altars] at @s if entity @s[scores={Typo=1,Loading=-3..3}] run function altars:neutralify

# Zerowanie Assaulta2 - damn namieszalem
execute as @e[tag=Altars,scores={Assault=0}] at @s run scoreboard players set @s Assault2 0