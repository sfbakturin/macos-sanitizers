#!/usr/bin/env bash

set -euo pipefail

./leak.exe || echo "Failed. That's good."
./leak++.exe || echo "Failed. That's good."

./address.exe || echo "Failed. That's good."
./address++.exe || echo "Failed. That's good."

./undefined.exe || echo "Failed. That's good."
./undefined++.exe || echo "Failed. That's good."

./thread.exe || echo "Failed. That's good."
./thread++.exe || echo "Failed. That's good."

./good.exe
./good++.exe
