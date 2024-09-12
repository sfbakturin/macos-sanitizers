#!/usr/bin/env bash

set -euo pipefail

clang -O1 -g -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${1}" -std=c99 leak.c -o leak.exe
clang -O1 -g -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${1}" -std=c99 address.c -o address.exe
clang -O1 -g -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${1}" -std=c99 undefined.c -o undefined.exe
clang -O1 -g -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${1}" -std=c99 thread.c -o thread.exe
clang -O1 -g -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${1}" -std=c99 good.c -o good.exe

clang++ -O1 -g -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${1}" -std=c++20 -stdlib=libc++ leak.cpp -o leak++.exe
clang++ -O1 -g -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${1}" -std=c++20 -stdlib=libc++ address.cpp -o address++.exe
clang++ -O1 -g -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${1}" -std=c++20 -stdlib=libc++ undefined.cpp -o undefined++.exe
clang++ -O1 -g -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${1}" -std=c++20 -stdlib=libc++ thread.cpp -o thread++.exe
clang++ -O1 -g -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${1}" -std=c++20 -stdlib=libc++ good.cpp -o good++.exe
