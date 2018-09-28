#!/bin/bash

sink=`default-sink-name`
pactl set-sink-mute ${sink} $1
