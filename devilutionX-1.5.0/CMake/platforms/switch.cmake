list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/switch")

set(ASAN OFF)
set(UBSAN OFF)
set(BUILD_TESTING OFF)
set(BUILD_ASSETS_MPQ OFF)

set(DEVILUTIONX_SYSTEM_SDL_IMAGE OFF)
set(DEVILUTIONX_SYSTEM_LIBSODIUM OFF)
set(DISABLE_ZERO_TIER ON)
set(PREFILL_PLAYER_NAME ON)
set(NOEXIT ON)

set(JOY_BUTTON_DPAD_LEFT 16)
set(JOY_BUTTON_DPAD_UP 17)
set(JOY_BUTTON_DPAD_RIGHT 18)
set(JOY_BUTTON_DPAD_DOWN 19)

list(APPEND DEVILUTIONX_PLATFORM_SUBDIRECTORIES platform/switch)
list(APPEND DEVILUTIONX_PLATFORM_LINK_LIBRARIES libdevilutionx_switch)