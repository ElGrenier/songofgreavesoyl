# Tworzenie oltarzy, setup
summon minecraft:marker -11 11 -104 {CustomName:"Nest",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:marker -27 11 -88 {CustomName:"Tunnel",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:marker -50 11 -65 {CustomName:"Ore Depot",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
function altars:setup

# Tworzenie buffow, setup

# Tworzenie spawnow
summon minecraft:marker -59 16 -108 {Rotation:[-90.0f,0.0f],CustomName:"Purple",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon minecraft:marker -7 16 -56 {Rotation:[180.0f,0.0f],CustomName:"Yellow",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Usuwanie blokady

