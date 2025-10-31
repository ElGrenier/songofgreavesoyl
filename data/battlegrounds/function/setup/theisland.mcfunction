
# Altar

summon minecraft:armor_stand 367 11 209 {CustomName:"Shore - Purple Side",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:armor_stand 326 11 195 {CustomName:"Shipwreck Shore",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:armor_stand 312 11 153 {CustomName:"Shore - Yellow Side",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}

summon minecraft:armor_stand 395 11 186 {CustomName:"Valley - Purple Side",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:armor_stand 363 11 158 {CustomName:"Valley of Ruin",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:armor_stand 335 11 126 {CustomName:"Valley - Yellow Side",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}

summon minecraft:armor_stand 411 11 159 {CustomName:"Ruined City - Purple Side",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:armor_stand 412 11 109 {CustomName:"Grave of Sanac",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}
summon minecraft:armor_stand 362 11 110 {CustomName:"Ruined City - Yellow Side",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","Altars"]}

function altars:setup

# Spawns

summon minecraft:armor_stand 422 18 213 {Rotation:[135.0f,0.0f],CustomName:"Purple",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","SpawnPurple"]}
summon minecraft:armor_stand 308 18 99 {Rotation:[-45.0f,0.0f],CustomName:"Yellow",Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Tags:["immune","SpawnYellow"]}

# Usuwanie blokady
setblock 367 31 209 minecraft:air
setblock 326 31 195 minecraft:air
setblock 312 31 153 minecraft:air

setblock 395 31 186 minecraft:air
setblock 363 31 158 minecraft:air
setblock 335 31 126 minecraft:air

setblock 411 31 159 minecraft:air
setblock 412 31 109 minecraft:air
setblock 362 31 110 minecraft:air