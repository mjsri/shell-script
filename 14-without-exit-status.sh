#!/bin/bash

set -e

ls -ltr

touch example.txt

echo "Before wrong Command"

lsfff

echo "After Wrong Command"

cd /tmp

cd /home/centos