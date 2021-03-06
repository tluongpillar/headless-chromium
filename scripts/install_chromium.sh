#!/bin/bash

git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git 
export PATH="$PATH:/depot_tools"
mkdir ~/chromium 
cd ~/chromium

fetch --nohooks --no-history chromium

cd src
./build/install-build-deps.sh --no-syms --no-prompt 

gclient runhooks

gn gen --enable_nacl=false --symbol_level=1 --remove_webcore_debug_symbols=true out/Default

ninja -C out/Default chrome
