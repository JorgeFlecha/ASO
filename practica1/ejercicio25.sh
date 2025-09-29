#!/bin/bash
echo "Últimos accesos:"
last -i | egrep -o "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+"

