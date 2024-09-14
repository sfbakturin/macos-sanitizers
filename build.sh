#!/usr/bin/env bash

set -euo pipefail

SANITIZE="${1}"

# Show versions.
${CC} --version
${CXX} --version

if [ "${SANITIZE}" == "address" ]; then
    ${CC} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -fno-omit-frame-pointer -fno-optimize-sibling-calls -std=c99 leak.c -o leak.exe
    ${CC} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -fno-omit-frame-pointer -fno-optimize-sibling-calls -std=c99 address.c -o address.exe
    ${CC} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -fno-omit-frame-pointer -fno-optimize-sibling-calls -std=c99 undefined.c -o undefined.exe
    ${CC} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -fno-omit-frame-pointer -fno-optimize-sibling-calls -std=c99 thread.c -o thread.exe
    ${CC} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -fno-omit-frame-pointer -fno-optimize-sibling-calls -std=c99 good.c -o good.exe
else
    ${CC} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -std=c99 leak.c -o leak.exe
    ${CC} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -std=c99 address.c -o address.exe
    ${CC} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -std=c99 undefined.c -o undefined.exe
    ${CC} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -std=c99 thread.c -o thread.exe
    ${CC} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -std=c99 good.c -o good.exe
fi

if [ "${SANITIZE}" == "address" ]; then
    ${CXX} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -fno-omit-frame-pointer -fno-optimize-sibling-calls -std=c++20 leak.cpp -o leak++.exe
    ${CXX} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -fno-omit-frame-pointer -fno-optimize-sibling-calls -std=c++20 address.cpp -o address++.exe
    ${CXX} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -fno-omit-frame-pointer -fno-optimize-sibling-calls -std=c++20 undefined.cpp -o undefined++.exe
    ${CXX} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -fno-omit-frame-pointer -fno-optimize-sibling-calls -std=c++20 thread.cpp -o thread++.exe
    ${CXX} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -fno-omit-frame-pointer -fno-optimize-sibling-calls -std=c++20 good.cpp -o good++.exe
else
    ${CXX} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -std=c++20 leak.cpp -o leak++.exe
    ${CXX} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -std=c++20 address.cpp -o address++.exe
    ${CXX} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -std=c++20 undefined.cpp -o undefined++.exe
    ${CXX} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -std=c++20 thread.cpp -o thread++.exe
    ${CXX} -O1 -g -Wall -Wextra -Wpedantic -fno-sanitize-recover=all -fsanitize-trap=all -fsanitize="${SANITIZE}" -std=c++20 good.cpp -o good++.exe
fi
