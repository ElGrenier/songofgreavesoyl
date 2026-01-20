# Tworzenie oltarzy, setup
function altars:setup

# Tworzenie buffow, setup


# Tworzenie spawnow
summon minecraft:marker -107 22 -79 {Rotation:[90.0f,0.0f],CustomName:"Purple",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon minecraft:marker -173 22 -79 {Rotation:[-90.0f,0.0f],CustomName:"Yellow",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Tworzenie flag
summon minecraft:marker -99 12.5 -79 {Invulnerable:1b,NoGravity:1b,Tags:["immune","purpleflagspawn"]}
summon minecraft:marker -181 12.5 -79 {Invulnerable:1b,NoGravity:1b,Tags:["immune","yellowflagspawn"]}
