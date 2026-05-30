#!/bin/bash

# if [ ! -d test_folder ]
# then
#     mkdir test_folder
# fi

# cd test_folder

# for name in {1..10}
# do
#     touch "file-$name.txt"
#     echo $name > file-$name.txt
# done

if [ ! -d logfiles ]
then
    mkdir logfiles
fi

cp /var/log/*.log ./logfiles