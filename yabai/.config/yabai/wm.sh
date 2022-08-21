#!/bin/bash

if [[ $1 = 'md' ]]; then
    padding=400
elif [[ $1 = 'lg' ]]; then
    padding=700
elif [[ $1 = 'sm' ]]; then
    padding=50
elif [[ $1 = 'none' ]]; then
    padding=0
fi

sed -i -e "/yabai -m config left_padding/ s/yabai -m config left_padding .*/yabai -m config left_padding                 $padding/" ./yabairc
sed -i -e "/yabai -m config right_padding/ s/yabai -m config right_padding .*/yabai -m config right_padding                $padding/" ./yabairc

brew services restart yabai
