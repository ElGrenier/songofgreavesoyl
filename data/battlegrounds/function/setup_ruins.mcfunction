# Tworzenie oltarzy, setup
summon minecraft:armor_stand 185.37 10.00 -152.43 {CustomName:"Cave",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:armor_stand 216.35 20.00 -183.65 {CustomName:"Ruins",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:armor_stand 243.39 16.00 -210.54 {CustomName:"Hill",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
function altars:setup

# Tworzenie buffow, setup

# Tworzenie spawnow
summon minecraft:armor_stand 189.36 18.57 -210.00 {Rotation:[-45.0f,0.0f],CustomName:"Purple",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon minecraft:armor_stand 243.43 18.58 -157.00 {Rotation:[135.0f,0.0f],CustomName:"Yellow",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Usuwanie blokady
setblock 185 38 -153 minecraft:air
setblock 216 38 -184 minecraft:air
setblock 243 38 -211 minecraft:air
