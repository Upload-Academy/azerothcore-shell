#!/bin/bash

# Pull and "install" the modules we want to compile in
rm -rf ../modules/mod-autobalance; git clone --depth 1 https://github.com/azerothcore/mod-autobalance ../modules/mod-autobalance
rm -rf ../modules/mod-learn-spells; git clone --depth 1 https://github.com/azerothcore/mod-learn-spells ../modules/mod-learn-spells
rm -rf ../modules/mod-wos; git clone --depth 1 https://github.com/mrcrilly/mod-wos ../modules/mod-wos
rm -rf ../modules/mod-solo-lfg; git clone --depth 1 https://github.com/milestorme/mod-solo-lfg ../modules/mod-solo-lfg

# Disabling until automated account creation is easier
# rm -rf ../modules/mod-ah-bot; git clone --depth 1 https://github.com/azerothcore/mod-ah-bot ../modules/mod-ah-bot

# Apply the solo-lfg patch to our core's code
cd ..
git apply modules/mod-solo-lfg/lfg-solo.patch
cd build
