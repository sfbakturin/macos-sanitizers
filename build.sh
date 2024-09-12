#!/usr/bin/env bash

set -euo pipefail

clang -O1 -g -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${1}" leak.c -o leak.exe
clang++ -O1 -g -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${1}" leak.cpp -o leak++.exe
