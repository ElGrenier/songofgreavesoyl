# Tworzenie oltarzy, setup
function altars:setup

# Tworzenie buffow, setup


# Tworzenie spawnow
summon minecraft:marker 399 18 -164 {Rotation:[90.0f,0.0f],CustomName:"Purple",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon minecraft:marker 377 18 -262 {Rotation:[-90.0f,0.0f],CustomName:"Yellow",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Tworzenie flag
summon minecraft:marker 376 12.5 -139 {Invulnerable:1b,NoGravity:1b,Tags:["immune","purpleflagspawn"]}
summon minecraft:marker 400 12.5 -287 {Invulnerable:1b,NoGravity:1b,Tags:["immune","yellowflagspawn"]}