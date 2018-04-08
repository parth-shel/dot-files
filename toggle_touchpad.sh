#!/bin/bash

id=$(xinput | grep TouchPad | grep -E -o "id=[[:digit:]]+" | grep -E -o "[[:digit:]]+")

if [ "$id" = "" ]
then
    echo "no touchpad found."
    exit 1
fi

status=$(xinput list-props ${id} | grep "Device Enabled" | cut -f3)

if [ $status -eq 0 ]
then
    xinput set-prop $id "Device Enabled" 1
    echo "enabling device $id"
else
    xinput set-prop $id "Device Enabled" 0
    echo "disabling device $id"
fi

exit 0
