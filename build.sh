#!/bin/bash

test -d ./build || mkdir build

cmake -S ./devilutionX-1.5.0 -B ./build \
  -DBUILD_TESTING=off \
  -DNONET=on -DDEBUG=on \
  -DHAS_KBCTRL=1 \
  -DKBCTRL_BUTTON_DPAD_LEFT=SDLK_h \
  -DKBCTRL_BUTTON_DPAD_RIGHT=SDLK_l \
  -DKBCTRL_BUTTON_DPAD_UP=SDLK_k \
  -DKBCTRL_BUTTON_DPAD_DOWN=SDLK_j &&
time ccache cmake --build ./build -j $(getconf _NPROCESSORS_ONLN) &&
./build/devilutionx
