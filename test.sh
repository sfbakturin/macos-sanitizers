#!/usr/bin/env bash

set -euo pipefail

./leak.exe || echo "Failed. That's good."
./leak++.exe || echo "Failed. That's good."
