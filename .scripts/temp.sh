#!/bin/sh

#sensors | grep "Tdie" | tr -d '+' | awk '{print $2}'
sensors | grep "Package id 0:" | tr -d '+' | awk '{print $4}'

