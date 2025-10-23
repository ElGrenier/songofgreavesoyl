# Tworzenie zmiennych
scoreboard objectives add HPercentage dummy
scoreboard objectives add HP health
scoreboard objectives add MaxHP dummy
scoreboard objectives add HUNDRED dummy

# Setup stalej symbolicznej
scoreboard players set @s HUNDRED 100

# Obliczanie HPercentage
scoreboard players operation @s HPercentage = @s HP
scoreboard players operation @s HPercentage *= @s HUNDRED
scoreboard players operation @s HPercentage /= @s MaxHP

