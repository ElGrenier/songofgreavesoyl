# Tworzenie oltarzy, setup
function altars:setup

# Tworzenie buffow, setup


# Tworzenie spawnow
summon marker -207 22 -79 {Rotation:[90.0f,0.0f],CustomName:"Purple",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon marker -273 22 -79 {Rotation:[-90.0f,0.0f],CustomName:"Yellow",Invulnerable:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Tworzenie flag
summon minecraft:marker -199 12.5 -79 {Invulnerable:1b,NoGravity:1b,Tags:["immune","purpleflagspawn"]}
summon minecraft:marker -281 12.5 -79 {Invulnerable:1b,NoGravity:1b,Tags:["immune","yellowflagspawn"]}
