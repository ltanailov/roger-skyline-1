#!/bin/bash

# Добавить roger в /etc/sudoers
echo "Adding roger to sudoers..."
if ! grep -q "roger   ALL=(ALL:ALL) ALL" /etc/sudoers;
    then
        printf '%s\n' /ALL/a 'roger   ALL=(ALL:ALL) ALL' . w q | ex -s /etc/sudoers
        echo 'roger added to sudoers'
    else
        echo 'roger is already sudoer!'
fi

# Добавить roger в группы adm и sudo
usermod -a -G adm,sudo roger
