# Tworzenie oltarzy, setup
summon minecraft:marker 185.37 10.00 -152.43 {CustomName:"Cave",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:marker 216.35 20.00 -183.65 {CustomName:"Ruins",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:marker 243.39 16.00 -210.54 {CustomName:"Hill",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
function altars:setup

# Tworzenie buffow, setup

# Tworzenie spawnow
summon minecraft:marker 189.36 18.57 -210.00 {Rotation:[-45.0f,0.0f],CustomName:"Purple",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon minecraft:marker 243.43 18.58 -157.00 {Rotation:[135.0f,0.0f],CustomName:"Yellow",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Usuwanie blokady
setblock 185 38 -153 minecraft:air
setblock 216 38 -184 minecraft:air
setblock 243 38 -211 minecraft:air
