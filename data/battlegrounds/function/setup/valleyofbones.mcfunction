# Tworzenie oltarzy, setup
summon minecraft:armor_stand 277 14 -14 {CustomName:"Lone Lane Cavern",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:armor_stand 277 16 19 {CustomName:"Sorog's Hill",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:armor_stand 277 11 51 {CustomName:"Forest of Bones",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
function altars:setup


# Tworzenie spawnow
summon minecraft:armor_stand 315 16 19 {Rotation:[90.0f,0.0f],CustomName:"Purple",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon minecraft:armor_stand 239 16 19 {Rotation:[-90.0f,0.0f],CustomName:"Yellow",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Usuwanie blokady
setblock 277 38 -14 minecraft:air
setblock 277 38 19 minecraft:air
setblock 277 38 51 minecraft:air
