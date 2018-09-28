#!/bin/bash

prefix="Default sink name: "

info=`pacmd info | grep "${prefix}"`
name=${info:${#prefix}}

echo $name
