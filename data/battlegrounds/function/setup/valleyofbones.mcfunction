# Tworzenie oltarzy, setup
summon minecraft:marker 277 14 -14 {CustomName:"Lone Lane Cavern",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:marker 277 16 19 {CustomName:"Sorog's Hill",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:marker 277 11 51 {CustomName:"Forest of Bones",Invulnerable:1b,NoGravity:1b,Tags:["immune","Altars"]}
function altars:setup


# Tworzenie spawnow
summon minecraft:marker 315 16 19 {Rotation:[90.0f,0.0f],CustomName:"Purple",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon minecraft:marker 239 16 19 {Rotation:[-90.0f,0.0f],CustomName:"Yellow",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Usuwanie blokady
setblock 277 38 -14 minecraft:air
setblock 277 38 19 minecraft:air
setblock 277 38 51 minecraft:air
