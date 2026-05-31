#!/bin/bash

# Перенаправление стандартного вывода
echo "Перенаправляю вывод" > output.log

# Перенаправление стандартного вывода ошибок
echo "Перенаправляю вывод ошибок" > error.log

# Одновременное перенаправление
echo "Перенаправляем всё" &> everything.log

# Перенаправление стандартного ввода
echo "Please enter your name:"
read my_name
echo "Your name is: $my_name"

# -p - комментарий без отдельного echo
read -p "Etner your age:" my_age
echo "Your age is: $my_age"
