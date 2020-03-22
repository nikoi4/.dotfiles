#!/bin/bash

pmset -g batt | grep % | awk 'NR==1{print$3}' | cut -d\; -f1
