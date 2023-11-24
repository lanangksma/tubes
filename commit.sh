#!/bin/bash

echo "Yakin udah beres? (yes/no)"
read input

while [[ $input != "yes" ]] && [[ $input != "no" ]] && [[ $input != "n/N/No/no/NO" ]]; do
    echo "Invalid input. Please enter 'yes' or 'no':"
    read input
done

if [[ $input == "yes" ]]; then
    echo "Terimakasih buat kerja kerasnya !!!"
    echo "-----------------------------------"
    git add .
    echo "Kamu selesai mengerjakan fitur apa?"
    read feat
    echo "Tolong kasih ID/Nomor"
    read id

    current_time=$(date "+%Y-%m-%d %H:%M:%S")

    git commit -m "feat: #$id , $feat [RUN TIME: $current_time]"
    git push

elif [[ $input == "no" ]] || [[ $input == "n/N/No/no/NO" ]]; then
    echo "SEMANGATTT !!!"
    exit 0
fi
