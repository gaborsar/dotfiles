#!/bin/bash

sink=`default-sink-name`
pactl set-sink-volume ${sink} $1
