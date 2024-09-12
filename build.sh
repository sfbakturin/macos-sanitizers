#!/usr/bin/env bash

set -euo pipefail

clang -O1 -g -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${1}" -std=c99 leak.c -o leak.exe
clang++ -O1 -g -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${1}" -std=c++20 -stdlib=libc++ leak.cpp -o leak++.exe
