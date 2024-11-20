cmake_minimum_required(VERSION 3.20)

option(CLIENT_DLL "Build as client dll" OFF)

add_subdirectory(cmake)

# let find_package find the modules
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

find_package(Scanning REQUIRED)
find_package(Detouring REQUIRED)
find_package(SourceSDK REQUIRED)

add_subdirectory(lua_shared)
add_subdirectory(helpers)
add_subdirectory(helpers_extended)

add_library(garrysmod_common INTERFACE EXCLUDE_FROM_ALL)
add_library(gmod::common ALIAS garrysmod_common)

target_compile_definitions(garrysmod_common INTERFACE
    GMMODULE
    IS_SERVERSIDE=$<NOT:$<BOOL:${CLIENT_DLL}>>
    GMOD_ALLOW_OLD_TYPES
    GMOD_ALLOW_LIGHTUSERDATA
)

target_include_directories(garrysmod_common SYSTEM INTERFACE include)
