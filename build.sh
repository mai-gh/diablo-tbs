#!/bin/bash

test -d ./build || mkdir build

cfg_args=(
  -S ./devilutionX-1.5.0
  -B ./build
  -DBUILD_TESTING=off
#  -DNONET=on
#  -DUNPACKED_SAVES=on
  -DDEBUG=on
  -DHAS_KBCTRL=1
  -DKBCTRL_BUTTON_DPAD_LEFT=SDLK_h
  -DKBCTRL_BUTTON_DPAD_RIGHT=SDLK_l
  -DKBCTRL_BUTTON_DPAD_UP=SDLK_k
  -DKBCTRL_BUTTON_DPAD_DOWN=SDLK_j
)

build_args=(
  --build ./build
  -j $(getconf _NPROCESSORS_ONLN)
)

cmake "${cfg_args[@]}" &&
time ccache cmake "${build_args[@]}" &&
./build/devilutionx
